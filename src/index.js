const HEADERS = {
  "Content-Type": "application/json; charset=utf-8",
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, OPTIONS, PUT, DELETE",
  "Access-Control-Allow-Headers": "*"
};

const USER_DATA = {
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
  profile_photo: { name: "avatar", uri: "https://ghostvr.pamplemouche.com/avatar.png", width: 360, height: 360 },
  avatar_image: { name: "avatar", uri: "https://ghostvr.pamplemouche.com/avatar.png", width: 360, height: 360 }
};

const LINKED_ACCOUNTS = {
  __typename: "LinkedAccountsInfo",
  facebook_account: {
    __typename: "FacebookAccount",
    access_token: "OC|100000000000000|ghostvr_token",
    facebook_id: "100000000000000",
    friend_policy: "MUTUAL",
    needs_password_to_unlink: false
  }
};

const PRIVACY_OPTION = {
  __typename: "PrivacyAudienceOption",
  identity_in_search_state: "EVERYONE",
  edges: []
};

// Traitement dynamique des requêtes GraphQL
function handleGraphQLQuery(urlStr, rawText = "") {
  const combined = (decodeURIComponent(urlStr) + " " + rawText).toLowerCase();

  // 1. Mutation FacebookReauth
  if (combined.includes("facebookreauth") || combined.includes("facebook_reauth")) {
    return {
      data: {
        facebook_reauth: {
          __typename: "FacebookReauthResponsePayload",
          facebook_account: LINKED_ACCOUNTS.facebook_account
        }
      }
    };
  }

  // 2. Mutation Push Token
  if (combined.includes("addpushtoken") || combined.includes("push_token")) {
    return {
      data: {
        add_push_token: {
          __typename: "AddPushTokenResponsePayload",
          token: {
            __typename: "PushToken",
            id: "push_token_ghostvr"
          }
        }
      }
    };
  }

  // 3. Query App Binary Info (Correction : info doit être un tableau)
  if (combined.includes("app_binary_info")) {
    return {
      data: {
        app_binary_info: {
          __typename: "AppBinaryInfoResponse",
          info: []
        }
      }
    };
  }

  // 4. Query App Binary Updates
  if (combined.includes("app_binary_updates")) {
    return {
      data: {
        app_binary_updates: {
          __typename: "AppBinaryUpdateList",
          updates: []
        }
      }
    };
  }

  // 5. Query Entitlements / Me
  if (combined.includes("entitlements") || combined.includes("active_android_entitlements")) {
    return {
      data: {
        entitlements: {
          __typename: "User",
          active_android_entitlements: {
            __typename: "AndroidEntitlementsConnection",
            nodes: []
          }
        },
        me: {
          __typename: "User",
          active_android_entitlements: {
            __typename: "AndroidEntitlementsConnection",
            nodes: []
          }
        }
      }
    };
  }

  // 6. Query Linked Accounts
  if (combined.includes("linked_accounts_info")) {
    return {
      data: {
        viewer: {
          __typename: "Viewer",
          linked_accounts_info: LINKED_ACCOUNTS
        },
        linked_accounts_info: LINKED_ACCOUNTS
      }
    };
  }

  // 7. Query Viewer / Profil complet au démarrage
  return {
    data: {
      viewer: {
        __typename: "Viewer",
        user: {
          __typename: "User",
          ...USER_DATA,
          account_creation_time: 1500000000,
          profile_photo: {
            __typename: "ProfilePicture",
            name: "avatar",
            uri: USER_DATA.profile_photo.uri,
            width: 360,
            height: 360
          },
          avatar_image: {
            __typename: "ProfilePicture",
            name: "avatar",
            uri: USER_DATA.avatar_image.uri,
            width: 360,
            height: 360
          },
          presence: { __typename: "UserPresence", status: "ONLINE", activity: null },
          notifications: { __typename: "NotificationConnection", nodes: [], unread_count: 0 },
          friend_requests_received_2: { __typename: "FriendRequestsConnection", count: 0 },
          friends: { __typename: "UserFriendsConnection", count: 0 },
          current_room: { __typename: "RoomConnection", nodes: [] },
          payment_methods: { __typename: "PaymentMethodConnection", nodes: [] },
          all_payment_methods: { __typename: "PaymentMethodConnection", nodes: [] },
          client_preference_data: [],
          reachability_data: []
        },
        privacy_real_world_identity: PRIVACY_OPTION,
        privacy_current_activity: PRIVACY_OPTION,
        privacy_friends: PRIVACY_OPTION,
        linked_accounts_info: LINKED_ACCOUNTS,
        entitlements: {
          __typename: "User",
          active_android_entitlements: {
            __typename: "AndroidEntitlementsConnection",
            nodes: []
          }
        }
      }
    }
  };
}

function jsonResponse(data, status = 200) {
  return new Response(JSON.stringify(data), { status, headers: HEADERS });
}

