export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const method = request.method;

    // En-têtes CORS universels pour l'application Android Horizon
    const corsHeaders = {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET, POST, OPTIONS, PUT, DELETE",
      "Access-Control-Allow-Headers": "*",
      "Content-Type": "application/json; charset=utf-8"
    };

    // Gestion des requêtes de pré-vol CORS (OPTIONS)
    if (method === "OPTIONS") {
      return new Response(null, { headers: corsHeaders });
    }

    const jsonResponse = (data, status = 200) => {
      return new Response(JSON.stringify(data), {
        status,
        headers: corsHeaders
      });
    };

    // --- 1. MOCK API GRAPH FACEBOOK ---
    if (url.pathname.includes("/oauth/access_token")) {
      return jsonResponse({
        access_token: "EAAB_ghostvr_facebook_mock_token",
        token_type: "bearer",
        expires_in: 3600000
      });
    }

    if (url.pathname.includes("/me") || url.pathname.startsWith("/v2.") || url.pathname.startsWith("/v3.")) {
      return jsonResponse({
        id: "100000000000000",
        name: "GhostVR User",
        first_name: "GhostVR",
        last_name: "User",
        email: "ghostvr@pamplemouche.com",
        picture: {
          data: {
            url: "https://ghostvr.pamplemouche.com/avatar.png",
            is_silhouette: false
          }
        }
      });
    }

    // --- 2. ENDPOINT LOGIN OCULUS ---
    if (url.pathname.endsWith("/oculus/login") || url.pathname.endsWith("/login")) {
      return jsonResponse({
        access_token: "OC|100000000000000|ghostvr_token",
        session_key: "ghostvr_session",
        uid: "100000000000000",
        user_id: "100000000000000",
        status: "OK",
        success: true,
        user: {
          id: "100000000000000",
          oculus_id: "100000000000000",
          fbid: "100000000000000",
          name: "GhostVR User",
          alias: "GhostVR",
          username: "ghostvr",
          email: "ghostvr@pamplemouche.com",
          gender: "N/A",
          locale: "fr_FR",
          timezone: "Europe/Paris",
          presence: "ONLINE",
          is_tos_accepted: true,
          is_eligible: true,
          has_password: true,
          user_exists: true,
          is_pin_set: true,
          is_castability_enabled: true,
          profile_photo: {
            name: "avatar",
            uri: "https://ghostvr.pamplemouche.com/avatar.png",
            width: 360,
            height: 360
          },
          avatar_image: {
            name: "avatar",
            uri: "https://ghostvr.pamplemouche.com/avatar.png",
            width: 360,
            height: 360
          }
        }
      });
    }

    // --- 3. ENDPOINT FEATURES OCULUS ---
    if (url.pathname.endsWith("/oculus/features") || url.pathname.endsWith("/features")) {
      return jsonResponse({
        oculus_is_trusted_user: { enabled: true },
        oculus_horizon_library_redesign2: { enabled: true },
        oculus_gearvr_support: { enabled: true }
      });
    }

    // --- 4. ENDPOINT GRAPHQL OCULUS ---
    if (url.pathname.endsWith("/oculus/graphql") || url.pathname.endsWith("/graphql")) {
      return jsonResponse({
        data: {
          viewer: {
            __typename: "Viewer",
            user: {
              __typename: "User",
              id: "100000000000000",
              oculus_id: "100000000000000",
              fbid: "100000000000000",
              name: "GhostVR User",
              alias: "GhostVR",
              username: "ghostvr",
              email: "ghostvr@pamplemouche.com",
              gender: "N/A",
              locale: "fr_FR",
              timezone: "Europe/Paris",
              presence: {
                __typename: "UserPresence",
                status: "ONLINE",
                activity: null
              },
              is_tos_accepted: true,
              is_eligible: true,
              has_password: true,
              user_exists: true,
              is_pin_set: true,
              is_castability_enabled: true,
              profile_photo: {
                __typename: "ProfilePicture",
                name: "avatar",
                uri: "https://ghostvr.pamplemouche.com/avatar.png",
                width: 360,
                height: 360
              },
              account_creation_time: 1500000000,
              notifications: { __typename: "NotificationConnection", nodes: [] },
              unread_count: 0,
              active_android_entitlements: {
                __typename: "AndroidEntitlementsConnection",
                nodes: []
              }
            },
            friends: { __typename: "UserFriendsConnection", count: 0 },
            friend_requests_received_2: { __typename: "FriendRequestsConnection", count: 0 },
            current_room: { __typename: "RoomConnection", nodes: [] },
            payment_methods: { __typename: "PaymentMethodConnection", nodes: [] },
            all_payment_methods: { __typename: "PaymentMethodConnection", nodes: [] },
            client_preference_data: [],
            reachability_data: [],
            privacy_real_world_identity: { __typename: "PrivacyAudienceOption" },
            privacy_friends: { __typename: "PrivacyAudienceOption" },
            identity_in_search_state: "EVERYONE",
            edges: [],
            linked_accounts_info: {
              __typename: "LinkedAccountsInfo",
              facebook_account: {
                __typename: "FacebookAccount",
                access_token: "EAAB_ghostvr_facebook_mock_token",
                facebook_id: "100000000000000",
                friend_policy: "MUTUAL",
                needs_password_to_unlink: false
              }
            }
          }
        }
      });
    }

    // Fallback par défaut
    return jsonResponse({ status: "OK", message: "GhostVR API Server Active" });
  }
};
