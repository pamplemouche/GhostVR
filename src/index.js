/**
 * GhostVR backend — interception layer for the repatched Oculus Gear VR app.
 *
 * Every server URL in the APK now points at https://ghostvr.pamplemouche.com.
 * The three base endpoints baked into the smali are:
 *
 *   FacebookApiEndpoint    -> /fb-api/
 *   FacebookGraphEndpoint  -> /fb-graph/
 *   OculusApiEndpoint      -> /oculus/
 *
 * Retrofit appends each interface path to its base, so routes are matched by
 * suffix (`/oculus/graphql`, `/fb-api/method/auth.login`, ...).
 */
// The Gear VR back catalogue, built from vault.gearvr.net by
// `tools/build_store_payload.py`. The store asks the backend for it through
// GraphQL (`node(<category>) { all_items... }`) and for the install URI through
// `app_binary_update`; both are answered from this table.
import { STORE } from './store_data.js';


// The only asset the client asks for before an account exists. Everything else
// about the viewer comes from the Pamplemouche backend, so there is no local
// account to fall back on: `USER_ID`/`ACCESS_TOKEN` used to stand in for one,
// which let a wrong password through and made the login screen decorative.
const AVATAR_URI = 'https://ghostvr.pamplemouche.com/assets/avatar.png';
const DEVICE_SECRET = 'ghostvr_device_secret';

// The real accounts live on the Pamplemouche backend, which authenticates a
// pseudo and a password (`POST /api/login {username, password}`). The Oculus
// client only knows "email + password", so the pseudo is submitted in the email
// field and forwarded here. The resulting identity is carried in a signed
// session cookie so it survives across isolates; see the session block below.
const ARC_BASE = 'https://arc.pamplemouche.com';

// The store's own size for an APK binary. The vault serves ~100 MB per title;
// this is the `size` the install progress bar counts against. It is deliberately
// generous: understating it makes the bar hit 100% before the download ends.
const STORE_BINARY_SIZE = 200 * 1024 * 1024;

// The download origin handed out for an install. The vault is the source today
// because the binaries cannot live in git (562 x ~100 MB); a self-hosted mirror
// is a config change: set `apk_base` in `src/store_data.js` and it wins.
const APK_ORIGIN = 'https://vault.gearvr.net/APK';

// The `signed_token` handed out on every entitlement. `LibraryCacheRefresher`
// only checks that it is non-null (a null makes it drop the entitlement and log
// a soft error); nothing decodes it locally, so it only has to be a stable,
// non-empty opaque string.
const ENTITLEMENT_TOKEN = 'ghostvr-entitlement';

/**
 * The signed-in session lives in a signed cookie, not in module state.
 * A Worker module is not a process: each request may be served by any isolate,
 * isolates are evicted on a whim, and there are many of them at once. A login
 * that set a module-level `currentUser` therefore only took effect on the one
 * isolate that happened to serve it - every later request landed elsewhere,
 * saw "signed out", and sent the client back to the login screen. That is the
 * resync loop, and no amount of response shaping fixes it.
 *
 * The cookie is HMAC-signed so the client cannot mint a session by editing it,
 * and it carries the identity plus the small amount of per-account state the
 * payloads need (the PIN flag, the token).
 */
const SESSION_COOKIE = 'ghostvr_session';
const SESSION_TTL_SECONDS = 30 * 24 * 60 * 60;

// `env.SESSION_SECRET` should be set in wrangler.toml. The fallback keeps a
// self-hosted deployment working out of the box, at the cost of a forgeable
// cookie - acceptable here because the session only unlocks a local shop, but
// it is the first thing to configure.
let sessionSecret = 'ghostvr-local-session-key';

const EMPTY_IDENTITY = { id: '', alias: '', name: '', email: '' };