async function parseRequestBody(request) {
  if (request.method === "GET" || request.method === "HEAD") return { rawText: "", parsed: {} };
  try {
    const text = await request.text();
    if (!text) return { rawText: "", parsed: {} };
    const contentType = (request.headers.get("content-type") || "").toLowerCase();
    if (contentType.includes("application/json")) {
      try { return { rawText: text, parsed: JSON.parse(text) }; } catch (e) { return { rawText: text, parsed: {} }; }
    }
    if (contentType.includes("application/x-www-form-urlencoded")) {
      const params = new URLSearchParams(text);
      const parsed = {};
      for (const [key, value] of params.entries()) parsed[key] = value;
      return { rawText: text, parsed };
    }
    return { rawText: text, parsed: {} };
  } catch (err) {
    return { rawText: "", parsed: {} };
  }
}

async function sendEmailLog(env, method, path, bodyData, rawText) {
  const apiKey = env.RESEND_API_KEY;
  const destination = env.DESTINATION_EMAIL || "Noam.pamplemouchetech@gmail.com";

  if (!apiKey) return;

  const contentFormatted = Object.keys(bodyData).length > 0 
    ? `<pre style="background: #1e1e1e; color: #d4d4d4; padding: 12px; border-radius: 6px; font-family: monospace;">${JSON.stringify(bodyData, null, 2)}</pre>`
    : `<pre style="background: #1e1e1e; color: #d4d4d4; padding: 12px; border-radius: 6px; font-family: monospace;">${rawText || "Corps vide"}</pre>`;

  const html = `
    <div style="font-family: system-ui, sans-serif; max-width: 600px; margin: 0 auto; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px;">
      <h2 style="color: #2563eb; margin-top: 0;">🚨 Requête GhostVR reçue</h2>
      <p><strong>Heure :</strong> ${new Date().toLocaleTimeString("fr-FR")}</p>
      <p><strong>Méthode :</strong> <code style="background: #edf2f7; padding: 2px 6px; border-radius: 4px;">${method}</code></p>
      <p><strong>Route (Path) :</strong> <code style="background: #edf2f7; padding: 2px 6px; border-radius: 4px;">${path}</code></p>
      <hr style="border: 0; border-top: 1px solid #e2e8f0; margin: 16px 0;" />
      <h3 style="color: #1e293b;">Payload / Corps :</h3>
      ${contentFormatted}
    </div>
  `;

  try {
    await fetch("https://api.resend.com/emails", {
      method: "POST",
      headers: { "Authorization": `Bearer ${apiKey}`, "Content-Type": "application/json" },
      body: JSON.stringify({
        from: "GhostVR <onboarding@resend.dev>",
        to: [destination],
        subject: `[GhostVR] ${method} ${path}`,
        html: html
      })
    });
  } catch (err) {}
}

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname.toLowerCase();

    if (request.method === "OPTIONS") {
      return new Response(null, { status: 204, headers: HEADERS });
    }

    if (path.endsWith(".png") || path.endsWith(".jpg") || path.includes("avatar")) {
      const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100"><rect width="100" height="100" fill="#2d3748"/></svg>`;
      return new Response(svg, { status: 200, headers: { "Content-Type": "image/svg+xml", "Access-Control-Allow-Origin": "*" } });
    }

    const { rawText, parsed: bodyData } = await parseRequestBody(request);

    if (ctx && ctx.waitUntil) {
      ctx.waitUntil(sendEmailLog(env, request.method, path, bodyData, rawText));
    } else {
      sendEmailLog(env, request.method, path, bodyData, rawText);
    }

    if (path.includes("heartbeat")) {
      return jsonResponse({ status: "SUCCESS", presence: "ONLINE" });
    }

    if (path.includes("features")) {
      const requestedProjects = url.searchParams.getAll("projects[]");
      const disabledRoadblocks = [
        "oculus_horizon_enable_terms_of_service",
        "oculus_horizon_qp_privacy_roadblock",
        "oculus_horizon_insufficient_space_warning"
      ];

      const featureResponse = {};
      requestedProjects.forEach(project => {
        featureResponse[project] = !disabledRoadblocks.includes(project);
      });

      featureResponse["oculus_is_trusted_user"] = true;
      featureResponse["oculus_horizon_library_redesign2"] = true;
      featureResponse["horizon_v2"] = true;

      return jsonResponse(featureResponse);
    }

    if (path.includes("graphql")) {
      return jsonResponse(handleGraphQLQuery(request.url, rawText));
    }

    if (path.includes("login") || path.includes("auth") || path.includes("oauth") || path.includes("session")) {
      return jsonResponse({
        access_token: "OC|100000000000000|ghostvr_token",
        session_key: "ghostvr_session",
        uid: "100000000000000",
        user_id: "100000000000000",
        status: "OK",
        success: true,
        user: USER_DATA
      });
    }

    return jsonResponse({ status: "OK", data: {} });
  }
};
