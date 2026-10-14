// En-têtes HTTP globaux
const HEADERS = {
  "Content-Type": "application/json; charset=utf-8",
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
  "Access-Control-Allow-Headers": "*"
};

// Réponse d'authentification valide (Token & Profil)
const AUTH_SUCCESS_PAYLOAD = {
  access_token: "OC|100000000000000|ghostvr_token",
  session_key: "ghostvr_session",
  uid: "100000000000000",
  user_id: "100000000000000",
  machine_id: "ghostvr_machine",
  is_tos_accepted: true,
  user: {
    id: "100000000000000",
    name: "GhostVR User",
    email: "ghostvr@pamplemouche.com"
  },
  data: {
    viewer: {
      user: {
        id: "100000000000000",
        name: "GhostVR User",
        is_tos_accepted: true
      }
    }
  }
};

// Table de routage exact
const routes = {
  "/oculus/login": () => AUTH_SUCCESS_PAYLOAD,

  "/oculus/tos": () => ({
    is_tos_accepted: true,
    terms_of_service: { id: "1", text: "OK" },
    success: true
  }),

  "/oculus/user_checks": () => ({
    is_eligible: true,
    has_password: true,
    user_exists: true,
    user: {
      id: "100000000000000",
      name: "GhostVR User"
    }
  }),

  "/oculus/required_mobile_versions": () => ({
    is_update_required: false,
    minimum_supported_version: "1.0",
    status: "OK"
  }),

  "/oculus/graphql": () => ({
    data: {
      viewer: {
        user: {
          id: "100000000000000",
          name: "GhostVR User",
          is_tos_accepted: true
        }
      },
      node: {
        id: "100000000000000",
        __typename: "User",
        name: "GhostVR User"
      }
    }
  })
};

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

    // Preflight CORS
    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers: HEADERS });
    }

    console.log(`[${request.method}] ${path}${url.search}`);

    // Ignorer ou neutraliser les checks d'environnement comme .git/config
    if (path.includes(".git")) {
      return new Response(JSON.stringify({}), { status: 404, headers: HEADERS });
    }

    // 1. Recherche par route exacte
    if (routes[path]) {
      return new Response(JSON.stringify(routes[path]()), {
        status: 200,
        headers: HEADERS
      });
    }

    // 2. Fallbacks par sous-chaîne pour requêtes avec paramètres
    if (path.includes("login")) {
      return new Response(JSON.stringify(routes["/oculus/login"]()), {
        status: 200,
        headers: HEADERS
      });
    }

    if (path.includes("tos")) {
      return new Response(JSON.stringify(routes["/oculus/tos"]()), {
        status: 200,
        headers: HEADERS
      });
    }

    if (path.includes("user_checks")) {
      return new Response(JSON.stringify(routes["/oculus/user_checks"]()), {
        status: 200,
        headers: HEADERS
      });
    }

    if (path.includes("required_mobile_versions")) {
      return new Response(JSON.stringify(routes["/oculus/required_mobile_versions"]()), {
        status: 200,
        headers: HEADERS
      });
    }

    if (path.includes("graphql")) {
      return new Response(JSON.stringify(routes["/oculus/graphql"]()), {
        status: 200,
        headers: HEADERS
      });
    }

    // 3. Authentification fallback générale
    return new Response(JSON.stringify(AUTH_SUCCESS_PAYLOAD), {
      status: 200,
      headers: HEADERS
    });
  }
};
