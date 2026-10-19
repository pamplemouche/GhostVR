export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;
    const method = request.method;

    // En-têtes CORS pour autoriser l'application Android
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
          access_token: "GHOSTVR_MOCK_ACCESS_TOKEN",
          user_id: "100000000000001",
          session_id: "ghostvr-session-active",
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

      // Extraction si les arguments sont envoyés dans le corps HTTP (POST)
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
          // Poursuite avec les paramètres d'URL en cas d'erreur de parsing
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
                  nodes: [
                    {
                      id: "entitlement_ghostvr_master",
                      is_viewer_entitled: true,
                      signed_token: "GHOSTVR_VALID_MOCK_TOKEN",
                      latest_supported_binary: {
                        package_name: "com.oculus.horizon",
                        version_code: 900257473,
                        uri: "",
                        obb_binary: null,
                      },
                    },
                  ],
                },
              },
            },
          }),
          { headers }
        );
      }

      // B. Polling Profil & Notifications (viewer())
      if (queryStr.includes("viewer")) {
        return new Response(
          JSON.stringify({
            data: {
              viewer: {
                user: {
                  id: "100000000000001",
                  name: "GhostVR User",
                  alias: "GhostVR",
                  is_pin_set: true,
                },
                notifications: {
                  nodes: [],
                  page_info: {
                    has_next_page: false,
                    end_cursor: null,
                  },
                },
              },
            },
          }),
          { headers }
        );
      }

      // Reponse GraphQL fallback générique
      return new Response(
        JSON.stringify({
          data: {
            viewer: {
              user: {
                id: "100000000000001",
                alias: "GhostVR",
              },
            },
          },
        }),
        { headers }
      );
    }

    // 4. Analytics & Logging Client (/fb-graph/logging_client_events)
    if (path.endsWith("/fb-graph/logging_client_events")) {
      return new Response(JSON.stringify({ success: true }), { headers });
    }

    // Fallback pour toute autre route
    return new Response(
      JSON.stringify({ status: "ok", service: "GhostVR Mock Server" }),
      { headers, status: 200 }
    );
  },
};
