document.addEventListener("DOMContentLoaded", () => {
  // 1. Navigation entre onglets
  const navButtons = document.querySelectorAll(".nav-btn");
  const tabContents = document.querySelectorAll(".tab-content");

  navButtons.forEach(btn => {
    btn.addEventListener("click", () => {
      const targetTab = btn.getAttribute("data-tab");

      navButtons.forEach(b => b.classList.remove("active"));
      tabContents.forEach(c => c.classList.remove("active"));

      btn.classList.add("active");
      document.getElementById(targetTab).classList.add("active");
    });
  });

  // 2. Initialisation des logs
  const logs = [
    { method: "GET", path: "/oculus/user_checks?email=noamdasilva18%40gmail.com", status: 200 },
    { method: "GET", path: "/oculus/required_mobile_versions?account_creation=true", status: 200 },
    { method: "GET", path: "/oculus/tos?type=TOS&locale=fr_FR", status: 200 },
    { method: "GET", path: "/oculus/graphql?q=node%281659902747583923%29", status: 200 }
  ];

  const logContainer = document.getElementById("logContainer");

  function renderLogs() {
    logContainer.innerHTML = "";
    logs.forEach(log => {
      const entry = document.createElement("div");
      entry.className = "log-entry";
      entry.innerHTML = `
        <div class="log-header">
          <span>${new Date().toLocaleTimeString()}</span>
          <span style="color: var(--accent-green); font-weight: bold;">${log.status} OK</span>
        </div>
        <div>
          <span class="log-method">[${log.method}]</span>
          <span class="log-path">${log.path}</span>
        </div>
      `;
      logContainer.appendChild(entry);
    });
  }

  document.getElementById("btnSimulate")?.addEventListener("click", () => {
    logs.unshift({
      method: "POST",
      path: "/oculus/graphql?q=auth_login",
      status: 200
    });
    renderLogs();
  });

  document.getElementById("btnClear")?.addEventListener("click", () => {
    logs.length = 0;
    renderLogs();
  });

  document.getElementById("logFilter")?.addEventListener("input", (e) => {
    const filter = e.target.value.toLowerCase();
    document.querySelectorAll(".log-entry").forEach(entry => {
      entry.style.display = entry.textContent.toLowerCase().includes(filter) ? "flex" : "none";
    });
  });

  // 3. Validation JSON
  document.getElementById("btnValidateJson")?.addEventListener("click", () => {
    const status = document.getElementById("jsonStatus");
    try {
      JSON.parse(document.getElementById("jsonEditor").value);
      status.textContent = "✓ Syntaxe JSON valide";
      status.style.color = "var(--accent-green)";
    } catch (err) {
      status.textContent = "✕ Format JSON invalide";
      status.style.color = "var(--accent-red)";
    }
  });

  // 4. Copie du code Worker
  const workerScriptCode = `export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;
    const headers = {
      "Content-Type": "application/json; charset=utf-8",
      "Access-Control-Allow-Origin": "*"
    };

    if (path.includes("user_checks")) {
      return new Response(JSON.stringify({ is_eligible: true, user_exists: true }), { status: 200, headers });
    }
    if (path.includes("required_mobile_versions")) {
      return new Response(JSON.stringify({ is_update_required: false, status: "OK" }), { status: 200, headers });
    }
    if (path.includes("tos")) {
      return new Response(JSON.stringify({ is_tos_accepted: true, success: true }), { status: 200, headers });
    }
    if (path.includes("graphql")) {
      return new Response(JSON.stringify({ data: { viewer: { user: { id: "100000000000000" } } } }), { status: 200, headers });
    }

    return new Response(JSON.stringify({ access_token: "OC|100000000000000|ghostvr_token" }), { status: 200, headers });
  }
};`;

  const workerCodeArea = document.getElementById("workerCode");
  if (workerCodeArea) {
    workerCodeArea.value = workerScriptCode;
  }

  document.getElementById("btnCopyWorker")?.addEventListener("click", () => {
    navigator.clipboard.writeText(workerScriptCode);
    alert("Code du Worker copié dans le presse-papier !");
  });

  // Lancement initial
  renderLogs();
});
