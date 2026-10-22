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

const USER_ID = '100000000000001';
const USER_ALIAS = 'GhostVR';
const USER_NAME = 'GhostVR User';
const USER_EMAIL = 'ghostvr@pamplemouche.com';
const USER_PHOTO = 'https://ghostvr.pamplemouche.com/assets/avatar.png';
const ACCESS_TOKEN = `OC|${USER_ID}|ghostvr_session_valid_token`;

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
  return { name, uri: USER_PHOTO, width: '360', height: '360' };
}

function viewerUser() {
  return {
    id: USER_ID,
    alias: USER_ALIAS,
    name: USER_NAME,
    email: USER_EMAIL,
    presence: 'ONLINE',
    presence_status: 'ONLINE',
    friend_status: 'NONE',
    is_pin_set: false,
    profile_photo: profilePhoto('photo'),
    avatar: profilePhoto('avatar'),
    avatar_image: profilePhoto('avatar'),
    current_room: { nodes: [] },
    presence_status_updated_at: 0,
    online_platforms: [],
    friend_requests_received_2: { count: 0 },
    friends: { count: 0, nodes: [] },
    notifications: { nodes: [], page_info: { has_next_page: false, end_cursor: null } },
    mutual_friends: null,
    all_payment_methods: { nodes: [] },
    client_preference_data: [],
  };
}

const LINKED_ACCOUNTS = {
  facebook_account: {
    access_token: 'GHOSTVR_FB_LINKED_TOKEN',
    facebook_id: USER_ID,
    friend_policy: 'EVERYONE',
    needs_password_to_unlink: false,
  },
};

const PRIVACY_EDGES = { edges: [], identity_in_search_state: 'EVERYONE' };

/** Full viewer object: the shape getMyUserProfile / getViewer expect. */
function viewerWithProfile() {
  return {
    ...viewerUser(),
    linked_accounts_info: LINKED_ACCOUNTS,
    privacy_audience_options: PRIVACY_EDGES,
    privacy_current_activity: PRIVACY_EDGES,
    privacy_friends: PRIVACY_EDGES,
    privacy_real_world_identity: PRIVACY_EDGES,
    user: viewerUser(),
  };
}

function entitlementNode() {
  return {
    id: 'entitlement_ghostvr_master',
    is_viewer_entitled: true,
    signed_token: 'GHOSTVR_VALID_MOCK_TOKEN',
    item: {
      id: 'ghostvr_app',
      grouping: { id: 'group_ghostvr' },
      iap_entitlements: [],
      latest_supported_binary: {
        package_name: 'com.oculus.horizon',
        version_code: 900257473,
        uri: '',
        obb_binary: null,
      },
    },
  };
}

