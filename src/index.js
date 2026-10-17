// En-têtes HTTP globaux pour CORS & JSON
const HEADERS = {
  "Content-Type": "application/json; charset=utf-8",
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS, PUT, DELETE",
  "Access-Control-Allow-Headers": "*"
};

// Helper pour retourner une réponse JSON standardisée
function jsonResponse(data, status = 200) {
  return new Response(JSON.stringify(data), {
    status,
    headers: HEADERS
  });
}

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

// Analyseur universel du corps de requête (JSON, URL-Encoded / Form-Data & Raw)
async function parseRequestBody(request) {
  if (request.method === "GET" || request.method === "HEAD") {
    return { rawText: "", parsed: {} };
  }

  try {
    const text = await request.text();
    if (!text) return { rawText: "", parsed: {} };

    const contentType = (request.headers.get("content-type") || "").toLowerCase();

    // 1. Traitement JSON
    if (contentType.includes("application/json")) {
      try {
        return { rawText: text, parsed: JSON.parse(text) };
      } catch (e) {
        return { rawText: text, parsed: {} };
      }
    }

    // 2. Traitement URL-Encoded (très fréquent chez Oculus / Meta Tigon Network)
    if (contentType.includes("application/x-www-form-urlencoded")) {
      const params = new URLSearchParams(text);
      const parsed = {};
      for (const [key, value] of params.entries()) {
        parsed[key] = value;
      }
      return { rawText: text, parsed };
    }

    // 3. Fallback générique
    try {
      return { rawText: text, parsed: JSON.parse(text) };
    } catch (e) {
      const params = new URLSearchParams(text);
      const parsed = {};
      let count = 0;
      for (const [key, value] of params.entries()) {
        parsed[key] = value;
        count++;
      }
      if (count > 0) return { rawText: text, parsed };
      return { rawText: text, parsed: {} };
    }
  } catch (err) {
    return { rawText: "", parsed: {} };
  }
}

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname.toLowerCase();

    // 1. Requêtes CORS Preflight (OPTIONS)
    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers: HEADERS });
    }

    // 2. Extraire et analyser le corps de la requête
    const { rawText, parsed: bodyData } = await parseRequestBody(request);

    // Extraction des paramètres de requête GraphQL (?q=, ?query=, body.doc_id, body.q, etc.)
    const qFromParam = url.searchParams.get("q") || url.searchParams.get("query") || "";
    const qFromBody = bodyData.query || bodyData.q || bodyData.doc_id || bodyData.query_params || "";
    const fullQueryString = (qFromParam || qFromBody || rawText || "").toString();

    // Console logs dans Cloudflare
    console.log(`[${request.method}] ${url.pathname}${url.search}`);
    if (fullQueryString) {
      console.log(`[Query/Payload]`, fullQueryString.slice(0, 300));
    }

    // --- ROUTES ET ENDPOINTS ---

    // A. Télémétrie, Pings et Check Réseau
    if (
      path.includes(".git") ||
      path.includes("telemetry") ||
      path.includes("logging") ||
      path.includes("ping") ||
      path.includes("network_check")
    ) {
      return jsonResponse({ status: "OK", success: true });
    }

    // B. Conditions d'utilisation (TOS & Terms)
    if (path.includes("tos") || path.includes("terms") || path.includes("legal")) {
      return jsonResponse({
        is_tos_accepted: true,
        terms_of_service: { id: "1", text: "OK" },
        success: true,
        status: "OK"
      });
    }

    // C. Vérification d'utilisateur (User Checks)
    if (path.includes("user_checks") || path.includes("check_user")) {
      return jsonResponse({
        is_eligible: true,
        has_password: true,
        user_exists: true,
        user: USER_DATA,
        status: "OK"
      });
    }

    // D. Vérification de version Android & Mises à jour
    if (path.includes("required_mobile_versions") || path.includes("version") || path.includes("update")) {
      return jsonResponse({
        is_update_required: false,
        minimum_supported_version: "1.0",
        current_version: "1.0",
        status: "OK"
      });
    }

    // E. Endpoint GraphQL principal
    if (path.includes("graphql")) {
      const qLower = fullQueryString.toLowerCase();
      let responseData = JSON.parse(JSON.stringify(GRAPHQL_UNIVERSAL_PAYLOAD.data));

      // Mutations spécifiques (Push Notifications, Enregistrement de jeton)
      if (qLower.includes("pushtoken") || qLower.includes("addpushtoken")) {
        responseData.add_push_token = {
          token: { id: USER_DATA.id },
          client_mutation_id: "1"
        };
      } else if (qLower.includes("register")) {
        responseData.register_push_token = { success: true };
      }

      return jsonResponse({
        data: responseData,
        extensions: {}
      });
    }

    // F. Authentification, Connexion, Inscription, Session
    if (
      path.includes("login") ||
      path.includes("auth") ||
      path.includes("oauth") ||
      path.includes("register") ||
      path.includes("device") ||
      path.includes("session")
    ) {
      return jsonResponse(AUTH_FULL_PAYLOAD);
    }

    // G. Fallback universel
    return jsonResponse(AUTH_FULL_PAYLOAD);
  }
};
