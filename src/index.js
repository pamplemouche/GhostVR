export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    console.log(`[${request.method}] ${url.pathname}${url.search}`);

    // Prise en charge des requêtes CORS Preflight (OPTIONS)
    if (request.method === "OPTIONS") {
      return new Response(null, {
        status: 204,
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
          "Access-Control-Allow-Headers": "Content-Type, Authorization, X-Requested-With",
        },
      });
    }

    // Réponse universelle simulant une authentification Oculus valide
    const payload = {
      access_token: "GHOSTVR_VALIDATED_TOKEN",
      session_key: "GHOSTVR_SESSION",
      uid: "100000000000000",
      user_id: "100000000000000",
      machine_id: "ghostvr_machine",
      data: {
        viewer: {
          user: {
            id: "100000000000000",
            is_tos_accepted: true
          }
        }
      }
    };

    return new Response(JSON.stringify(payload), {
      status: 200,
      headers: {
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
    });
  }
};
