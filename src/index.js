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
  presence: "OFFLINE",
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
  facebook_account: {
    access_token: "OC|100000000000000|ghostvr_token",
    facebook_id: "100000000000000",
    friend_policy: "MUTUAL",
    needs_password_to_unlink: false
  }
};

const PRIVACY_OPTION = {
  identity_in_search_state: "EVERYONE",
  edges: []
};

// Traitement dynamique des requêtes GraphQL
function handleGraphQLQuery(urlStr) {
  const decodedUrl = decodeURIComponent(urlStr);

  // 1. Mutation Push Token
  if (decodedUrl.includes("AddPushTokenRequest")) {
    return {
      data: {
        add_push_token: {
          token: { id: "push_token_ghostvr" }
        }
      }
    };
  }

  // 2. Query Entitlements (Licences d'applications)
  if (decodedUrl.includes("entitlements")) {
    return {
      data: {
        entitlements: {
          active_android_entitlements: { nodes: [] }
        },
        me: {
          active_android_entitlements: { nodes: [] }
        }
      }
    };
  }

  // 3. Query Linked Accounts
  if (decodedUrl.includes("linked_accounts_info")) {
    return {
      data: {
        viewer: {
          linked_accounts_info: LINKED_ACCOUNTS
        },
        linked_accounts_info: LINKED_ACCOUNTS
      }
    };
  }

  // 4. Query Viewer / Profil complet au démarrage
  return {
    data: {
      viewer: {
        user: {
          ...USER_DATA,
          account_creation_time: 1500000000,
          notifications: { nodes: [] },
          friend_requests_received_2: { count: 0 },
          friends: { count: 0 },
          current_room: { nodes: [] },
          payment_methods: { nodes: [] },
          all_payment_methods: { nodes: [] },
          client_preference_data: [],
          reachability_data: []
        },
        privacy_real_world_identity: PRIVACY_OPTION,
        privacy_current_activity: PRIVACY_OPTION,
        privacy_friends: PRIVACY_OPTION,
        linked_accounts_info: LINKED_ACCOUNTS
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

    // Gestion des avatars
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

    // Feature Flags Oculus
    if (path.includes("features")) {
      return jsonResponse({ data: {}, features: {} });
    }

    // Requêtes GraphQL
    if (path.includes("graphql")) {
      return jsonResponse(handleGraphQLQuery(request.url));
    }

    // Authentification & Login
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
