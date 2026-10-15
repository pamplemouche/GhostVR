// En-têtes HTTP globaux
const HEADERS = {
  "Content-Type": "application/json; charset=utf-8",
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS, PUT, DELETE",
  "Access-Control-Allow-Headers": "*"
};

// Données utilisateur centralisées
const USER_DATA = {
  id: "100000000000000",
  oculus_id: "100000000000000",
  fbid: "100000000000000",
  name: "GhostVR User",
  alias: "GhostVR",
  username: "ghostvr",
  email: "ghostvr@pamplemouche.com",
  gender: "N/A",
  locale: "fr_FR",
  timezone: "Europe/Paris",
  presence: "OFFLINE",
  is_tos_accepted: true,
  is_eligible: true,
  has_password: true,
  user_exists: true,
  is_castability_enabled: true,
  profile_photo: {
    uri: "https://ghostvr.pamplemouche.com/avatar.png"
  },
  avatar_url: "https://ghostvr.pamplemouche.com/avatar.png"
};

// Payload universel GraphQL (satisfait la quasi-totalité des requêtes GraphQL de Meta/Oculus)
const GRAPHQL_UNIVERSAL_PAYLOAD = {
  data: {
    viewer: {
      user: USER_DATA,
      actor: USER_DATA,
      me: USER_DATA,
      primary_user: USER_DATA,
      update_response: {
        is_update_required: false,
        is_update_available: false
      }
    },
    me: USER_DATA,
    user: USER_DATA,
    node: {
      __typename: "User",
      ...USER_DATA
    },
    nodes: [
      {
        __typename: "User",
        ...USER_DATA
      }
    ],
    // Tutoriel et onboarding (NUX)
    nux: {
      is_nux_complete: true,
      nux_state: "COMPLETED"
    },
    // Bibliothèque d'applications / Titres
    user_entitlements: {
      nodes: [],
      edges: [],
      page_info: { has_next_page: false, end_cursor: null }
    },
    // Appareils / Casque Gear VR
    devices: {
      nodes: [],
      edges: []
    },
    // Notifications & Fil d'actualité
    notifications: { nodes: [], edges: [] },
    feed: { nodes: [], edges: [] }
  },
  extensions: {}
};

// Payload universel de Fallback (REST + GraphQL combinés)
const AUTH_FULL_PAYLOAD = {
  access_token: "OC|100000000000000|ghostvr_token",
  session_key: "ghostvr_session",
  uid: "100000000000000",
  user_id: "100000000000000",
  machine_id: "ghostvr_machine",
  is_tos_accepted: true,
  status: "OK",
  success: true,
  user: USER_DATA,
  profile: USER_DATA,
  ...GRAPHQL_UNIVERSAL_PAYLOAD
};

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname.toLowerCase();

    // Preflight CORS
    if (request.method ===
