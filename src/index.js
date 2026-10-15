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
    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers: HEADERS });
    }

    console.log(`[${request.method}] Path: ${url.pathname} | Params: ${url.search}`);

    // 1. Ignorer / Valider les requêtes système et de télémétrie
    if (path.includes(".git") || path.includes("telemetry") || path.includes("logging") || path.includes("ping")) {
      return new Response(JSON.stringify({ status: "OK", success: true }), { status: 200, headers: HEADERS });
    }

    // 2. Conditions d'utilisation (TOS)
    if (path.includes("tos") || path.includes("terms")) {
      return new Response(JSON.stringify({
        is_tos_accepted: true,
        terms_of_service: { id: "1", text: "OK" },
        success: true,
        status: "OK"
      }), { status: 200, headers: HEADERS });
    }

    // 3. Vérification de compte
    if (path.includes("user_checks") || path.includes("check_user")) {
      return new Response(JSON.stringify({
        is_eligible: true,
        has_password: true,
        user_exists: true,
        user: USER_DATA,
        status: "OK"
      }), { status: 200, headers: HEADERS });
    }

    // 4. Vérification des versions et mises à jour
    if (path.includes("required_mobile_versions") || path.includes("version") || path.includes("update")) {
      return new Response(JSON.stringify({
        is_update_required: false,
        minimum_supported_version: "1.0",
        current_version: "1.0",
        status: "OK"
      }), { status: 200, headers: HEADERS });
    }

    // 5. Endpoint GraphQL
    if (path.includes("graphql")) {
      const q = (url.searchParams.get("q") || "").toLowerCase();
      let responseData = { ...GRAPHQL_UNIVERSAL_PAYLOAD.data };

      // Interception dynamique des mutations (Push Token, enregistrement d'appareil, etc.)
      if (q.includes("pushtoken") || q.includes("addpushtoken") || q.includes("register")) {
        responseData.add_push_token = { success: true };
        responseData.push_token_add = { success: true };
        responseData.register_push_token = { success: true };
        responseData.client_mutation_id = "1";
      }

      return new Response(JSON.stringify({
        data: responseData,
        extensions: {}
      }), {
        status: 200,
        headers: HEADERS
      });
    }

    // 6. Login / Auth / Registration / Session
    if (
      path.includes("login") ||
      path.includes("auth") ||
      path.includes("oauth") ||
      path.includes("register") ||
      path.includes("device") ||
      path.includes("session")
    ) {
      return new Response(JSON.stringify(AUTH_FULL_PAYLOAD), {
        status: 200,
        headers: HEADERS
      });
    }

    // 7. Fallback universel pour TOUTE autre route
    return new Response(JSON.stringify(AUTH_FULL_PAYLOAD), {
      status: 200,
      headers: HEADERS
    });
  }
};
