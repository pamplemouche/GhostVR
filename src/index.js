export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

    const headers = {
      "Content-Type": "application/json; charset=utf-8",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
      "Access-Control-Allow-Headers": "*"
    };

    // Gestion des requêtes preflight CORS
    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers });
    }

    console.log(`[${request.method}] Path: ${path} | Query: ${url.search}`);

    // Payload de réponse d'authentification universelle Oculus / Meta Legacy
    const responsePayload = {
      access_token: "OC|100000000000000|ghostvr_valid_token",
      session_key: "ghostvr_session_key",
      uid: "100000000000000",
      user_id: "100000000000000",
      machine_id: "ghostvr_machine_id",
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
      headers
    });
  }
};
