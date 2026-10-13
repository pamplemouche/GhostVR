export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

    const headers = {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
      "Access-Control-Allow-Headers": "*"
    };

    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers });
    }

    console.log(`[${request.method}] Path: ${path} | Query: ${url.search}`);

    // Gestion spécifique de la page des Conditions d'utilisation (TOS)
    if (path.includes("/tos")) {
      return new Response(
        "<!DOCTYPE html><html><body><h1>GhostVR Terms of Service</h1><p>OK</p></body></html>",
        {
          status: 200,
          headers: { ...headers, "Content-Type": "text/html; charset=utf-8" }
        }
      );
    }

    // Réponse d'authentification par défaut pour l'API
    const responsePayload = {
      access_token: "OC|100000000000000|ghostvr_token",
      session_key: "ghostvr_session",
      uid: "100000000000000",
      user_id: "100000000000000",
      machine_id: "ghostvr_machine",
      is_tos_accepted: true,
      data: {
        viewer: {
          user: {
            id: "100000000000000",
            name: "GhostVR User",
            is_tos_accepted: true
          }
        },
        user: {
          id: "100000000000000",
          name: "GhostVR User"
        }
      }
    };

    return new Response(JSON.stringify(responsePayload), {
      status: 200,
      headers: { ...headers, "Content-Type": "application/json; charset=utf-8" }
    });
  }
};
