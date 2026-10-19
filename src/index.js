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

    // Filtrer le bruit des bots web/WordPress
    if (path.includes("wp") || path.includes("wordpress") || path.includes("xmlrpc")) {
      return new Response("Not Found", { status: 404 });
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

    // 2. Feature Flags (/oculus/features)
    if (path.endsWith("/oculus/features")) {
      const projectsParam = url.searchParams.get("projects") || url.searchParams.get("projects[]");
      const featureMap = {};

      if (projectsParam) {
        const projects = Array.isArray(projectsParam) ? projectsParam : projectsParam.split(",");
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

      // A. DRM & Entitlements (gestion de l'alias entitlements: me)
      if (queryStr.includes("active_android_entitlements") || queryStr.includes("entitlements:")) {
        const entitlementNode = {
          id: "entitlement_ghostvr_master",
          is_viewer_entitled: true,
          signed_token: "GHOSTVR_VALID_MOCK_TOKEN",
          item: {
            grouping: { id: "group_ghostvr" },
            iap_entitlements: [],
          },
          latest_supported_binary: {
            package_name: "com.oculus.horizon",
            version_code: 900257473,
            uri: "",
            obb_binary: null,
          },
        };

        return new Response(
          JSON.stringify({
            data: {
              entitlements: {
                active_android_entitlements: {
                  nodes: [entitlementNode],
                },
              },
              me: {
                active_android_entitlements: {
                  nodes: [entitlementNode],
                },
              },
              viewer: {
                active_android_entitlements: {
                  nodes: [entitlementNode],
                },
              },
            },
          }),
          { headers }
        );
      }

      // B. Profile, Viewer & Linked Accounts
      if (queryStr.includes("viewer") || queryStr.includes("linked_accounts_info")) {
        return new Response(
          JSON.stringify({
            data: {
              viewer: {
                user: {
                  id: "100000000000001",
                  email: "ghostvr@pamplemouche.com",
                  name: "GhostVR User",
                  alias: "GhostVR",
                  account_creation_time: 1500000000,
                  is_pin_set: true,
                  profile_photo: {
                    name: "photo",
                    uri: "https://ghostvr.pamplemouche.com/avatar.png",
                    width: 360,
                    height: 360,
                  },
                  avatar_image: {
                    name: "avatar",
                    uri: "https://ghostvr.pamplemouche.com/avatar.png",
                    width: 360,
                    height: 360,
                  },
                  friend_requests_received_2: { count: 0 },
                  friends: { count: 0 },
                  current_room: { nodes: [] },
                  payment_methods: { nodes: [] },
                  all_payment_methods: { nodes: [] },
                  client_preference_data: [],
                  reachability_data: [],
                },
                notifications: {
                  nodes: [],
                  page_info: { has_next_page: false, end_cursor: null },
                },
                privacy_audience_options: {
                  identity_in_search_state: "EVERYONE",
                  edges: [],
                },
                privacy_real_world_identity: { edges: [] },
                privacy_current_activity: { edges: [] },
                privacy_friends: { edges: [] },
                linked_accounts_info: {
                  facebook_account: {
                    access_token: "FB_MOCK_TOKEN",
                    facebook_id: "100000000000001",
                    friend_policy: "EVERYONE",
                    needs_password_to_unlink: false,
                  },
                },
              },
            },
          }),
          { headers }
        );
      }

      // Fallback GraphQL
      return new Response(
        JSON.stringify({
          data: {
            viewer: {
              user: { id: "100000000000001", alias: "GhostVR" },
            },
          },
        }),
        { headers }
      );
    }

    // 4. Analytics & Logs Client (/fb-graph/logging_client_events)
    if (path.endsWith("/fb-graph/logging_client_events")) {
      return new Response(JSON.stringify({ success: true }), { headers });
    }

    // Fallback global
    return new Response(
      JSON.stringify({ status: "ok", service: "GhostVR Mock Server" }),
      { headers, status: 200 }
    );
  },
};
