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

// The only asset the client asks for before an account exists. Everything else
// about the viewer comes from the Pamplemouche backend, so there is no local
// account to fall back on: `USER_ID`/`ACCESS_TOKEN` used to stand in for one,
// which let a wrong password through and made the login screen decorative.
const AVATAR_URI = 'https://ghostvr.pamplemouche.com/assets/avatar.png';
const DEVICE_SECRET = 'ghostvr_device_secret';

// The real accounts live on the Pamplemouche backend, which authenticates a
// pseudo and a password (`POST /api/login {username, password}`). The Oculus
// client only knows "email + password", so the pseudo is submitted in the email
// field and forwarded here. The signed-in identity is kept module-level, the
// same way `pinIsSet` is, so the viewer payload reflects the actual user.
const ARC_BASE = 'https://arc.pamplemouche.com';

let currentUser = null;

/**
 * Identity used to build every viewer/profile payload.
 *
 * Signed out, this is an empty identity rather than a canned account.  The
 * client always receives the full viewer shape - changing that shape is its
 * own startup risk - but with no id, alias or token, so nothing reads as a
 * real signed-in user and the login screen still has to be completed.
 */
const EMPTY_IDENTITY = { id: '', alias: '', name: '', email: '' };

function identity() {
  if (!currentUser) return { ...EMPTY_IDENTITY };
  return {
    id: currentUser.id,
    alias: currentUser.username,
    name: currentUser.username,
    email: currentUser.email || `${currentUser.username}@pamplemouche.com`,
  };
}

function isSignedIn() {
  return currentUser !== null;
}

/**
 * No token while signed out.  A canned token here is what let a wrong password
 * return a usable session: the client saw a token and skipped the login.
 */
