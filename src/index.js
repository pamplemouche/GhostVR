// 1. Définition des entêtes HTTP globaux
const JSON_HEADERS = {
  "Content-Type": "application/json; charset=utf-8",
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
  "Access-Control-Allow-Headers": "*"
};

// 2. Table des routes exactes
const routes = {
  // Conditions d'utilisation
  "/oculus/tos": () => ({
    is_tos_accepted: true,
    terms_of_service: { id: "1", text: "OK" },
    success: true
  }),

  // Vérification du compte et de l'adresse e-mail
  "/oculus/user_checks": () => ({
    is_eligible: true,
    has_password: true,
    user_exists: true,
    user: {
      id: "100000000000000",
      name: "GhostVR User"
    }
  }),

  // Compatibility check
  "/oculus/required_mobile_versions": () => ({
    is_update_required: false,
    minimum_supported_version: "1.0",
    status: "OK"
  }),

  // Requêtes Profil / GraphQL
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

// 3. Handlers d'exécution du Worker
export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

    // Gestion du Preflight CORS
    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers: JSON_HEADERS });
    }

    console.log(`[${request.method}] Path demandé : ${path}`);

    // Recherche de la route exacte
    const routeHandler = routes[path];

    if (routeHandler) {
      const responseData = routeHandler();
      return new Response(JSON.stringify(responseData), {
        status: 200,
        headers: JSON_HEADERS
      });
    }

    // Si la route n'est pas encore déclarée dans le serveur : 404 explicite
    console.warn(`[404] Route manquante : ${path}`);
    return new Response(JSON.stringify({
      error: "Route non déclarée sur le serveur GhostVR",
      path_requested: path,
      query_params: url.search
    }), {
      status: 404,
      headers: JSON_HEADERS
    });
  }
};