function loginResponse() {
  return {
    access_token: ACCESS_TOKEN,
    uid: USER_ID,
    id: USER_ID,
    user_id: USER_ID,
    session_id: 'ghostvr-session-active',
    // FBLoginResponse deserializes these into non-null String fields; the
    // native session builder reads session_key/secret/machine_id downstream, so
    // they must be present rather than absent.
    session_key: 'ghostvr-session-key',
    secret: 'ghostvr-secret',
    machine_id: 'ghostvr-machine',
    identifier: USER_EMAIL,
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
 * The app sends the operation text in `q` (with `doc`/`doc_id` for persisted
 * queries). Keyword matching is enough because every branch returns the keys
 * the caller reads; unknown operations fall back to a generic viewer.
 */
function graphqlResponse(params) {
  const haystack = `${firstParam(params, 'q', 'query', 'doc', 'doc_id') || ''} ${
    firstParam(params, 'query_params') || ''
  }`.toLowerCase();

  if (haystack.includes('entitlement') || haystack.includes('iap') || haystack.includes('drm')) {
    const node = entitlementNode();
    const edges = { active_android_entitlements: { nodes: [node] } };
    return { data: { entitlements: edges, me: edges, viewer: edges } };
  }

  if (
    haystack.includes('linked_accounts_info') ||
    haystack.includes('privacy_') ||
    haystack.includes('myuserprofile')
  ) {
    return { data: { viewer: viewerWithProfile() } };
  }

  if (haystack.includes('notification') || haystack.includes('friend_request')) {
    return {
      data: {
        viewer: {
          notifications: { nodes: [], page_info: { has_next_page: false, end_cursor: null } },
          friend_requests_received_2: { count: 0 },
        },
      },
    };
  }

  if (haystack.includes('library') || haystack.includes('applications')) {
    return {
      data: {
        viewer: viewerWithProfile(),
        applications: { nodes: [], page_info: { has_next_page: false, end_cursor: null } },
      },
    };
  }

  return { data: { viewer: viewerWithProfile() } };
}

async function handleGraphql(request, url) {
  return json(graphqlResponse(await readParams(request, url)));
}

// ---------------------------------------------------------------------------
// Auth REST
// ---------------------------------------------------------------------------

/** POST /oculus/login or /fb-api/method/auth.login (form-encoded). */
async function handleAuthLogin(request, url) {
  const params = await readParams(request, url);
  const email = firstParam(params, 'email') || USER_EMAIL;
  const password = firstParam(params, 'password');
  const fbAccessToken = firstParam(params, 'fb_access_token');

  if (!password && !fbAccessToken) {
    return json(
      { error: { message: 'Missing credentials', type: 'OAuthException', code: 400 } },
      400,
    );
  }
  return json({ ...loginResponse(), email, registered: true });
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

  return json({
    login_session: { access_token: ACCESS_TOKEN, userId: USER_ID },
    prefilled_account_info: {
      all_emails: [USER_EMAIL],
      email: USER_EMAIL,
      fb_access_token: body.fb_access_token || 'GHOSTVR_FB_TOKEN',
      facebook_id: USER_ID,
      name: USER_NAME,
      profile_pic_uri: USER_PHOTO,
      username_suggestions: [USER_ALIAS],
    },
    existing_email_conflict: null,
  });
}

/** GET /oculus/logout */
function handleLogout() {
  return json({ success: true, logged_out: true });
}

/** GET /oculus/register */
async function handleRegister(request, url) {
  const params = await readParams(request, url);
  return json({
    ...loginResponse(),
    email: firstParam(params, 'email') || USER_EMAIL,
    registered: true,
  });
}

/** POST /oculus/change_pin */
function handleChangePin() {
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
  return json({ access_token: ACCESS_TOKEN });
}

/** GET /oculus/method/auth.getSessionForApp — SSO session handoff. */
function handleSessionForApp(url) {
  return json({
    uid: USER_ID,
    machine_id: firstParam(url.searchParams, 'machine_id') || 'ghostvr-machine',
    error_msg: null,
    session_cookies: [],
    access_token: ACCESS_TOKEN,
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
  return json({ access_token: ACCESS_TOKEN, uid: USER_ID });
}

// ---------------------------------------------------------------------------
// Config: feature flags and mobileconfig
// ---------------------------------------------------------------------------

/**
 * GET /oculus/features?projects[]=...&projects[]=...
 * ConfigUpdater asserts that the number of returned booleans equals the number
 * of requested projects (`onRefreshGatekeepers` -> Preconditions.checkArgument),
 * so the order and count must match exactly.
 */
async function handleFeatures(request, url) {
  const projects = allParams(await readParams(request, url), 'projects');
  // Empty list is safe: the app only applies gatekeepers it knows about.
  return json({ data: [{ results: [] }] });
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
  return json({ data: { viewer: viewerWithProfile() }, success: true, status: 'ok' });
}

// ---------------------------------------------------------------------------
// Dispatch
// ---------------------------------------------------------------------------

function match(pathname, method, patterns) {
  for (const [wantedMethod, fragment] of patterns) {
    if (wantedMethod && wantedMethod !== method) continue;
    if (pathname.endsWith(fragment)) return true;
  }
  return false;
}

async function route(request, url) {
  const path = url.pathname;
  const method = request.method;

  if (match(path, method, [[null, '/graphql']])) return handleGraphql(request, url);
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