function accessToken() {
  if (!currentUser) return null;
  return `OC|${currentUser.id}|ghostvr_session_valid_token`;
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
let pinIsSet = false;

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
function viewerUser() {
  const who = identity();
  return {
    id: who.id,
    alias: who.alias,
    name: who.name,
    email: who.email,
    presence: 'ONLINE',
    presence_status: 'ONLINE',
    friend_status: 'NONE',
    is_facebook_friend: false,
    is_pin_set: pinIsSet,
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
function linkedAccounts() {
  const who = identity();
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
function viewerWithProfile() {
  return {
    ...viewerUser(),
    linked_accounts_info: linkedAccounts(),
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
      ...viewerUser(),
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


function loginResponse() {
  const who = identity();
  return {
    access_token: accessToken(),
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
    user: viewerUser(),
    viewer: viewerWithProfile(),
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
const GRAPHQL_PAYLOAD = {"accepted_friend_requester":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"current_room":{"nodes":[]},"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notifications":{"nodes":[]},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""}},"active_android_entitlements":{"nodes":[]},"add_credit_card":{},"all_device_manifests":{"nodes":[]},"all_items":{},"all_payment_methods":{"nodes":[]},"alternative_items":[],"app_binary_info":{"info":[]},"app_binary_updates":{"updates":[]},"app_entitlements":[],"app_redeem_coupon":{},"app_store":{"sections":{"nodes":[]},"store_assets":{"edges":[]},"store_wide_offers":[],"style_theme":""},"avatar_image":{"height":"","name":"","uri":"","width":""},"billing_agreement_id":"","blocked_user":{"alias":"","id":""},"blocked_users":{"nodes":[]},"challenge_tos":"","client_preference_data":[],"cloud_file_wildcards":{"nodes":[]},"confirm_order":{},"cover_landscape_image":{"uri":""},"current_party":{"id":"","party_invited_users":{"nodes":[]},"party_users":{"nodes":[]}},"current_room":{"nodes":[]},"default_applications":[],"default_apps_nux_config":{},"default_digital_payment_method":{"__typename":"","balance":{"formatted_amount":""},"card_type":"","display_name":"","email":"","id":"","last4":"","paypal_context":""},"default_item":{"__typename":"","age_rating":{"category_name":"","descriptors":[]},"app_viewer_id":"","banner_target":{"__typename":"","assets":{"edges":[]},"content_type":"","display_long_description":"","display_post_description":"","display_post_title":"","display_short_description":"","display_terms":"","display_title":"","id":"","section_name":"","sort_options":[],"style_theme":""},"bundle_items":{"nodes":[]},"category":"","category_name":"","cinema_video":{"format":"","purchasable_items":[],"rating":""},"comfort_rating":"","comfort_rating_name":"","cover_landscape_image":{"name":"","uri":""},"cover_square_image":{"name":"","uri":""},"current_offer":{"id":"","price":{"formatted":""},"price_without_proration":{"amount_with_offset":""},"promo_benefit":"","strikethrough_price":{"formatted":""},"viewer":{"user":{"payment_account":{"stored_credit":{"balance":{"formatted_amount":""},"id":"","subcredits":{"nodes":[]}}}}}},"developer_filtered_livestreaming_status":"","developer_name":"","developer_privacy_policy_url":"","developer_terms_of_service_url":"","display_long_description":"","display_name":"","display_short_description":"","entitlement":{"item":{},"signed_token":""},"extra_buy_box_section":{"content":"","link_text":"","link_uri":""},"genre_names":[],"grouping":{"iap_items_2":{"nodes":[]},"id":""},"iarc_cert":{"iarc_rating":{"age_rating_image_large":{"uri":""},"age_rating_image_small":{"uri":""},"age_rating_text":"","descriptors":[],"interactive_elements":[],"rating_definition_uri":""}},"id":"","internet_connection":"","internet_connection_name":"","is_demo_of":{"id":""},"latest_supported_binary":{"external_signatures":[],"head_tracking":"UNKNOWN","id":"","obb_binary":{"id":"","uri":""},"package_name":"","permissions":[],"uri":"","user_quality_rating":null,"version":""},"metadata_for_user":{"poster_image":{"name":"","uri":""}},"microphone_usage":"","organization":{"name":""},"parent_application":{},"platform":"","publisher_name":"","purchasable_items":[],"quality_rating_histogram_aggregate":[],"quality_ratings_by_viewer":[],"screenshots":[],"share_capabilities":[],"small_landscape_image":{"name":"","uri":""},"store_wide_offers":[],"style_theme":"","supported_binaries":{"nodes":[]},"supported_in_app_languages":[],"supported_input_devices_list":[],"supported_player_modes":[],"thumbnail":{"name":"","uri":""},"user_interaction_mode_names":[],"user_reviews2":{"nodes":[],"page_info":{"end_cursor":""}},"video_trailer":{"name":"","type":"","uri":""},"website_url":""},"device_secret":"","display_name":"","eligible_promotions":{"nodes":[]},"email":"","entitle_user":{},"entitlement":{"item":{"__typename":"","age_rating":{"category_name":"","descriptors":[]},"app_viewer_id":"","banner_target":{"__typename":"","assets":{"edges":[]},"content_type":"","display_long_description":"","display_post_description":"","display_post_title":"","display_short_description":"","display_terms":"","display_title":"","id":"","section_name":"","sort_options":[],"style_theme":""},"bundle_items":{"nodes":[]},"category":"","category_name":"","cinema_video":{"format":"","purchasable_items":[],"rating":""},"comfort_rating":"","comfort_rating_name":"","cover_landscape_image":{"name":"","uri":""},"cover_square_image":{"name":"","uri":""},"current_offer":{"id":"","price":{"formatted":""},"price_without_proration":{"amount_with_offset":""},"promo_benefit":"","strikethrough_price":{"formatted":""},"viewer":{"user":{"payment_account":{"stored_credit":{"balance":{"formatted_amount":""},"id":"","subcredits":{"nodes":[]}}}}}},"developer_filtered_livestreaming_status":"","developer_name":"","developer_privacy_policy_url":"","developer_terms_of_service_url":"","display_long_description":"","display_name":"","display_short_description":"","entitlement":{},"extra_buy_box_section":{"content":"","link_text":"","link_uri":""},"genre_names":[],"grouping":{"iap_items_2":{"nodes":[]},"id":""},"iarc_cert":{"iarc_rating":{"age_rating_image_large":{"uri":""},"age_rating_image_small":{"uri":""},"age_rating_text":"","descriptors":[],"interactive_elements":[],"rating_definition_uri":""}},"id":"","internet_connection":"","internet_connection_name":"","is_demo_of":{"id":""},"latest_supported_binary":{"external_signatures":[],"head_tracking":"UNKNOWN","id":"","obb_binary":{"id":"","uri":""},"package_name":"","permissions":[],"uri":"","user_quality_rating":null,"version":""},"metadata_for_user":{"poster_image":{"name":"","uri":""}},"microphone_usage":"","organization":{"name":""},"parent_application":{},"platform":"","publisher_name":"","purchasable_items":[],"quality_rating_histogram_aggregate":[],"quality_ratings_by_viewer":[],"screenshots":[],"share_capabilities":[],"small_landscape_image":{"name":"","uri":""},"store_wide_offers":[],"style_theme":"","supported_binaries":{"nodes":[]},"supported_in_app_languages":[],"supported_input_devices_list":[],"supported_player_modes":[],"thumbnail":{"name":"","uri":""},"user_interaction_mode_names":[],"user_reviews2":{"nodes":[],"page_info":{"end_cursor":""}},"video_trailer":{"name":"","type":"","uri":""},"website_url":""},"signed_token":""},"entitlements":{"active_android_entitlements":{"nodes":[]}},"event":{"applications_for_viewer":[],"deeplink_message":"","description":"","id":"","joinability_for_viewer":"","landscape_image":{"uri":""},"subscribed_friends":{"nodes":[]},"temporal_info":{},"title":"","unjoinable_reason_string":""},"facebook_account":{"access_token":"","facebook_id":"","friend_policy":""},"featured_events":{"nodes":[]},"feed":{"nodes":[]},"filters":[],"friend_requests_received_2":{"edges":[]},"friends":{"nodes":[]},"grouping":{"achievement_definitions":{"nodes":[]}},"iap_entitlements":[],"id":"","individual_events":{"nodes":[]},"is_pin_set":false,"linked_accounts_info":{"facebook_account":{"access_token":"","facebook_id":"","friend_policy":""},"facebook_friends_connected":{"nodes":[]}},"me":{"viewer":{"is_oculus_developer":false,"is_oculus_developer_blocked":false}},"mutation_upload_map":{"uuid":""},"node":{"cover_landscape_image":{"uri":""},"default_applications":[],"display_name":"GhostVR","grouping":{"achievement_definitions":{"count":0,"edges":[],"nodes":[]},"secret_achievement_count_earned_by_user_but_not_viewer":0,"unearned_secret_achievement_count":0}},"nodes":[],"notifications":{"nodes":[]},"order":{"app_store_item":{"current_offer":{"price":{"formatted":""},"price_without_proration":{"amount_with_offset":""},"viewer":{"user":{"payment_account":{"stored_credit":{"balance":{"formatted_amount":""},"id":"","subcredits":{"nodes":[]}}}}}}},"id":"","payment_method":{"__typename":"","balance":{"formatted_amount":""},"card_type":"","display_name":"","email":"","id":"","last4":"","paypal_context":""},"purchase":{"exemptions":{"formatted":"","offset_amount":""},"price":{"formatted":"","offset_amount":""},"purchase_time":"","tax":{"formatted":"","offset_amount":""},"terms_of_service":"","total":{"formatted":"","offset_amount":""},"usable_store_credit":{"formatted":"","offset_amount":""}}},"page_info":{"end_cursor":""},"party":{"id":"","party_users":{"nodes":[]}},"party_blocked_invited_users":{},"party_blocked_users":{},"party_invite_activity":{"application":{"id":"","package_name":""},"deeplink":"","id":"","image":{"uri":""},"subtitle":"","title":""},"party_invited_users":{},"party_users":{},"payment_account":{"digital_orders":{"nodes":[]},"stored_credit":{"balance":{"formatted_amount":""},"id":"","subcredits":{"nodes":[]}}},"payment_method":{"card_type":"","id":"","last4":""},"payment_methods":{"nodes":[]},"paypal_token":"","presence":"","previously_blocked_user_id":"","privacy_audience":{"base_state":"","included_users":{"nodes":[]}},"privacy_audience_options":{"edges":[{"is_currently_selected":true,"is_default_option":true,"node":{"base_state":"ANYONE","included_users":{"count":0,"nodes":[]}}}],"identity_in_search_state":"ENABLED"},"privacy_current_activity":{"edges":[{"is_currently_selected":true,"is_default_option":true,"node":{"base_state":"ANYONE","included_users":{"count":0,"nodes":[]}}}],"identity_in_search_state":"IRRELEVANT"},"privacy_friends":{"edges":[{"is_currently_selected":true,"is_default_option":true,"node":{"base_state":"ANYONE","included_users":{"count":0,"nodes":[]}}}],"identity_in_search_state":"IRRELEVANT"},"privacy_real_world_identity":{"edges":[{"is_currently_selected":true,"is_default_option":true,"node":{"base_state":"ANYONE","included_users":{"count":0,"nodes":[]}}}],"identity_in_search_state":"ENABLED"},"profile_photo":{"height":"","name":"","uri":"","width":""},"query_map_from_uuid":{"guardian_info":"","map_download_uri":"","uuid":""},"rejected_friend_requester":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"current_room":{"nodes":[]},"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notifications":{"nodes":[]},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""}},"related_entitlements":[],"removed_friend":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"current_room":{"nodes":[]},"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notifications":{"nodes":[]},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""}},"request_id":"","results":{"nodes":[],"page_info":{"end_cursor":""},"result_mode":""},"saved":{"edges":[],"nodes":[]},"search":{"typeahead_completions":{"completions":[],"prefix":""}},"sent_friend_requestee":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"current_room":{"nodes":[]},"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notifications":{"nodes":[]},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""}},"sent_friend_requestee_search_result":{"user_id":""},"social_activity":{"application":{"package_name":""},"deeplink":"","image":{"height":"","name":"","uri":"","width":""},"subtitle":"","title":""},"social_settings_info":{"has_seen_nux_on_android":false},"stored_credits":[],"user":{"all_payment_methods":{"nodes":[]},"avatar_image":{"height":"","name":"","uri":"","width":""},"client_preference_data":[],"cloud_files":{"nodes":[]},"current_party":{"id":"","party_users":{"nodes":[]}},"current_room":{"nodes":[]},"dev_notif_opt_out_preferences_list":[],"email":"","friend_requests_received_2":{"edges":[]},"friends":{},"is_pin_set":false,"notification_opt_out_preferences_list":[],"notifications":{"nodes":[],"unseen_count":0},"presence":"","profile_photo":{"height":"","name":"","uri":"","width":""},"subscribed_events":{"nodes":[]}},"viewer":{"is_oculus_developer":false,"is_oculus_developer_blocked":false,"user":{"subscribed_events":{"nodes":[]}},"viewer":{"is_oculus_developer":false,"is_oculus_developer_blocked":false}}};

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
function applyPinState(node) {
  if (!pinIsSet || node === null || typeof node !== 'object') return node;
  if (Array.isArray(node)) return node.map(applyPinState);
  const out = {};
  for (const [key, value] of Object.entries(node)) {
    out[key] = key === 'is_pin_set' ? true : applyPinState(value);
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

function graphqlResponse(params) {
  const raw = `${firstParam(params, 'q', 'query', 'doc', 'doc_id') || ''} ${
    firstParam(params, 'query_params') || ''
  }`;
  const haystack = raw.toLowerCase();
  const root = rootFieldOf(firstParam(params, 'q', 'query', 'doc', 'doc_id') || '') || 'viewer';

  // Mutations the query text names only inside their arguments.
  if (haystack.includes('sync_device_manifest')) {
    return { sync_device_manifest: { client_mutation_id: 'ghostvr' } };
  }
  if (haystack.includes('notifications_mark_all_seen')) {
    return { notifications_mark_all_seen: { client_mutation_id: 'ghostvr' } };
  }

  const payload = applyPinState(GRAPHQL_PAYLOAD);
  if (!USER_ROOTS.has(root)) return { [root]: payload };

  // Table extras first (the `node`/`user`/`me` subtrees carry the app and
  // friends/party fields those queries ask for), then the canonical user shape
  // on top, then the viewer-only privacy/feed block for `viewer`.
  const answer = { ...(payload[root] || {}), ...payload.user };
  Object.assign(answer, viewerUser());
  if (root === 'viewer') {
    for (const field of VIEWER_ONLY_FIELDS) {
      if (payload[field] !== undefined) answer[field] = payload[field];
    }
    // `MyUserProfileResponse.Viewer.user` is the profile screen's user and is
    // deserialized as a concrete `User`, so it needs the full shape too.
    answer.user = { ...(payload.viewer?.user || {}), ...viewerUser() };
  }
  return { [root]: answer };
}

async function handleGraphql(request, url) {
  return json(graphqlResponse(await readParams(request, url)));
}

/**
 * Relay batches several operations into one POST.  The client accepts a bare
 * array with one response envelope per operation, so answer with as many as it
 * sent.  Each entry is reshaped into the query-string form `graphqlResponse`
 * already understands.
 */
async function handleGraphqlBatch(request) {
  let body = [];
  try {
    body = await request.json();
  } catch (error) {
    body = [];
  }
  if (!Array.isArray(body)) return json(graphqlResponse(asQueryParams(body)));
  return json(body.map((entry) => graphqlResponse(asQueryParams(entry))));
}

/** Flatten a Relay batch entry into the parameter names the router matches on. */
function asQueryParams(entry) {
  const params = new URLSearchParams();
  if (entry && typeof entry === 'object') {
    for (const key of ['q', 'query', 'doc', 'doc_id', 'query_params']) {
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
async function handleAuthLogin(request, url) {
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

  currentUser = user;
  return json({ ...loginResponse(), email: identifier, registered: true });
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
async function handleFbAuth(request) {
  let body = {};
  if (request.method === 'POST') {
    try {
      body = await request.json();
    } catch (error) {
      body = {};
    }
  }

  const who = identity();
  // Signed out, `who` is an empty identity, so this reports no session
  // (`access_token` is null) while keeping the shape the client deserializes.
  return json({
    login_session: isSignedIn() ? { access_token: accessToken(), userId: who.id } : null,
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
function handleLogout() {
  currentUser = null;
  return json({ success: true, logged_out: true });
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
function handleChangePin() {
  pinIsSet = true;
  return json({ success: true });
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
function handleAuthenticateApplication() {
  return json({ access_token: accessToken() });
}

/** GET /oculus/method/auth.getSessionForApp — SSO session handoff. */
function handleSessionForApp(url) {
  return json({
    uid: identity().id,
    machine_id: firstParam(url.searchParams, 'machine_id') || 'ghostvr-machine',
    error_msg: null,
    session_cookies: [],
    access_token: accessToken(),
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

function handleTwoFactorVerify() {
  return json({ access_token: accessToken(), uid: identity().id });
}

// ---------------------------------------------------------------------------
// Config: feature flags and mobileconfig
// ---------------------------------------------------------------------------

/**
 * GET /oculus/features?projects[]=...&projects[]=...
 *
 * ConfigUpdater.onRefreshGatekeepers() asserts that the number of returned
 * booleans equals the number of requested projects
 * (`onRefreshGatekeepers` -> Preconditions.checkArgument), and that runs on the
 * Retrofit callback thread - the main thread - so a short answer is an
 * immediate crash rather than a failed request. One boolean per requested
 * project is therefore mandatory.
 *
 * An unset gatekeeper resolves to `false`, and `oculus_horizon_feed_default`
 * false makes MainActivity open the store fragment instead of the feed, so the
 * navigation gates are switched on explicitly.
 */
const ENABLED_GATEKEEPERS = new Set([
  'oculus_horizon_feed',
  'oculus_horizon_feed_default',
]);

async function handleFeatures(request, url) {
  const projects = allParams(await readParams(request, url), 'projects');
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

/** Avatar lookup for /fb-graph/{id}/picture. */
function handleAvatar() {
  return new Response(ONE_PIXEL_PNG, {
    status: 200,
    headers: { 'Content-Type': 'image/png', 'Cache-Control': 'public, max-age=86400' },
  });
}

// ---------------------------------------------------------------------------
// Misc endpoints
// ---------------------------------------------------------------------------

/** POST /oculus/{app_id}/bugs and /oculus/report_bug */
function handleBugReport() {
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
function handleGenericOculus() {
  return json({ viewer: viewerWithProfile(), me: viewerWithProfile(), success: true, status: 'ok' });
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
async function handlePamp(request, url) {
  const suffix = url.pathname.replace(/^.*?\/pamp\/?/, '');
  if (!suffix || suffix === 'me') {
    const who = identity();
    return json({
      ok: true,
      username: who.alias,
      userId: who.id,
      authenticated: isSignedIn(),
      loadout: currentUser ? currentUser.loadout : null,
      coins: currentUser ? currentUser.coins ?? 0 : 0,
      pamp: currentUser ? currentUser.pamp ?? 0 : 0,
      purchases: currentUser ? currentUser.purchases || [] : [],
      isAdmin: currentUser ? currentUser.isAdmin === true : false,
    });
  }

  const target = new URL(`${ARC_BASE}/api/${suffix}`);
  for (const [key, value] of url.searchParams) target.searchParams.append(key, value);

  const headers = { Accept: 'application/json' };
  if (currentUser && currentUser.token) headers.Authorization = `Bearer ${currentUser.token}`;
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

async function route(request, url) {
  const path = url.pathname;
  const method = request.method;

  if (match(path, method, [[null, '/graphqlbatch']])) return handleGraphqlBatch(request);
  if (match(path, method, [[null, '/graphql']])) return handleGraphql(request, url);
  if (path.includes('/pamp/')) return handlePamp(request, url);
  if (match(path, method, [[null, '/features']])) return handleFeatures(request, url);
  if (match(path, method, [[null, '/mobileconfig']])) return handleMobileConfig(request, url);
  if (match(path, method, [[null, '/method/auth.login']])) return handleAuthLogin(request, url);
  if (match(path, method, [[null, '/fbauth']])) return handleFbAuth(request);
  if (match(path, method, [[null, '/login']])) return handleAuthLogin(request, url);
  if (match(path, method, [[null, '/logout']])) return handleLogout();
  if (match(path, method, [[null, '/register']])) return handleRegister(request, url);
  if (match(path, method, [[null, '/change_pin']])) return handleChangePin();
  if (match(path, method, [[null, '/check_approved_machine']])) return handleCheckApprovedMachine();
  if (match(path, method, [[null, '/authenticate_application']])) return handleAuthenticateApplication();
  if (match(path, method, [[null, '/method/auth.getSessionForApp']])) return handleSessionForApp(url);
  if (match(path, method, [[null, '/required_mobile_versions']])) return handleRequiredVersions();
  if (match(path, method, [[null, '/user_checks']])) return handleUserChecks();
  if (match(path, method, [[null, '/tos'], [null, '/countries']])) return handleTosAndCountries(url);
  if (match(path, method, [[null, '/upload_user_profile_photo']])) return json({ success: true });

  if (match(path, method, [[null, '/two_factor_methods']])) return handleTwoFactorMethods();
  if (match(path, method, [[null, '/two_factor_verify_code']])) return handleTwoFactorVerify();
  if (match(path, method, [[null, '/login_checkpoint_verify']])) return handleTwoFactorVerify();
  if (match(path, method, [[null, '/two_factor_send_code'], [null, '/resend_delta_pin'], [null, '/twofacsms']])) {
    return json({ success: true });
  }

  if (match(path, method, [[null, '/report_bug'], [null, '/bugs']])) return handleBugReport();
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
  if (path.endsWith('/picture') || path.includes('/picture?')) return handleAvatar();
  if (PAGE_KEYWORDS.some((keyword) => path.includes(keyword))) return handlePage(url);

  return null;
}

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

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
      const handled = await route(request, url);
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
      return handleGenericOculus();
    }

    return json({ status: 'ok', service: 'GhostVR backend' });
  },
};