const b64url = (bytes) =>
  btoa(String.fromCharCode(...bytes)).replace(/=+$/, '').replace(/\+/g, '-').replace(/\//g, '_');
const unb64url = (text) =>
  Uint8Array.from(atob(text.replace(/-/g, '+').replace(/_/g, '/')), (c) => c.charCodeAt(0));

async function signSession(payload) {
  const key = await crypto.subtle.importKey(
    'raw',
    new TextEncoder().encode(sessionSecret),
    { name: 'HMAC', hash: 'SHA-256' },
    false,
    ['sign'],
  );
  const sig = await crypto.subtle.sign('HMAC', key, new TextEncoder().encode(payload));
  return b64url(new Uint8Array(sig));
}

function cookieValue(request, name) {
  const header = request.headers.get('Cookie') || '';
  for (const part of header.split(';')) {
    const eq = part.indexOf('=');
    if (eq < 0) continue;
    if (part.slice(0, eq).trim() === name) return part.slice(eq + 1).trim();
  }
  return null;
}

/** Decode the session cookie. It carries the signed token, nothing else. */
async function sessionFromRequest(request) {
  const raw = cookieValue(request, SESSION_COOKIE);
  if (!raw) return null;
  try {
    return await sessionFromToken(decodeURIComponent(raw));
  } catch (error) {
    return null;
  }
}

/**
 * The browser carrier is just the token in a cookie, so the two carriers always
 * resolve to the same session and the cookie cannot grow past the size limit as
 * per-account data is added to the payload.
 */
async function sessionCookie(session, maxAge = SESSION_TTL_SECONDS) {
  if (maxAge <= 0) {
    return `${SESSION_COOKIE}=; Path=/; HttpOnly; SameSite=Lax; Max-Age=0`;
  }
  return `${SESSION_COOKIE}=${encodeURIComponent(session.token)}; Path=/; HttpOnly; SameSite=Lax; Max-Age=${maxAge}`;
}

/**
 * The token the client stores and echoes back.
 *
 * The app never reads cookies: `OculusAuthorizationInterceptor.getAuthorization()`
 * pulls the access token out of its own credential store and
 * `Authorization.generate()` sends it as `Bearer <token>`. The client also never
 * parses the token - `AccessTokenUtils` only *builds* the logged-out form
 * `OC|appId|loginToken` - so the value is opaque to it and can carry the session
 * itself. Signing it means the worker can rebuild the session from the header
 * alone, which is what survives an isolate switch and an app restart.
 *
 * A token we did not sign (including the client's own logged-out token) simply
 * does not verify, so it reads as anonymous.
 */
const TOKEN_PREFIX = 'OC';

async function mintToken(payload) {
  const body = b64url(new TextEncoder().encode(JSON.stringify(payload)));
  return `${TOKEN_PREFIX}|${body}|${await signSession(body)}`;
}

async function sessionFromToken(header) {
  if (!header) return null;
  const value = header.replace(/^Bearer\s+/i, '').trim();
  const first = value.indexOf('|');
  const last = value.lastIndexOf('|');
  if (first < 0 || last <= first) return null;
  if (value.slice(0, first) !== TOKEN_PREFIX) return null;
  const body = value.slice(first + 1, last);
  if ((await signSession(body)) !== value.slice(last + 1)) return null;
  try {
    const data = JSON.parse(new TextDecoder().decode(unb64url(body)));
    if (!data || !data.id) return null;
    if (data.exp && Date.now() > data.exp) return null;
    return { ...data, token: value };
  } catch (error) {
    return null;
  }
}

/** The fields the token carries: the identity and nothing bulky. */
function tokenPayload(session) {
  return {
    id: session.id,
    username: session.username,
    email: session.email,
    pin: Boolean(session.pin),
    exp: session.exp,
  };
}

/** Re-issue a session after a change (e.g. the PIN flag), token included. */
async function refreshSession(session, changes = {}) {
  const merged = { ...session, ...changes };
  return { ...merged, token: await mintToken(tokenPayload(merged)) };
}

/** Build the session a successful login persists. */
async function newSession(user, identifier) {
  const base = {
    id: user.id,
    username: user.username,
    email: user.email || identifier,
    pin: false,
    exp: Date.now() + SESSION_TTL_SECONDS * 1000,
  };
  return {
    ...base,
    token: await mintToken(base),
    loadout: user.loadout,
    coins: user.coins,
    pamp: user.pamp,
    purchases: user.purchases,
    isAdmin: user.isAdmin,
  };
}

function identity(session) {
  if (!session) return { ...EMPTY_IDENTITY };
  return {
    id: session.id,
    alias: session.username,
    name: session.username,
    email: session.email || `${session.username}@pamplemouche.com`,
  };
}

function isSignedIn(session) {
  return Boolean(session && session.id);
}

function pinSet(session) {
  return Boolean(session && session.pin);
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function json(body, status = 200, extraHeaders = {}) {
  return new Response(JSON.stringify(body), {
    status,
    headers: {
      'Content-Type': 'application/json; charset=utf-8',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
      'Access-Control-Allow-Headers': '*',
      'Cache-Control': 'no-store',
      ...extraHeaders,
    },
  });
}

/** Merge URL query params with body params (form-encoded or JSON). */
async function readParams(request, url) {
  const params = new URLSearchParams(url.search);
  if (['POST', 'PUT', 'PATCH'].includes(request.method)) {
    const contentType = (request.headers.get('content-type') || '').toLowerCase();
    try {
      const text = await request.text();
      if (text) {
        if (contentType.includes('application/json')) {
          const parsed = JSON.parse(text);
          for (const [key, value] of Object.entries(parsed)) {
            if (value !== null && value !== undefined) {
              params.set(key, typeof value === 'string' ? value : JSON.stringify(value));
            }
          }
        } else {
          for (const [key, value] of new URLSearchParams(text)) params.set(key, value);
        }
      }
    } catch (error) {
      // Malformed body: keep whatever the query string already provided.
    }
  }
  return params;
}

function firstParam(params, ...names) {
  for (const name of names) {
    for (const key of [name, `${name}[]`]) {
      const value = params.get(key);
      if (value !== null) return value;
    }
  }
  return null;
}

/**
 * The JSON object holding a document's argument values, whatever the client
 * called it. The VR app sends `query_params` (`ApiDispatcher`), while OCMS
 * sends `variables` (`LibraryMethods` / `AssetsMethods` / `LibrarySyncMethods`
 * declare a Retrofit `@Query("variables")`). Both are the same thing - the
 * serialized argument map - so the placeholder expanders read whichever is
 * present. Reading only `query_params` left every OCMS argument invisible.
 */
function paramsJson(params) {
  return firstParam(params, 'query_params', 'variables') || '';
}

/**
 * Every parameter name that can carry a GraphQL document. OCMS uses `doc` and
 * the VR app uses `q`; `doc_id` is a persisted-query hash.
 */
const DOC_PARAMS = ['q', 'query', 'doc', 'doc_id'];

/**
 * Retrofit serializes List parameters repeated (`projects[]=a&projects[]=b`).
 * Depending on the client version it may also join them with commas, so both
 * forms are split apart here.
 */
function allParams(params, ...names) {
  const values = [];
  for (const name of names) {
    for (const key of [name, `${name}[]`]) {
      for (const value of params.getAll(key)) {
        values.push(...value.split(',').filter(Boolean));
      }
    }
  }
  return values;
}

// ---------------------------------------------------------------------------
// Static payloads
// ---------------------------------------------------------------------------

function profilePhoto(name) {
  return { name, uri: AVATAR_URI, width: '360', height: '360' };
}

// Set by a successful /change_pin so the viewer stops reporting an unset PIN.
// Without this the client persists the flag locally, MeManager.refresh()
// overwrites it from this response, and the PIN roadblock re-appears forever.
// It lives in the session cookie rather than module state: a module-level flag
// is per-isolate and would be lost between the change_pin call and the refresh.

/**
 * Canonical shape of the signed-in user.
 *
 * `SocialUtils`/`ProfileHeaderViewHolder` read `name`, `profile_photo.uri`,
 * `avatar_image.uri`, `online_platforms`, `friend_status` and `presence_status`
 * straight off this object, so all of them are always present. `current_room`
 * is concrete because `isUserInRoom()` dereferences `current_room.nodes`
 * without a guard; `current_party` stays null because every consumer
 * (`PlatformPluginManager$5`, `PartyCallManagerImpl$6`) null-guards it and a
 * non-null empty party would read as "in a party with no members".
 */
function viewerUser(session) {
  const who = identity(session);
  return {
    id: who.id,
    alias: who.alias,
    name: who.name,
    email: who.email,
    presence: 'ONLINE',
    presence_status: 'ONLINE',
    friend_status: 'NONE',
    is_facebook_friend: false,
    is_pin_set: pinSet(session),
    device_secret: DEVICE_SECRET,
    profile_photo: profilePhoto('photo'),
    avatar: profilePhoto('avatar'),
    avatar_image: profilePhoto('avatar'),
    current_room: { nodes: [] },
    current_party: null,
    presence_status_updated_at: 0,
    online_platforms: [],
    friend_requests_received_2: connection([]),
    friends: connection([]),
    blocked_users: connection([]),
    notifications: connection([]),
    // `getMutualFriends()` null-guards this, but the getProfile query asks for
    // `mutual_friends { count }` and the model deserializes into a concrete
    // `MutualFriends`, so an absent key leaves it null rather than absent.
    mutual_friends: { count: 0 },
    // The profile screen's photo picker asks for
    // `premade_profile_photos(first:5)` (see `HorizonBundle.js.hbc`). It is a
    // connection on the viewer; leaving the key out makes the field undefined in
    // the Relay store, and the picker reads `.nodes` off it. An empty connection
    // renders an empty grid instead of throwing.
    premade_profile_photos: connection([]),
    friends_count: 0,
    all_payment_methods: connection([]),
    payment_methods: connection([]),
    // `me() { payment_account { stored_credit { ... } } }` reads balance and
    // subcredits off a concrete object, so a null here is a null deref.
    payment_account: paymentAccount(),
    stored_credits: [],
    all_device_manifests: connection([]),
    client_preference_data: [],
    eligible_promotions: connection([]),
    cloud_files: connection([]),
    subscribed_events: connection([]),
    dev_notif_opt_out_preferences_list: [],
    notification_opt_out_preferences_list: [],
  };
}

/**
 * The linked Facebook account mirrors the signed-in user, so it has to be
 * built per request rather than frozen at module load.
 */
function linkedAccounts(session) {
  const who = identity(session);
  return {
    facebook_account: {
      access_token: 'GHOSTVR_FB_LINKED_TOKEN',
      facebook_id: who.id,
      friend_policy: 'EVERYONE',
      needs_password_to_unlink: false,
    },
  };
}

/**
 * Privacy edges for one concept.
 *
 * `MeManager.updateWithSelected()` parses `identity_in_search_state` through
 * `SocialUtils.identityInSearchPrivacyState()`, which only knows the enum's
 * three `graphQLName`s (ENABLED / DISABLED / IRRELEVANT); anything else throws
 * and is swallowed, leaving the identity null. It then looks for an edge with
 * `is_currently_selected`, falls back to the `is_default_option` edge, and only
 * then builds a `CurrentPrivacyState`.
 *
 * With no edges at all neither lookup succeeds, yet the entry is still inserted
 * into `mPrivacyMap` with a null `state`. `haveAllPrivacyStates()` then reports
 * true (the map has one entry per concept), every null-guard on the returned
 * `CurrentPrivacyState` passes, and the first `state.usesIncludedFriends` read
 * throws - the Privacy Settings screen and the profile header both die there.
 *
 * So each concept needs one edge that is both selected and the default.
 */
function privacyEdges(identityInSearchState) {
  return {
    edges: [
      {
        is_currently_selected: true,
        is_default_option: true,
        node: {
          base_state: 'ANYONE',
          included_users: { count: 0, nodes: [] },
        },
      },
    ],
    identity_in_search_state: identityInSearchState,
  };
}

// `PrivacyConcept.PROFILE` is the only concept with `usesIdentityInSearch`, so
// it is the only one whose identity-in-search state is meaningful; the other
// two report IRRELEVANT.
const PRIVACY_EDGES = privacyEdges('IRRELEVANT');
const PRIVACY_EDGES_PROFILE = privacyEdges('ENABLED');

/**
 * Relay connection envelope. The generated response models hold these fields
 * as concrete `ArrayList`s and iterate them directly, so an absent key is an
 * NPE rather than an empty list.
 */
function connection(nodes, extra = {}) {
  return {
    nodes,
    edges: [],
    count: nodes.length,
    page_info: { has_next_page: false, has_previous_page: false, end_cursor: null, start_cursor: null },
    ...extra,
  };
}

/** Full viewer object: the shape getMyUserProfile / getViewer expect. */
function viewerWithProfile(session) {
  return {
    ...viewerUser(session),
    linked_accounts_info: linkedAccounts(session),
    privacy_audience_options: PRIVACY_EDGES_PROFILE,
    privacy_current_activity: PRIVACY_EDGES,
    privacy_friends: PRIVACY_EDGES,
    privacy_real_world_identity: PRIVACY_EDGES_PROFILE,
    // The home screen is FeedFragment and calls Feed.fromResponse(), which
    // dereferences viewer.feed.nodes with no null checks. A viewer without
    // `feed` crashes the main screen the moment it opens.
    feed: connection([]),
    saved: connection([]),
    payment_account: paymentAccount(),
    is_oculus_developer_blocked: false,
    is_oculus_developer: false,
    device_secret: DEVICE_SECRET,
    default_digital_payment_method: null,
    all_device_manifests: connection([], { device_wipe_status: 'NONE' }),
    user: {
      ...viewerUser(session),
      notifications: connection([], { unseen_count: 0 }),
      notification_opt_out_preferences_list: [],
      dev_notif_opt_out_preferences_list: [],
      is_oculus_developer_blocked: false,
      is_oculus_developer: false,
    },
  };
}

/**
 * `me()` and `viewer()` share the generated commerce models, which declare
 * `payment_account` and the nested connections as concrete types. Both order
 * queries (digital_orders and stored_credit) read them without a guard.
 */
function paymentAccount() {
  return {
    digital_orders: connection([]),
    stored_credit: {
      id: 'ghostvr_stored_credit',
      balance: { amount_in_hundredths: 0, currency: 'USD', formatted_amount: '$0.00' },
      subcredits: { nodes: [] },
    },
  };
}


function loginResponse(session) {
  const who = identity(session);
  return {
    access_token: session ? session.token : null,
    uid: who.id,
    id: who.id,
    user_id: who.id,
    session_id: 'ghostvr-session-active',
    // FBLoginResponse deserializes these into non-null String fields; the
    // native session builder reads session_key/secret/machine_id downstream, so
    // they must be present rather than absent.
    session_key: 'ghostvr-session-key',
    secret: 'ghostvr-secret',
    machine_id: 'ghostvr-machine',
    identifier: who.email,
    error_code: null,
    error_msg: null,
    error_data: null,
    expires_in: 315360000,
    token_type: 'bearer',
    user: viewerUser(session),
    viewer: viewerWithProfile(session),
  };
}

// ---------------------------------------------------------------------------
// GraphQL
// ---------------------------------------------------------------------------

/**
 * Superset payload for every `/graphql` response class in the decompiled tree.
 *
 * ApiResponseConverter maps the response body straight onto the generated
 * response class. For the classes annotated `@SingleEntryMapResponse` it first
 * unwraps the body's single top-level entry. A body of `{<root>: VALUE}` is the
 * one shape that satisfies both:
 *
 *   - plain class      -> VALUE is read off the class field named `<root>`
 *   - annotated class  -> the key is discarded, VALUE is read as the class
 *
 * The previous `{data: {...}}` envelope satisfied neither, so every feed page
 * rejected the response and fell into its error branch, which renders
 * `common_error_generic_title` ("Une erreur s'est produite.").
 */
const GRAPHQL_PAYLOAD = {"accepted_friend_requester":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"current_room":{"nodes":[]},"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notifications":{"nodes":[]},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""}},"active_android_entitlements":{"nodes":[]},"add_credit_card":{},"all_device_manifests":{"nodes":[]},"all_items":{},"all_payment_methods":{"nodes":[]},"alternative_items":[],"app_binary_info":{"info":[]},"app_binary_updates":{"updates":[]},"app_entitlements":[],"app_redeem_coupon":{},"app_store":{"sections":{"nodes":[]},"store_assets":{"edges":[]},"store_wide_offers":[],"style_theme":""},"avatar_image":{"height":"","name":"","uri":"","width":""},"billing_agreement_id":"","blocked_user":{"alias":"","id":""},"blocked_users":{"nodes":[]},"challenge_tos":"","client_preference_data":[],"cloud_file_wildcards":{"nodes":[]},"confirm_order":{},"cover_landscape_image":{"uri":""},"current_party":{"id":"","party_invited_users":{"nodes":[]},"party_users":{"nodes":[]}},"current_room":{"nodes":[]},"default_applications":[],"default_apps_nux_config":{},"default_digital_payment_method":{"__typename":"","balance":{"formatted_amount":""},"card_type":"","display_name":"","email":"","id":"","last4":"","paypal_context":""},"default_item":{"__typename":"","age_rating":{"category_name":"","descriptors":[]},"app_viewer_id":"","banner_target":{"__typename":"","assets":{"edges":[]},"content_type":"","display_long_description":"","display_post_description":"","display_post_title":"","display_short_description":"","display_terms":"","display_title":"","id":"","section_name":"","sort_options":[],"style_theme":""},"bundle_items":{"nodes":[]},"category":"","category_name":"","cinema_video":{"format":"","purchasable_items":[],"rating":""},"comfort_rating":"","comfort_rating_name":"","cover_landscape_image":{"name":"","uri":""},"cover_square_image":{"name":"","uri":""},"current_offer":{"id":"","price":{"formatted":""},"price_without_proration":{"amount_with_offset":""},"promo_benefit":"","strikethrough_price":{"formatted":""},"viewer":{"user":{"payment_account":{"stored_credit":{"balance":{"formatted_amount":""},"id":"","subcredits":{"nodes":[]}}}}}},"developer_filtered_livestreaming_status":"","developer_name":"","developer_privacy_policy_url":"","developer_terms_of_service_url":"","display_long_description":"","display_name":"","display_short_description":"","entitlement":{"item":{},"signed_token":""},"extra_buy_box_section":{"content":"","link_text":"","link_uri":""},"genre_names":[],"grouping":{"iap_items_2":{"nodes":[]},"id":""},"iarc_cert":{"iarc_rating":{"age_rating_image_large":{"uri":""},"age_rating_image_small":{"uri":""},"age_rating_text":"","descriptors":[],"interactive_elements":[],"rating_definition_uri":""}},"id":"","internet_connection":"","internet_connection_name":"","is_demo_of":{"id":""},"latest_supported_binary":{"external_signatures":[],"head_tracking":"UNKNOWN","id":"","obb_binary":{"id":"","uri":""},"package_name":"","permissions":[],"uri":"","user_quality_rating":null,"version":""},"metadata_for_user":{"poster_image":{"name":"","uri":""}},"microphone_usage":"","organization":{"name":""},"parent_application":{},"platform":"","publisher_name":"","purchasable_items":[],"quality_rating_histogram_aggregate":[],"quality_ratings_by_viewer":[],"screenshots":[],"share_capabilities":[],"small_landscape_image":{"name":"","uri":""},"store_wide_offers":[],"style_theme":"","supported_binaries":{"nodes":[]},"supported_in_app_languages":[],"supported_input_devices_list":[],"supported_player_modes":[],"thumbnail":{"name":"","uri":""},"user_interaction_mode_names":[],"user_reviews2":{"nodes":[],"page_info":{"end_cursor":""}},"video_trailer":{"name":"","type":"","uri":""},"website_url":""},"device_secret":"","display_name":"","eligible_promotions":{"nodes":[]},"email":"","entitle_user":{},"entitlement":{"item":{"__typename":"","age_rating":{"category_name":"","descriptors":[]},"app_viewer_id":"","banner_target":{"__typename":"","assets":{"edges":[]},"content_type":"","display_long_description":"","display_post_description":"","display_post_title":"","display_short_description":"","display_terms":"","display_title":"","id":"","section_name":"","sort_options":[],"style_theme":""},"bundle_items":{"nodes":[]},"category":"","category_name":"","cinema_video":{"format":"","purchasable_items":[],"rating":""},"comfort_rating":"","comfort_rating_name":"","cover_landscape_image":{"name":"","uri":""},"cover_square_image":{"name":"","uri":""},"current_offer":{"id":"","price":{"formatted":""},"price_without_proration":{"amount_with_offset":""},"promo_benefit":"","strikethrough_price":{"formatted":""},"viewer":{"user":{"payment_account":{"stored_credit":{"balance":{"formatted_amount":""},"id":"","subcredits":{"nodes":[]}}}}}},"developer_filtered_livestreaming_status":"","developer_name":"","developer_privacy_policy_url":"","developer_terms_of_service_url":"","display_long_description":"","display_name":"","display_short_description":"","entitlement":{},"extra_buy_box_section":{"content":"","link_text":"","link_uri":""},"genre_names":[],"grouping":{"iap_items_2":{"nodes":[]},"id":""},"iarc_cert":{"iarc_rating":{"age_rating_image_large":{"uri":""},"age_rating_image_small":{"uri":""},"age_rating_text":"","descriptors":[],"interactive_elements":[],"rating_definition_uri":""}},"id":"","internet_connection":"","internet_connection_name":"","is_demo_of":{"id":""},"latest_supported_binary":{"external_signatures":[],"head_tracking":"UNKNOWN","id":"","obb_binary":{"id":"","uri":""},"package_name":"","permissions":[],"uri":"","user_quality_rating":null,"version":""},"metadata_for_user":{"poster_image":{"name":"","uri":""}},"microphone_usage":"","organization":{"name":""},"parent_application":{},"platform":"","publisher_name":"","purchasable_items":[],"quality_rating_histogram_aggregate":[],"quality_ratings_by_viewer":[],"screenshots":[],"share_capabilities":[],"small_landscape_image":{"name":"","uri":""},"store_wide_offers":[],"style_theme":"","supported_binaries":{"nodes":[]},"supported_in_app_languages":[],"supported_input_devices_list":[],"supported_player_modes":[],"thumbnail":{"name":"","uri":""},"user_interaction_mode_names":[],"user_reviews2":{"nodes":[],"page_info":{"end_cursor":""}},"video_trailer":{"name":"","type":"","uri":""},"website_url":""},"signed_token":""},"entitlements":{"active_android_entitlements":{"nodes":[]}},"event":{"applications_for_viewer":[],"deeplink_message":"","description":"","id":"","joinability_for_viewer":"","landscape_image":{"uri":""},"subscribed_friends":{"nodes":[]},"temporal_info":{},"title":"","unjoinable_reason_string":""},"facebook_account":{"access_token":"","facebook_id":"","friend_policy":""},"featured_events":{"nodes":[]},"feed":{"nodes":[]},"filters":[],"friend_requests_received_2":{"edges":[]},"friends":{"nodes":[]},"grouping":{"achievement_definitions":{"nodes":[]}},"iap_entitlements":[],"id":"","individual_events":{"nodes":[]},"is_pin_set":false,"linked_accounts_info":{"facebook_account":{"access_token":"","facebook_id":"","friend_policy":"","needs_password_to_unlink":false},"facebook_friends_connected":{"nodes":[]}},"me":{"viewer":{"is_oculus_developer":false,"is_oculus_developer_blocked":false}},"mutation_upload_map":{"uuid":""},"node":{"cover_landscape_image":{"uri":""},"default_applications":[],"display_name":"GhostVR","grouping":{"achievement_definitions":{"count":0,"edges":[],"nodes":[]},"secret_achievement_count_earned_by_user_but_not_viewer":0,"unearned_secret_achievement_count":0}},"nodes":[],"notifications":{"nodes":[]},"order":{"app_store_item":{"current_offer":{"price":{"formatted":""},"price_without_proration":{"amount_with_offset":""},"viewer":{"user":{"payment_account":{"stored_credit":{"balance":{"formatted_amount":""},"id":"","subcredits":{"nodes":[]}}}}}}},"id":"","payment_method":{"__typename":"","balance":{"formatted_amount":""},"card_type":"","display_name":"","email":"","id":"","last4":"","paypal_context":""},"purchase":{"exemptions":{"formatted":"","offset_amount":""},"price":{"formatted":"","offset_amount":""},"purchase_time":"","tax":{"formatted":"","offset_amount":""},"terms_of_service":"","total":{"formatted":"","offset_amount":""},"usable_store_credit":{"formatted":"","offset_amount":""}}},"page_info":{"end_cursor":""},"party":{"id":"","party_users":{"nodes":[]}},"party_blocked_invited_users":{},"party_blocked_users":{},"party_invite_activity":{"application":{"id":"","package_name":""},"deeplink":"","id":"","image":{"uri":""},"subtitle":"","title":""},"party_invited_users":{},"party_users":{},"payment_account":{"digital_orders":{"nodes":[]},"stored_credit":{"balance":{"formatted_amount":""},"id":"","subcredits":{"nodes":[]}}},"payment_method":{"card_type":"","id":"","last4":""},"payment_methods":{"nodes":[]},"paypal_token":"","presence":"","previously_blocked_user_id":"","privacy_audience":{"base_state":"","included_users":{"nodes":[]}},"privacy_audience_options":{"edges":[{"is_currently_selected":true,"is_default_option":true,"node":{"base_state":"ANYONE","included_users":{"count":0,"nodes":[]}}}],"identity_in_search_state":"ENABLED"},"privacy_current_activity":{"edges":[{"is_currently_selected":true,"is_default_option":true,"node":{"base_state":"ANYONE","included_users":{"count":0,"nodes":[]}}}],"identity_in_search_state":"IRRELEVANT"},"privacy_friends":{"edges":[{"is_currently_selected":true,"is_default_option":true,"node":{"base_state":"ANYONE","included_users":{"count":0,"nodes":[]}}}],"identity_in_search_state":"IRRELEVANT"},"privacy_real_world_identity":{"edges":[{"is_currently_selected":true,"is_default_option":true,"node":{"base_state":"ANYONE","included_users":{"count":0,"nodes":[]}}}],"identity_in_search_state":"ENABLED"},"profile_photo":{"height":"","name":"","uri":"","width":""},"query_map_from_uuid":{"guardian_info":"","map_download_uri":"","uuid":""},"rejected_friend_requester":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"current_room":{"nodes":[]},"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notifications":{"nodes":[]},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""}},"related_entitlements":[],"removed_friend":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"current_room":{"nodes":[]},"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notifications":{"nodes":[]},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""}},"request_id":"","results":{"nodes":[],"page_info":{"end_cursor":""},"result_mode":""},"saved":{"edges":[],"nodes":[]},"search":{"typeahead_completions":{"completions":[],"prefix":""}},"sent_friend_requestee":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"current_room":{"nodes":[]},"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notifications":{"nodes":[]},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""}},"sent_friend_requestee_search_result":{"user_id":""},"social_activity":{"application":{"package_name":""},"deeplink":"","image":{"height":"","name":"","uri":"","width":""},"subtitle":"","title":""},"social_settings_info":{"has_seen_nux_on_android":false},"stored_credits":[],"user":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"cloud_files":{"nodes":[]},"current_party":{"id":"","party_users":{"nodes":[]}},"current_room":{"nodes":[]},"dev_notif_opt_out_preferences_list":[],"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notification_opt_out_preferences_list":[],"notifications":{"nodes":[],"unseen_count":0},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""},"subscribed_events":{"nodes":[]}},"viewer":{"is_oculus_developer":false,"is_oculus_developer_blocked":false,"user":{"subscribed_events":{"nodes":[]}},"viewer":{"is_oculus_developer":false,"is_oculus_developer_blocked":false}}};

