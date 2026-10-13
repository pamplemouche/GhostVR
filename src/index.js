export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

    const headers = {
      "Content-Type": "application/json; charset=utf-8",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
      "Access-Control-Allow-Headers": "*"
    };

    // Gestion de la pré-vérification CORS
    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers });
    }

    console.log(`[${request.method}] ${path}${url.search}`);

    // 1. Vérification du compte utilisateur (/oculus/user_checks)
    if (path.includes("user_checks")) {
      return new Response(JSON.stringify({
        is_eligible: true,
        has_password: true,
        user_exists: true,
        user: { id: "100000000000000", name: "GhostVR User" }
      }), { status: 200, headers });
    }

    // 2. Vérification de la version de l'application (/oculus/required_mobile_versions)
    if (path.includes("required_mobile_versions")) {
      return new Response(JSON.stringify({
        is_update_required: false,
        minimum_supported_version: "1.0",
        status: "OK"
      }), { status: 200, headers });
    }

    // 3. Validation des conditions d'utilisation (/oculus/tos)
    if (path.includes("tos")) {
      return new Response(JSON.stringify({
        is_tos_accepted: true,
        terms_of_service: { id: "1", text: "OK" },
        success: true
      }), { status: 200, headers });
    }

    // 4. Endpoint GraphQL (/oculus/graphql)
    if (path.includes("graphql")) {
      return new Response(JSON.stringify({
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
      }), { status: 200, headers });
    }

    // 5. Réponse générique pour l'authentification OAuth & Legacy Login
    return new Response(JSON.stringify({
      access_token: "OC|100000000000000|ghostvr_token",
      session_key: "ghostvr_session",
      uid: "100000000000000",
      user_id: "100000000000000",
      machine_id: "ghostvr_machine",
      is_tos_accepted: true,
      data: {
        viewer: { user: { id: "100000000000000", name: "GhostVR User", is_tos_accepted: true } },
        user: { id: "100000000000000", name: "GhostVR User" }
      }
    }), { status: 200, headers });
  }
};
