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

    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers });
    }

    console.log(`[${request.method}] ${path}${url.search}`);

    // Réponse JSON spécifique pour la vérification des TOS
    if (path.includes("/tos")) {
      return new Response(
        JSON.stringify({
          is_tos_accepted: true,
          terms_of_service: { id: "1", text: "OK" },
          success: true
        }),
        { status: 200, headers }
      );
    }

    // Réponse d'authentification globale
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

    return new Response(JSON.stringify(responsePayload), { status: 200, headers });
  }
};