/** Root field of an operation, e.g. `query X { viewer { .. } }` -> `viewer`. */
function rootFieldOf(raw) {
  let q = String(raw || '').replace(/^\s*(query|mutation)\b/, '').trim();
  q = q.replace(/^\s*\([^)]*\)/, '');
  if (q.startsWith('{')) {
    const braced = /^\s*\{\s*(?:(\w+)\s*:\s*)?([A-Za-z_]\w*)/.exec(q);
    return braced ? braced[1] || braced[2] : null;
  }
  // The app mostly sends call-style roots: `me() { .. }`, `node(<id>) { .. }`.
  const call = /^\s*([A-Za-z_]\w*)\s*\(/.exec(q);
  return call ? call[1] : null;
}

/**
 * The table is a module-level literal, so a pin change has to be reflected at
 * read time. `MeManager.refresh()` rebuilds `is_pin_set` from every response,
 * so a frozen `false` re-shows the "Create Oculus PIN" roadblock forever.
 * Only clones when the flag is actually set, so the common path stays cheap.
 */
function applyPinState(node, session) {
  if (!pinSet(session) || node === null || typeof node !== 'object') return node;
  if (Array.isArray(node)) return node.map((entry) => applyPinState(entry, session));
  const out = {};
  for (const [key, value] of Object.entries(node)) {
    out[key] = key === 'is_pin_set' ? true : applyPinState(value, session);
  }
  return out;
}

/**
 * The roots that address the signed-in user. They must answer with a user
 * object, not the whole table: `SocialMethods.getProfile()` issues
 * `node(<user_id>) {id,name,alias,friend_status,...}` and hands the result to
 * `ProfileFragment`, whose header view holder dereferences `name` and the photo
 * URIs. `getAchievements()` instead wants `node(<application_id>) {
 * display_name, cover_landscape_image, grouping }`, so the table's `node`
 * subtree is merged in underneath - the client reads whichever field it asked
 * for. Same for `me() { ... }` and `user(...)`, which query the viewer.
 */
const USER_ROOTS = new Set(['viewer', 'me', 'user', 'node']);

/**
 * Fields that only make sense on the `viewer` root. They are carried over from
 * the table so the privacy payload survives the user-shape merge, while `node`
 * and `user` (which never ask for them) are left clean.
 */
const VIEWER_ONLY_FIELDS = [
  'linked_accounts_info',
  'privacy_audience_options',
  'privacy_current_activity',
  'privacy_friends',
  'privacy_real_world_identity',
  'feed',
];

// ---------------------------------------------------------------------------
// Store
// ---------------------------------------------------------------------------

/**
 * `app_binary_update` is the query the store sends right before an install:
 *
 *   app_binary_update(app_id: <id>) { new_binary { id, uri, size,
 *                                                obb_binary { id, uri, size } } }
 *
 * It is answered from the catalogue rather than the static table, because the
 * `uri` has to be a real download. The installer follows that URI, so this is
 * the one place that decides where a Gear VR APK actually comes from.
 */
function binaryUpdateResponse(params) {
  const itemId = appIdOf(params);
  const item = STORE.items[itemId];
  if (!item) return { app_binary_update: { new_binary: null, patch: null } };
  return {
    app_binary_update: {
      new_binary: {
        id: itemId,
        uri: apkUri(item),
        size: STORE_BINARY_SIZE,
        // No OBB in the vault catalogue; the field is concrete on the model, so
        // it is null rather than absent. `obb_binary { uri }` is null-guarded
        // everywhere it is read.
        obb_binary: null,
      },
      // A patch would have to describe the delta from the installed version.
      // There is none, so the client does a full download.
      patch: null,
    },
  };
}

/**
 * The `app_binary_updates` query OCMS's library screen and installer send
 * (`LibraryMethods.generateUpdateInfo`). It answers with the same binaries as
 * `app_binary_update`, wrapped in the `updates` array its model declares:
 *
 *   query($params: AppBinaryUpdatesArgs!) {
 *     app_binary_updates(args: $params) { ... on AppBinaryUpdateList {
 *       updates { app_id, new_binary { id, uri, size, version_code } } } }
 *
 * The requested ids arrive in `variables.params.app_params`, one entry per
 * entitlement with the id under `app_id` (`EntitlementIdentifier.itemId` is
 * `@SerializedName("app_id")`). Only ids the catalogue knows are answered;
 * answering an id the client never asked about makes it log "Unexpected null
 * entitlement" and ignore the entry, and answering none of them makes the
 * installer report SERVER_RESPONSE_ERROR.
 */
function libraryUpdateResponse(params) {
  return { app_binary_updates: { updates: requestedAppIds(params).flatMap(updateForAppId) } };
}

/**
 * `app_binary_info` (`AssetsMethods.getAssetListAndBinId`, the asset/obb
 * listing). Its request is built by `GenerateAssetListAndBinIdRequest.getParams`
 * and is identical to the update query's - `variables.params.app_params`, one
 * `{app_id, version_code}` per app - so `requestedAppIds()` reads it unchanged.
 *
 * The response is `{info: [{binary: {id, package_name, asset_files: {edges}}}}]`,
 * one entry per requested app, and every field is keyed the way
 * `GenerateAssetListAndBinIdResponse` declares it. There are no asset files in
 * the catalogue, so `edges` is empty rather than null (the model declares it
 * `@Nullable`, but an empty list keeps `Assets` from having to null-check).
 *
 * The query is unreachable in this build - nothing references `AssetsMethods`
 * outside its own package, and `Assets.getAssetList()` reads a local SQLite
 * table - so this is here for completeness rather than to fix a live failure.
 */
function assetListResponse(params) {
  return {
    app_binary_info: {
      info: requestedAppIds(params).flatMap((appId) => {
        const item = STORE.items[appId];
        if (!item) return [];
        return [{
          binary: {
            id: appId,
            package_name: item.package_name,
            asset_files: { edges: [] },
          },
        }];
      }),
    },
  };
}

/**
 * The `app_id` values inside `variables.params.app_params`. The array is the
 * serialized `ImmutableMap` of one `EntitlementIdentifier` per app, so the key
 * is the model's `@SerializedName("app_id")` and the value is the store id.
 */
function requestedAppIds(params) {
  const raw = paramsJson(params);
  if (!raw) return [];
  let values;
  try {
    values = JSON.parse(raw);
  } catch (error) {
    return [];
  }
  const params_ = values && typeof values === 'object' ? values.params : null;
  const list = params_ && typeof params_ === 'object' ? params_.app_params : null;
  if (!Array.isArray(list)) return [];
  return list
    .map((entry) => (entry && typeof entry === 'object' ? entry.app_id : null))
    .filter((id) => typeof id === 'string' && id.length > 0);
}

/** One `updates[]` entry, or nothing when the id is not in the catalogue. */
function updateForAppId(appId) {
  const item = STORE.items[appId];
  if (!item) return [];
  return [
    {
      app_id: appId,
      new_binary: {
        id: appId,
        uri: apkUri(item),
        size: STORE_BINARY_SIZE,
        // `AndroidBinary extends UpdateBinary`, and the installer puts the
        // checksum and signature straight into `UpdateConfig`, so they are
        // present-and-empty rather than null. `external_signatures` is declared
        // `String` on the model even though the query aliases it as a list, so
        // the empty string is the shape it can actually deserialize.
        checksum_hash: '',
        apk_cert_signature: '',
        external_signatures: '',
        version_code: 0,
        // No OBB in the vault catalogue; the field is concrete on the model, so
        // it is null rather than absent. `hasObbUpdate()` null-guards it.
        obb_binary: null,
        asset_files: null,
      },
      // A patch would have to describe the delta from the installed version.
      // There is none, so the client does a full download.
      patch: null,
    },
  ];
}

/**
 * `node(<category>) { all_items.after(<cursor>).first(<count>) { nodes {...}
 * page_info { end_cursor has_next_page } } }`.
 *
 * The store pages a section as the user scrolls, so `first`/`after` have to be
 * honoured: answering all 400 games at once on the first request would make the
 * client render the whole section up front, and a `page_info` that claims
 * `has_next_page: false` while more exist stops the list short.
 */
function storeSectionResponse(params) {
  const query = substitutePlaceholders(
    firstParam(params, 'q', 'query', 'doc', 'doc_id') || '',
    paramsJson(params),
  );
  const sectionId = nodeIdOf(query);
  const ids = storeSectionIds(sectionId);

  // Cursors are the offset into the section, which is stable because the
  // catalogue is generated in sorted order and never mutated at runtime. The
  // paging values arrive both inlined in the query (`.first(20)`) and as
  // top-level params (`count=20`, `cursor=20`); either spelling is accepted.
  const afterRaw = graphqlArg(query, 'after') || firstParam(params, 'cursor') || '0';
  const firstRaw = graphqlArg(query, 'first') || firstParam(params, 'count') || '';
  const after = Number.parseInt(afterRaw, 10);
  const start = Number.isFinite(after) && after > 0 ? after : 0;
  const requested = Number.parseInt(firstRaw, 10);
  const pageSize = Number.isFinite(requested) && requested > 0 ? requested : ids.length;

  const page = ids.slice(start, start + pageSize);
  const nodes = page.map((id) => storeItemNode(STORE.items[id])).filter(Boolean);
  const end = start + nodes.length;
  const hasNext = end < ids.length;

  return {
    node: {
      id: sectionId,
      section_name: storeSectionName(sectionId),
      all_items: {
        nodes,
        count: ids.length,
        page_info: {
          start_cursor: String(start),
          end_cursor: hasNext ? String(end) : '',
          has_next_page: hasNext,
        },
      },
    },
  };
}

/**
 * `node(<item_id>) { ... }` for the product detail page. Only ids that exist in
 * the catalogue are answered here; everything else (a user id, an application
 * id) falls through to the user-shape merge further down.
 */
function storeItemResponse(params) {
  const itemId = nodeIdOf(
    substitutePlaceholders(
      firstParam(params, 'q', 'query', 'doc', 'doc_id') || '',
      paramsJson(params),
    ),
  );
  const item = STORE.items[itemId];
  if (!item) return { node: {} };
  return { node: storeItemNode(item, { full: true }) };
}

/**
 * The node shape the store's `Item` model deserializes into. Every field is
 * present because the model declares them concrete; the optional ones are
 * `null` where the client null-guards them (`user_quality_rating`,
 * `head_tracking`) and empty objects/lists otherwise.
 */
function storeItemNode(item, options = {}) {
  if (!item) return null;
  const images = storeImages();
  const binary = {
    id: item.id,
    package_name: item.package_name,
    version: '1.0',
    version_code: 1,
    target_android_sdk_version: 21,
    external_signatures: [],
    size: STORE_BINARY_SIZE,
    permissions: [],
    user_quality_rating: null,
    head_tracking: 'UNKNOWN',
    uri: apkUri(item),
    can_use_external_storage: true,
    obb_binary: null,
  };
  const node = {
    __typename: 'Application',
    id: item.id,
    display_name: item.display_name,
    display_short_description: item.display_short_description,
    display_long_description: item.display_long_description,
    category: item.category_name,
    category_name: item.category_name,
    grouping: { id: item.id, cloud_file_is_enabled: false, iap_items_2: { nodes: [] } },
    latest_supported_binary: binary,
    supported_binaries: { nodes: [binary] },
    // `is_viewer_entitled` is what turns the PDP's button from "buy" into
    // "install". Everything in the catalogue is free, so it is always true.
    is_viewer_entitled: true,
    app_viewer_id: item.id,
    entitlement: { id: item.id, last_used: '', signed_token: '' },
    developer_name: item.developer_name,
    publisher_name: item.developer_name,
    organization: { id: 'ghostvr', name: 'GhostVR' },
    internet_connection: 'REQUIRED',
    internet_connection_name: 'Required',
    comfort_rating: 'COMFORTABLE',
    comfort_rating_name: 'Comfortable',
    user_interaction_modes: [],
    user_interaction_mode_names: [],
    supported_in_app_languages: [],
    supported_input_devices_list: [],
    required_input_device: null,
    supported_player_modes: [],
    genre_names: [],
    // The list query selects these on the `Application` fragment of a union, so
    // they have to be present even though they are always empty here: the PDP
    // reads `current_offer.price` without a null check, and a missing
    // `cinema_video` makes the detail view throw rather than fall back.
    term_in_sec: 0,
    style_theme: '',
    microphone_usage: 'NONE',
    developer_filtered_livestreaming_status: 'UNKNOWN',
    livestreaming_audio_hooking_enabled: false,
    chromecast_audio_enabled: false,
    cinema_video: { rating: '', format: '', purchasable_items: [] },
    banner_target: null,
    // `StoreUtils.createStoreItemModel` reads `current_offer.price` with no
    // null check on `current_offer`, so a null here is a NullPointerException
    // while building every tile in the list. Everything in the catalogue is
    // free, so the offer is a real object priced at zero.
    current_offer: {
      id: `${item.id}:offer`,
      price: { formatted: 'Free', offset_amount: 0 },
      strikethrough_price: null,
      price_without_proration: { amount_with_offset: '0' },
      promo_benefit: '',
      show_timer: false,
      end_time: 0,
      is_offer_locked_by_payment_method: false,
      viewer: null,
    },
    // `quality_rating_aggregate` is a float on the model, so it must be a JSON
    // number and not the `[]` the histogram uses.
    quality_rating_aggregate: 4.5,
    platform: 'ANDROID',
    min_recommended_version_code: 0,
    min_required_version_code: 0,
    release_date: 0,
    age_rating: null,
    quality_ratings_by_viewer: [],
    quality_rating_histogram_aggregate: [],
    user_reviews2: { nodes: [], count: 0, page_info: { end_cursor: '' } },
    screenshots: [],
    video_trailer: null,
    store_wide_offers: [],
    bundle_items: { nodes: [] },
    parent_application: null,
    is_demo_of: null,
    ...images,
  };
  // The list query and the PDP ask for different depths; the shallow one only
  // needs what the tile renders, which keeps the catalogue response small.
  if (!options.full) {
    // `supported_binaries` is the same object as `latest_supported_binary`, so
    // it is the only thing worth dropping from the list response. The list
    // query still selects `required_input_device`, and dropping it made the
    // field undefined in the Relay store; it is a single null, so there is no
    // size to win by removing it.
    delete node.supported_binaries;
  }
  return node;
}

/** Cover art. The client decodes these with an image loader, so they must be
 *  real PNG bytes - `handleAvatar()` serves that, and the same image is reused
 *  for every tile rather than one request per app. */
function storeImages() {
  const image = (name) => ({ name, uri: AVATAR_URI, width: '720', height: '405' });
  return {
    cover_landscape_image: image('cover_landscape'),
    cover_square_image: image('cover_square'),
    small_landscape_image: image('small_landscape'),
    thumbnail: image('thumbnail'),
  };
}

function apkUri(item) {
  return `${STORE.apk_base || APK_ORIGIN}/${item.apk}`;
}

function isStoreId(value) {
  return typeof value === 'string' && value.startsWith('gv:');
}

/** `node(<category>)` / `node(<item_id>)` -> the argument, unquoted. */
function nodeIdOf(query) {
  const match = /node\(\s*([^)]+?)\s*\)/.exec(query || '');
  return match ? match[1].replace(/^["']|["']$/g, '') : '';
}

/**
 * The client never interpolates its own queries. `ApiDispatcher` sends the
 * document with `<placeholder>` tokens intact and the values in a sibling
 * `query_params` JSON object (`GraphQLParamsHelper.encodeParams` serializes the
 * request's `getParams()` map), and the real GraphQL server expands them.
 *
 * Without expansion the worker saw literal `<category>`/`<count>`, so
 * `nodeIdOf` matched nothing, the section fell back to the whole catalogue, and
 * every paging request answered all 562 items at once. Substituting first is
 * what makes `.first(<count>)`/`.after(<cursor>)` - and therefore the store's
 * scrolling - actually work.
 */
function substitutePlaceholders(query, queryParamsRaw) {
  if (!query || !query.includes('<')) return query || '';
  let values;
  try {
    values = JSON.parse(queryParamsRaw || '{}');
  } catch (error) {
    return query;
  }
  if (!values || typeof values !== 'object') return query;
  return query.replace(/<([a-z_][a-z0-9_]*)>/g, (token, name) => {
    if (!Object.prototype.hasOwnProperty.call(values, name)) return token;
    const value = values[name];
    if (value === null || value === undefined) return '';
    // A nested map (e.g. `app_binary_update(<params>)`) is inlined as JSON so
    // the argument regexes can still read the keys out of it.
    return typeof value === 'string' ? value : JSON.stringify(value);
  });
}

/**
 * The value of `.name(<value>)` in a query - used for the store's pagination
 * arguments (`.first(20)`, `.after(20)`) and filters. Returns '' when absent.
 */
function graphqlArg(query, name) {
  const found = new RegExp(`\\.${name}\\(\\s*([^)]*?)\\s*\\)`).exec(query || '');
  return found ? found[1].replace(/^["']|["']$/g, '') : '';
}

/** `app_binary_update(app_id: <id>)` -> the id, unquoted. */
function appIdOf(params) {
  // The id arrives inside `query_params.params`, which the placeholder
  // expansion inlines as a JSON object, so the key may be quoted
  // (`{"app_id":"gv:.."}`) as well as bare (`app_id: gv:..`).
  const raw = substitutePlaceholders(
    firstParam(params, 'q', 'query', 'doc', 'doc_id') || '',
    paramsJson(params),
  );
  // The id ends at the closing paren, a comma, a brace or whitespace, and may
  // be quoted depending on how the client encoded the params.
  const match = /["']?app_id["']?\s*:\s*["']?([^,}\s)"']+)/.exec(raw);
  if (!match) return '';
  return match[1];
}

function storeSectionIds(sectionId) {
  const section = STORE.sections.find((entry) => entry.id === sectionId);
  // An unknown category (the store's own "featured", say) falls back to
  // everything, so the store still renders instead of showing an empty page.
  if (!section) return STORE.sections.flatMap((entry) => entry.item_ids);
  return section.item_ids;
}

function storeSectionName(sectionId) {
  const section = STORE.sections.find((entry) => entry.id === sectionId);
  return section ? section.name : 'Store';
}

function pageInfo(count) {
  return { start_cursor: '', end_cursor: '', has_next_page: false, count };
}

/**
 * `viewer() { app_store { sections { nodes { id, section_name, ... } } } }` is
 * the store home. `GRAPHQL_PAYLOAD` has `app_store` at the top level, but the
 * query asks for it under `viewer`, and the viewer branch only carries over
 * `VIEWER_ONLY_FIELDS` - so the key was dropped and the store home had no
 * sections to render. It is rebuilt here from the catalogue instead, which also
 * keeps the section ids in step with what `node(<section>) { all_items }`
 * answers.
 */
function appStorePayload() {
  return {
    id: 'ghostvr_store',
    name: 'GhostVR Store',
    style_theme: 'DARK',
    sections: connection(
      STORE.sections.map((section) => ({
        id: section.id,
        section_name: section.name,
        layout: 'CAROUSEL',
        content_type: 'APPS',
        sort_options: [],
        assets: { edges: [] },
        style_theme: 'DARK',
        end_time: null,
        show_timer: false,
      })),
    ),
    store_assets: { edges: [] },
    store_wide_offers: [],
  };
}

/**
 * The `active_android_entitlements` connection, listing every catalogue app as
 * owned. Both clients ask for it - OCMS's library screen (`LibraryMethods`) and
 * the VR app's library - and the response table ships it empty, so the library
 * stayed blank and no app could be launched.
 *
 * Two details decide the shape:
 *
 *   - `LibraryCacheRefresher` drops an entry whose `signed_token` is null (it
 *     reports a soft error and `goto`s past it), so the token is a non-empty
 *     string. It is never decoded locally.
 *   - `expiration_time` is a `Long`; null means "never expires", which is what
 *     `LibraryCacheRefresher` turns into -1. A zero would read as already
 *     expired, so the field is null rather than 0.
 */
function activeEntitlementsPayload() {
  return {
    nodes: Object.values(STORE.items).map((item) => ({
      grant_reason: 'PAID_OFFER',
      grant_time: 0,
      expiration_time: null,
      id: item.id,
      last_used: 0,
      signed_token: ENTITLEMENT_TOKEN,
      item: storeItemNode(item),
    })),
  };
}

function graphqlResponse(params, session) {
  const raw = `${firstParam(params, ...DOC_PARAMS) || ''} ${paramsJson(params)}`;
  const haystack = raw.toLowerCase();
  // The document arrives with `<placeholder>` tokens and its values alongside in
  // `query_params` (the VR app) or `variables` (OCMS); expanding them is what
  // lets the argument readers below see a real section id, count and cursor.
  const query = substitutePlaceholders(firstParam(params, ...DOC_PARAMS) || '', paramsJson(params));
  const root = rootFieldOf(query) || 'viewer';

  // OCMS (`LibraryMethods.generateUpdateInfo`) asks for `app_binary_updates`,
  // which returns `{updates: [...]}` and whose model field is
  // `app_binary_updates`. The VR app (`ApiDispatcher`) asks for the singular
  // `app_binary_update`, which returns `{new_binary, patch}`. The singular name
  // is a prefix of the plural one, so the plural has to be matched first: a
  // bare `includes('app_binary_update')` swallowed the plural query and
  // answered the wrong key, leaving the client's field null. OCMS then reports
  // SERVER_RESPONSE_ERROR and refuses to install.
  // OCMS (`AssetsMethods.getAssetListAndBinId`) asks for `app_binary_info`,
  // the asset/obb listing. Matched before the `app_binary_update*` names below
  // because it shares their prefix.
  if (haystack.includes('app_binary_info')) return assetListResponse(params);
  if (haystack.includes('app_binary_updates')) return libraryUpdateResponse(params);
  if (haystack.includes('app_binary_update')) return binaryUpdateResponse(params);

  // Store: the catalogue. `node(<category>) { all_items... }` and
  // `node(<item_id>) { ... }` both land here; the argument decides which.
  if (haystack.includes('all_items')) return storeSectionResponse(params);
  if (root === 'node' && isStoreId(nodeIdOf(query))) return storeItemResponse(params);

  // Mutations the query text names only inside their arguments.
  if (haystack.includes('sync_device_manifest')) {
    return { sync_device_manifest: { client_mutation_id: 'ghostvr' } };
  }
  if (haystack.includes('notifications_mark_all_seen')) {
    return { notifications_mark_all_seen: { client_mutation_id: 'ghostvr' } };
  }

  const payload = applyPinState(GRAPHQL_PAYLOAD, session);
  // The entitlement connection is per-account and built from the catalogue.
  // Only a query that actually selects it pays for it - building all 562 nodes
  // for every unrelated request would be a lot of wasted work.
  const ownsEntitlements = haystack.includes('active_android_entitlements');
  const entitlements = ownsEntitlements ? activeEntitlementsPayload() : null;
  if (!USER_ROOTS.has(root)) {
    if (!ownsEntitlements) return { [root]: payload };
    return { [root]: { ...payload, active_android_entitlements: entitlements } };
  }

  // Table extras first (the `node`/`user`/`me` subtrees carry the app and
  // friends/party fields those queries ask for), then the canonical user shape
  // on top, then the viewer-only privacy/feed block for `viewer`.
  const answer = { ...(payload[root] || {}), ...payload.user };
  Object.assign(answer, viewerUser(session));
  // `entitlements` is an alias for `me` (`entitlements: me { ... }`), so the
  // document's root is `entitlements` while the table's own `entitlements`
  // subtree holds the empty connection. The real one is assigned afterwards so
  // it wins over whatever the table shipped.
  if (ownsEntitlements) answer.active_android_entitlements = entitlements;
  if (root === 'viewer') {
    for (const field of VIEWER_ONLY_FIELDS) {
      if (payload[field] !== undefined) answer[field] = payload[field];
    }
    // The store home asks for `viewer { app_store }`; the static table holds it
    // at the top level, so it is rebuilt from the catalogue here.
    answer.app_store = appStorePayload();
    // `MyUserProfileResponse.Viewer.user` is the profile screen's user and is
    // deserialized as a concrete `User`, so it needs the full shape too.
    answer.user = { ...(payload.viewer?.user || {}), ...viewerUser(session) };
  }
  return { [root]: answer };
}

async function handleGraphql(request, url, session) {
  return json(graphqlResponse(await readParams(request, url), session));
}

/**
 * Relay batches several operations into one POST.  The client accepts a bare
 * array with one response envelope per operation, so answer with as many as it
 * sent.  Each entry is reshaped into the query-string form `graphqlResponse`
 * already understands.
 */
async function handleGraphqlBatch(request, session) {
  let body = [];
  try {
    body = await request.json();
  } catch (error) {
    body = [];
  }
  if (!Array.isArray(body)) return json(graphqlResponse(asQueryParams(body), session));
  return json(body.map((entry) => graphqlResponse(asQueryParams(entry), session)));
}

/** Flatten a Relay batch entry into the parameter names the router matches on. */
function asQueryParams(entry) {
  const params = new URLSearchParams();
  if (entry && typeof entry === 'object') {
    for (const key of ['q', 'query', 'doc', 'doc_id', 'query_params', 'variables']) {
      const value = entry[key];
      if (value != null) params.set(key, typeof value === 'string' ? value : JSON.stringify(value));
    }
  }
  return params;
}

// ---------------------------------------------------------------------------
// Auth REST
// ---------------------------------------------------------------------------

/** POST /oculus/login or /fb-api/method/auth.login (form-encoded). */
async function handleAuthLogin(request, url, session) {
  const params = await readParams(request, url);
  // The client labels the field "email", but the Pamplemouche backend
  // authenticates a pseudo, so whatever was typed is forwarded as `username`.
  const identifier = firstParam(params, 'email', 'username');
  const password = firstParam(params, 'password');
  const fbAccessToken = firstParam(params, 'fb_access_token');

  if (!identifier) {
    return json(
      { error: { message: 'Missing credentials', type: 'OAuthException', code: 400 } },
      400,
    );
  }

  // A login without a password is not a login. Falling back to a canned
  // identity here is what made any typed string connect.
  if (!password && !fbAccessToken) {
    return json(
      { error: { message: 'Missing credentials', type: 'OAuthException', code: 400 } },
      400,
    );
  }

  const user = await arcLogin(identifier, password);
  if (!user) {
    // Same shape the client already handles for a rejected Facebook login, so
    // the login screen reports it instead of silently proceeding.
    return json(
      {
        error_code: 1349003,
        error_msg: 'Invalid credentials',
        error: { message: 'Invalid credentials', type: 'OAuthException', code: 401 },
      },
      401,
    );
  }

  const fresh = await newSession(user, identifier);
  return json(
    { ...loginResponse(fresh), email: identifier, registered: true },
    200,
    { 'Set-Cookie': await sessionCookie(fresh) },
  );
}

/**
 * Authenticate against the Pamplemouche backend.
 *
 * `POST /api/login {username, password}` returns
 * `{ok, token, username, loadout, coins, pamp, purchases, isAdmin}`. A failed
 * login (`{ok: false}`) is not fatal: the app still needs a session so it can
 * reach the offline surfaces, so the caller keeps the fallback identity.
 */
async function arcLogin(username, password) {
  if (!username || !password) return null;
  try {
    const response = await fetch(`${ARC_BASE}/api/login`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json', Accept: 'application/json' },
      body: JSON.stringify({ username, password }),
    });
    const body = await response.json();
    if (!body || body.ok !== true) return null;
    return {
      id: String(body.userId || body.id || username),
      username: body.username || username,
      token: body.token || null,
      isAdmin: body.isAdmin === true,
      loadout: body.loadout || null,
      coins: body.coins ?? 0,
      pamp: body.pamp ?? 0,
      purchases: body.purchases || [],
    };
  } catch (error) {
    return null;
  }
}

/** POST /oculus/fbauth — returns a login session plus prefilled account info. */
async function handleFbAuth(request, session) {
  let body = {};
  if (request.method === 'POST') {
    try {
      body = await request.json();
    } catch (error) {
      body = {};
    }
  }

  const who = identity(session);
  // Signed out, `who` is an empty identity, so this reports no session
  // (`access_token` is null) while keeping the shape the client deserializes.
  return json({
    login_session: isSignedIn(session) ? { access_token: session.token, userId: who.id } : null,
    prefilled_account_info: {
      all_emails: [who.email],
      email: who.email,
      fb_access_token: body.fb_access_token || 'GHOSTVR_FB_TOKEN',
      facebook_id: who.id,
      name: who.name,
      profile_pic_uri: AVATAR_URI,
      username_suggestions: [who.alias],
    },
    existing_email_conflict: null,
  });
}

/** GET /oculus/logout */
async function handleLogout() {
  return json({ success: true, logged_out: true }, 200, {
    'Set-Cookie': await sessionCookie(null, 0),
  });
}

/** GET /oculus/register — account creation lives on the Pamplemouche backend. */
async function handleRegister() {
  return json(
    {
      error: {
        message: 'Registration is handled by the GhostVR website',
        type: 'OAuthException',
        code: 400,
      },
      registered: false,
    },
    400,
  );
}

/** POST /oculus/change_pin */
async function handleChangePin(session) {
  if (!session) return json({ success: false }, 401);
  const updated = await refreshSession(session, { pin: true });
  return json(
    { success: true, access_token: updated.token },
    200,
    { 'Set-Cookie': await sessionCookie(updated) },
  );
}

/** GET /oculus/tos and /oculus/countries */
function handleTosAndCountries(url) {
  if (url.pathname.includes('/countries')) {
    return json({ countries: [{ code: 'US', name: 'United States' }] });
  }
  return json({ accepted: true, version: '1.0' });
}

/** GET /oculus/required_mobile_versions — never force an upgrade. */
function handleRequiredVersions() {
  return json({
    min_version: 0,
    required_version: 0,
    update_required: false,
    required_mobile_versions: [],
  });
}

/** GET /oculus/user_checks — NUX checks. */
function handleUserChecks() {
  return json({ checks: [], requires_action: false });
}

/** POST /oculus/authenticate_application — app-scoped platform token. */
function handleAuthenticateApplication(session) {
  return json({ access_token: session ? session.token : null });
}

/** GET /oculus/method/auth.getSessionForApp — SSO session handoff. */
function handleSessionForApp(url, session) {
  return json({
    uid: identity(session).id,
    machine_id: firstParam(url.searchParams, 'machine_id') || 'ghostvr-machine',
    error_msg: null,
    session_cookies: [],
    access_token: session ? session.token : null,
  });
}

/** POST /oculus/check_approved_machine — this device is trusted. */
function handleCheckApprovedMachine() {
  return json({ data: [{ approved: true }] });
}

// ---------------------------------------------------------------------------
// Two-factor flow (single "approve from phone" method so login can complete)
// ---------------------------------------------------------------------------

function handleTwoFactorMethods() {
  return json({
    methods: [
      {
        id: 'ghostvr_app_approval',
        label: 'Approve from your phone',
        instructions: 'Approve this login from the Oculus mobile app.',
        enter_code_option: false,
        send_option: false,
        resend_text: null,
      },
    ],
  });
}

function handleTwoFactorVerify(session) {
  return json({ access_token: session ? session.token : null, uid: identity(session).id });
}

// ---------------------------------------------------------------------------
// Config: feature flags and mobileconfig
// ---------------------------------------------------------------------------

/**
 * GET /oculus/features?projects[0]=...&projects[1]=...
 *
 * ConfigUpdater.onRefreshGatekeepers() asserts that the number of returned
 * booleans equals the number of requested projects
 * (`onRefreshGatekeepers` -> Preconditions.checkArgument), and that runs on the
 * Retrofit callback thread - the main thread - so a short answer is an
 * immediate crash rather than a failed request. One boolean per requested
 * project is therefore mandatory.
 *
 * The VR shell asks for 133 of them at once
 * (`Oculus Home/.../module/GateKeepers.gkList`) and reads the answers
 * positionally; the phone app serves the shell its own copy through
 * `GatekeeperContentProvider`. Both reach this endpoint.
 *
 * The enabled list is an allow-list, not "everything": a gatekeeper that is on
 * makes the app show a surface that then calls for data we do not serve, so
 * turning on a feature whose backend does not exist swaps a hidden menu for a
 * crash. The entries here are the ones whose data this worker already answers -
 * system utilities (the Home menu), the store, the library, search, profile and
 * the social panel. Live-video, messenger, party calls, Skyline multi-device
 * and Worlds are deliberately absent: they need live Meta infrastructure.
 */
const ENABLED_GATEKEEPERS = new Set([
  'oculus_horizon_feed',
  'oculus_horizon_feed_default',
  'oculus_social_feed',
  'oculus_social_hub_enabled_in_vr',
  'oculus_social_panel_v2_mobile',
  'oculus_social_panel_v2_friend_finder',
  // The Home menu itself. `HorizonGatekeeperFetcherModule` reads this through
  // `getSystemUtilitiesEnabled()` and the shell shows the pull-out menu - the
  // one that never appeared - only when it is true.
  'oculus_vrshell_enable_system_utilities',
  'oculus_vrshell_enable_system_utilities_extra_cmds',
  'oculus_vrshell_enable_system_utilities_anytimeui',
  'oculus_vrshell_home_storage_button',
  'oculus_vrshell_home_unknown_sources',
  'oculus_mobile_home_storage_manager',
  'oculus_dash_panel_pullout',
  'oculus_dash_panel_context_menu',
  // Store and library.
  'oculus_store_content_disco',
  'oculus_store_disco_filtering_vr',
  'oculus_store_backend_purchase_alerts',
  'oculus_store_platform_tags_backend_purchase_alerts',
  'oculus_store_search_button_in_chrome',
  'oculus_vrshell_store_environments',
  'oculus_vrshell_store_backend_purchase_alerts',
  'oculus_vrshell_store_redesign_autoscroll',
  'oculus_vrshell_purchase_history',
  'oculus_vrshell_wishlists',
  'oculus_home2_wishlists',
  'oculus_mobile_home_library_demos',
  'oculus_mobile_home_library_tutorials',
  'oculus_mobile_home_library_back_button_disco',
  'oculus_mobile_home_library_abuse_policy',
  'oculus_search_typeahead',
  'oculus_mobile_search_bar_v2',
  'oculus_explore_pagination',
  'oculus_explore_collection_loading_back_button',
  'oculus_gallery_smart_folder_navigation',
  'oculus_profile_block',
  'oculus_user_account_exp',
]);

/**
 * The shell sends `projects[0]=a&projects[1]=b&...` (one indexed key per
 * project, see `GateKeepers.fetchAndCacheGKs`), while the phone app sends
 * `projects[]=` and may join with commas. Matching only `projects[]` missed the
 * shell's form entirely, so the worker saw zero projects, answered an empty
 * `results`, and the shell's positional `getBoolean(i)` threw - which left
 * every gatekeeper false, including the menu. All three spellings are read.
 *
 * `URLSearchParams.keys()` yields a repeated key once per occurrence, so
 * iterating it and calling `getAll` returned the same values N times: three
 * `projects[]` entries produced nine results. The client zips `results`
 * positionally against the names it asked for, so the trailing duplicates were
 * read as values for projects that were never requested. Keys are therefore
 * de-duplicated, and indexed keys are ordered by their index rather than by the
 * order they happen to appear in the query string.
 */
function gatekeeperProjects(params) {
  const indexed = [];
  const plain = [];
  const seen = new Set();
  for (const key of params.keys()) {
    if (!/^projects(\[\d*\])?$/.test(key)) continue;
    if (seen.has(key)) continue;
    seen.add(key);
    const values = [];
    for (const value of params.getAll(key)) {
      values.push(...value.split(',').filter(Boolean));
    }
    const index = /\[(\d+)\]/.exec(key);
    if (index) indexed.push([Number(index[1]), values]);
    else plain.push(...values);
  }
  indexed.sort((a, b) => a[0] - b[0]);
  return [...indexed.flatMap(([, values]) => values), ...plain];
}

async function handleFeatures(request, url) {
  const projects = gatekeeperProjects(await readParams(request, url));
  // One boolean per requested project, in the order asked. The shell indexes
  // `results` by the position of `gkList`, so the length has to match exactly;
  // a short array throws rather than defaulting to false.
  return json({
    data: [{ results: projects.map((project) => ENABLED_GATEKEEPERS.has(project)) }],
  });
}

/**
 * POST /oculus/mobileconfig?queries[]=...
 * The updater reads `sessionbased` as a map of config name -> JSON string.
 */
async function handleMobileConfig(request, url) {
  const queries = allParams(await readParams(request, url), 'queries');
  const sessionbased = {};
  for (const query of queries) sessionbased[query] = '{}';
  return json({ sessionbased, sessionless: {} });
}

// ---------------------------------------------------------------------------
// Informational pages and auxiliary feeds
// ---------------------------------------------------------------------------

const ONE_PIXEL_PNG = Uint8Array.from(
  atob('iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg=='),
  (c) => c.charCodeAt(0),
);

// The profile header decodes `profile_photo.uri` with an image loader. A JSON
// body there is not "no picture" - it is an undecodable stream, and the header
// crashes on it. Every avatar path must therefore answer real PNG bytes.
const AVATAR_PNG = Uint8Array.from(
  atob('iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAFklEQVR42mPQ1jcjCTGMahjVMHw1AACE9JABnwSskAAAAABJRU5ErkJggg=='),
  (c) => c.charCodeAt(0),
);

/** Minimal HTML page, so a webview link resolves to something readable. */
function htmlPage(title, body) {
  return new Response(
    '<!doctype html><html><head><meta charset="utf-8">'
      + '<meta name="viewport" content="width=device-width,initial-scale=1">'
      + `<title>${title}</title></head><body><h1>${title}</h1><p>${body}</p></body></html>`,
    { status: 200, headers: { 'Content-Type': 'text/html; charset=utf-8' } },
  );
}

const PAGE_KEYWORDS = [
  '/www/legal/', '/legal/', '/support', '/warnings', '/terms',
  '/paypal_', '/forgot-password', '/thirdpartynotices', '/return-policy',
];

function handlePage(url) {
  const path = url.pathname.toLowerCase();
  if (path.includes('privacy')) return htmlPage('Privacy Policy', 'GhostVR stores no personal data.');
  if (path.includes('terms')) return htmlPage('Terms of Service', 'GhostVR is provided as-is for personal use.');
  if (path.includes('health-and-safety') || path.includes('warnings')) {
    return htmlPage('Health and Safety', 'Take regular breaks and keep the headset clean.');
  }
  if (path.includes('thirdpartynotices')) return htmlPage('Third-Party Notices', 'See the bundled licence texts.');
  if (path.includes('paypal')) return htmlPage('Payment', 'Your payment was handled locally.');
  if (path.includes('forgot-password')) return htmlPage('Password Reset', 'Contact the GhostVR administrator.');
  if (path.includes('support')) return htmlPage('Support', 'GhostVR self-hosted support.');
  return htmlPage('GhostVR', 'GhostVR self-hosted service.');
}

/** GET /mobile_builds — never advertise an upgrade. */
function handleMobileBuilds() {
  return json({ success: true, builds: [], latest: null });
}

/**
 * Samsung DI (device registration / telemetry) endpoints.
 *
 * The setup wizard's analytics SDK registers the headset with Samsung and
 * fetches a policy document from `regi.di.atlas.samsung.com` before the wizard
 * can finish. That service is retired, so the call can only time out and the
 * wizard retries it - a loop the user sees as "OCMS restarts every couple of
 * seconds". The smali patcher now points those hosts here; these handlers
 * answer with the shape the SDK parses.
 *
 * The policy parser (`com.samsung.a.a.a.a.e.a`) reads `rc` and requires it to
 * equal 1000 (0x3e8) for success, then pulls every field below with an
 * unguarded `getInt`/`getString`, so all of them must be present. Omitting one
 * throws inside the parser rather than failing the request.
 */
function handleSamsungPolicy() {
  return json({
    rc: 1000,
    rint: 0,
    lgt: 'wifi',
    dom: 'https://ghostvr.pamplemouche.com',
    uri: 'https://ghostvr.pamplemouche.com',
    'bat-uri': 'https://ghostvr.pamplemouche.com',
    'dq-w': 0,
    'oq-w': 0,
    'dq-3g': 0,
    'oq-3g': 0,
  });
}

/** Samsung DI registration / quota / delete. `rc` 1000 means accepted. */
function handleSamsungDi() {
  return json({ rc: 1000, result: 'success' });
}

/** Avatar lookup for /fb-graph/{id}/picture. */
function handleAvatar() {
  return new Response(AVATAR_PNG, {
    status: 200,
    headers: { 'Content-Type': 'image/png', 'Cache-Control': 'public, max-age=86400' },
  });
}

// ---------------------------------------------------------------------------
// Misc endpoints
// ---------------------------------------------------------------------------

/**
 * POST /oculus/{app_id}/bugs, /oculus/report_bug and /oculus/bugs.
 *
 * The client's bug reporter posts here, and on a crash it includes the stack
 * trace. Meta's endpoint stored that; ours used to drop it, which left a crash
 * with no diagnostic at all. It is logged to the Worker's invocation log (see
 * `observability.logs` in wrangler.toml) so the report is recoverable from
 * `wrangler tail` instead of being discarded.
 */
async function handleBugReport(request, url) {
  let body = '';
  try {
    body = (await request.text()).slice(0, 20000);
  } catch (error) {
    body = '';
  }
  if (body) {
    console.log(
      JSON.stringify({
        event: 'bug_report',
        path: url.pathname,
        query: url.search.slice(0, 500),
        body,
      }),
    );
  }
  return json({ success: true, id: 'ghostvr-bug-1' });
}

/** Analytics / logging_client_events. */
function handleLogging() {
  return json({ success: true });
}

/** POST /oculus/payments/generate_token */
function handlePaymentToken() {
  return json({ token: 'GHOSTVR_PAYMENT_TOKEN', success: true });
}

/** POST /oculus/video_upload_start */
function handleUploadStart() {
  return json({ upload_id: 'ghostvr-upload-1', uri: null });
}

/** GET /oculus/user_heartbeat — presence ping. */
function handleHeartbeat() {
  return json({ success: true, current_status: 'ONLINE' });
}

/** Catch-all for an API-prefixed path we did not anticipate. */
function handleGenericOculus(session) {
  return json({
    viewer: viewerWithProfile(session),
    me: viewerWithProfile(session),
    success: true,
    status: 'ok',
  });
}

// ---------------------------------------------------------------------------
// Pamplemouche passthrough (per-user library, coins, shop)
// ---------------------------------------------------------------------------

/**
 * Proxy a request to the Pamplemouche backend using the signed-in session.
 *
 * The Oculus app has no concept of the Pamplemouche store, so these routes
 * exist for the client-side surfaces that read the per-user loadout, coin
 * balance and purchases. `/pamp/me` returns them in one shot; every other
 * `/pamp/<path>` is forwarded verbatim so the shop can grow without a change
 * here. Without a session both forms answer 401, so the shop cannot be browsed
 * as an anonymous account.
 */
async function handlePamp(request, url, session) {
  const suffix = url.pathname.replace(/^.*?\/pamp\/?/, '');
  if (!suffix || suffix === 'me') {
    const who = identity(session);
    return json({
      ok: true,
      username: who.alias,
      userId: who.id,
      authenticated: isSignedIn(session),
      loadout: session ? session.loadout : null,
      coins: session ? session.coins ?? 0 : 0,
      pamp: session ? session.pamp ?? 0 : 0,
      purchases: session ? session.purchases || [] : [],
      isAdmin: session ? session.isAdmin === true : false,
    });
  }

  const target = new URL(`${ARC_BASE}/api/${suffix}`);
  for (const [key, value] of url.searchParams) target.searchParams.append(key, value);

  const headers = { Accept: 'application/json' };
  if (session && session.token) headers.Authorization = `Bearer ${session.token}`;
  const contentType = request.headers.get('content-type');
  if (contentType) headers['Content-Type'] = contentType;

  try {
    const upstream = await fetch(target.toString(), {
      method: request.method,
      headers,
      body: ['GET', 'HEAD'].includes(request.method) ? undefined : await request.text(),
    });
    return new Response(upstream.body, {
      status: upstream.status,
      headers: {
        'Content-Type': upstream.headers.get('content-type') || 'application/json; charset=utf-8',
        'Access-Control-Allow-Origin': '*',
        'Cache-Control': 'no-store',
      },
    });
  } catch (error) {
    return json({ ok: false, error: 'Pamplemouche backend unreachable' }, 502);
  }
}

// ---------------------------------------------------------------------------
// Dispatch
// ---------------------------------------------------------------------------

function match(pathname, method, patterns) {
  for (const [wantedMethod, fragment] of patterns) {
    if (wantedMethod && wantedMethod !== method) continue;
    // Suffix match covers both the plain form and the version-prefixed one
    // (`/v3.1/graphql`): the subdomain a client builds lives in the host, so
    // it never appears in the path.
    if (pathname.endsWith(fragment)) return true;
  }
  return false;
}

async function route(request, url, session) {
  const path = url.pathname;
  const method = request.method;

  if (match(path, method, [[null, '/graphqlbatch']])) return handleGraphqlBatch(request, session);
  if (match(path, method, [[null, '/graphql']])) return handleGraphql(request, url, session);
  if (path.includes('/pamp/')) return handlePamp(request, url, session);
  if (match(path, method, [[null, '/features']])) return handleFeatures(request, url);
  if (match(path, method, [[null, '/mobileconfig']])) return handleMobileConfig(request, url);
  if (match(path, method, [[null, '/method/auth.login']])) return handleAuthLogin(request, url, session);
  if (match(path, method, [[null, '/fbauth']])) return handleFbAuth(request, session);
  if (match(path, method, [[null, '/login']])) return handleAuthLogin(request, url, session);
  if (match(path, method, [[null, '/logout']])) return handleLogout();
  if (match(path, method, [[null, '/register']])) return handleRegister(request, url);
  if (match(path, method, [[null, '/change_pin']])) return handleChangePin(session);
  if (match(path, method, [[null, '/check_approved_machine']])) return handleCheckApprovedMachine();
  if (match(path, method, [[null, '/authenticate_application']])) return handleAuthenticateApplication(session);
  if (match(path, method, [[null, '/method/auth.getSessionForApp']])) return handleSessionForApp(url, session);
  if (match(path, method, [[null, '/required_mobile_versions']])) return handleRequiredVersions();
  if (match(path, method, [[null, '/user_checks']])) return handleUserChecks();
  if (match(path, method, [[null, '/tos'], [null, '/countries']])) return handleTosAndCountries(url);
  if (match(path, method, [[null, '/upload_user_profile_photo']])) return json({ success: true });

  if (match(path, method, [[null, '/two_factor_methods']])) return handleTwoFactorMethods();
  if (match(path, method, [[null, '/two_factor_verify_code']])) return handleTwoFactorVerify(session);
  if (match(path, method, [[null, '/login_checkpoint_verify']])) return handleTwoFactorVerify(session);
  if (match(path, method, [[null, '/two_factor_send_code'], [null, '/resend_delta_pin'], [null, '/twofacsms']])) {
    return json({ success: true });
  }

  if (match(path, method, [[null, '/report_bug'], [null, '/bugs']])) return handleBugReport(request, url);
  if (match(path, method, [[null, '/logging_client_events'], [null, '/method/logging.clientevent']])) {
    return handleLogging();
  }
  if (match(path, method, [[null, '/payments/generate_token'], [null, '/payments/'], [null, '/paypal_']])) {
    return handlePaymentToken();
  }
  if (match(path, method, [[null, '/video_upload_start']])) return handleUploadStart();
  if (match(path, method, [[null, '/user_heartbeat'], [null, '/heartbeat']])) return handleHeartbeat();
  if (match(path, method, [[null, '/reset_password_for_user'], [null, '/auth/token/revoke'], [null, '/oauth2/revoke'], [null, '/oauth2/v4/token']])) {
    return json({ success: true });
  }

  // Auxiliary feeds and the informational pages the webviews link to.
  if (path.includes('/mobile_builds')) return handleMobileBuilds();
  // Samsung DI endpoints, reached after the smali patch rewrites the atlas
  // hosts onto this worker. `/v1/quotas` is the policy document; `/app/delete`
  // is the data-delete call and `/logs_v2` the DLS log upload.
  if (path.endsWith('/v1/quotas')) return handleSamsungPolicy();
  if (path.includes('/app/delete') || path.includes('/logs_v2')) return handleSamsungDi();
  if (path.endsWith('/picture') || path.includes('/picture?')) return handleAvatar();
  // `profile_photo.uri` / `avatar_image.uri` point at /assets/avatar.png, and
  // the upload path at /assets/<something>. Any of them that falls through to
  // the JSON envelope is an undecodable image, which is the crash.
  if (path.startsWith('/assets/') || path.endsWith('/avatar.png')) return handleAvatar();
  // The Facebook SDK's picture aliases. OCMS references /profile, /photo and
  // /display_photo; all three are image endpoints and must not answer JSON.
  if (/\/(profile|photo|display_photo)$/.test(path)) return handleAvatar();
  if (PAGE_KEYWORDS.some((keyword) => path.includes(keyword))) return handlePage(url);

  return null;
}

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

    if (env && env.SESSION_SECRET) sessionSecret = env.SESSION_SECRET;
    // The app authenticates with a bearer token; the cookie is only there for
    // a browser. Either one rebuilds the same session.
    const session =
      (await sessionFromToken(request.headers.get('Authorization'))) ||
      (await sessionFromRequest(request));

    if (request.method === 'OPTIONS') {
      return new Response(null, {
        status: 204,
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
          'Access-Control-Allow-Headers': '*',
        },
      });
    }

    // Drop scanner noise so it does not pollute the logs.
    if (/wp-|wordpress|xmlrpc/i.test(path)) {
      return new Response('Not Found', { status: 404 });
    }

    try {
      const handled = await route(request, url, session);
      if (handled) return handled;
    } catch (error) {
      return json(
        { error: { message: String(error && error.message ? error.message : error), type: 'GhostVRError' } },
        500,
      );
    }

    // Any other API-prefixed call answers with a benign envelope instead of a
    // 404, so the client never hard-fails on a route we did not anticipate.
    if (path.startsWith('/oculus/') || path.startsWith('/fb-api/') || path.startsWith('/fb-graph/')) {
      return handleGenericOculus(session);
    }

    return json({ status: 'ok', service: 'GhostVR backend' });
  },
};
