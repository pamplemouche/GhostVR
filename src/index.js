export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;
    const method = request.method;

    // En-têtes CORS
    const headers = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
      "Access-Control-Allow-Headers": "*",
    };

    if (method === "OPTIONS") {
      return new Response(null, { headers, status: 204 });
    }

    // 1. Authentification (/oculus/login)
    if (path.endsWith("/oculus/login")) {
      return new Response(
        JSON.stringify({
          access_token: "OC|100000000000001|ghostvr_session_valid_token",
          token_type: "bearer",
          user_id: "100000000000001",
          uid: "100000000000001",
          id: "100000000000001",
          session_id: "ghostvr-session-active",
          expires_in: 315360000,
          user: {
            id: "100000000000001",
            name: "GhostVR User",
            alias: "GhostVR",
          },
        }),
        { headers }
      );
    }

    // 2. Feature Flags / Gatekeepers (/oculus/features)
    if (path.endsWith("/oculus/features")) {
      const projectsParam = url.searchParams.get("projects");
      const featureMap = {};

      if (projectsParam) {
        const projects = projectsParam.split(",");
        projects.forEach((proj) => {
          featureMap[proj] = { enabled: true };
        });
      }

      return new Response(JSON.stringify(featureMap), { headers });
    }

    // 3. Traitement GraphQL (/oculus/graphql)
    if (path.endsWith("/oculus/graphql")) {
      let doc = url.searchParams.get("doc") || "";
      let q = url.searchParams.get("q") || "";

      // Lecture du corps HTTP en POST (x-www-form-urlencoded ou JSON)
      if (method === "POST") {
        try {
          const contentType = request.headers.get("content-type") || "";
          if (contentType.includes("application/x-www-form-urlencoded")) {
            const bodyText = await request.text();
            const bodyParams = new URLSearchParams(bodyText);
            doc = doc || bodyParams.get("doc") || "";
            q = q || bodyParams.get("q") || "";
          } else if (contentType.includes("application/json")) {
            const jsonBody = await request.json();
            doc = doc || jsonBody.doc || jsonBody.query || "";
            q = q || jsonBody.q || "";
          }
        } catch (e) {
          // Fallback sur les paramètres d'URL
        }
      }

      const queryStr = `${doc} ${q}`.toLowerCase();

      // A. DRM & Entitlements (active_android_entitlements)
      if (queryStr.includes("active_android_entitlements") || queryStr.includes("machine_id")) {
        return new Response(
          JSON.stringify({
            data: {
              viewer: {
                active_android_entitlements: {
                  
