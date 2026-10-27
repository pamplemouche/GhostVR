// Exercise the real worker.fetch() against a stub fetch, so the login gate is
// tested on the actual code path rather than a reimplementation.
//
// Run from the repository root:  node tools/tests/test_backend.mjs
import { readFileSync, writeFileSync, mkdtempSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join } from 'node:path';

// Patch global fetch before importing the worker.
let arcBehaviour = 'ok';
globalThis.fetch = async (url, init) => {
  if (String(url).startsWith('https://arc.pamplemouche.com/api/login')) {
    const sent = JSON.parse(init.body);
    if (arcBehaviour === 'ok') {
      return new Response(JSON.stringify({ ok: true, userId: 'u-42', username: sent.username, token: 'tok' }),
        { status: 200, headers: { 'content-type': 'application/json' } });
    }
    return new Response(JSON.stringify({ ok: false }), { status: 401, headers: { 'content-type': 'application/json' } });
  }
  return new Response('{}', { status: 200, headers: { 'content-type': 'application/json' } });
};

// The worker is an ES module with a default export, so it is imported from a
// copy under a temp name rather than evaluated as a string. `store_data.js` is
// imported by the worker, so it is copied alongside it.
const src = readFileSync('src/index.js', 'utf8');
const workerDir = mkdtempSync(join(tmpdir(), 'ghostvr-'));
const workerPath = join(workerDir, 'worker.mjs');
writeFileSync(workerPath, src);
writeFileSync(join(workerDir, 'store_data.js'), readFileSync('src/store_data.js', 'utf8'));
const { default: worker } = await import(workerPath);

// A fresh module instance stands in for "a different Worker isolate". The whole
// point of the session cookie is that state must not depend on which isolate
// answers, so the harness has to be able to switch isolates mid-flow.
const freshIsolate = async () => (await import(`${workerPath}?v=${Math.random()}`)).default;
let activeWorker = worker;

// The real client authenticates with `Authorization: Bearer <access_token>`
// (see OculusAuthorizationInterceptor), not with cookies, so the harness carries
// the token the way the app does. The cookie path is checked separately below.
let bearer = '';

const call = (path, init = {}) => {
  const headers = { ...(init.headers || {}) };
  if (bearer) headers.Authorization = `Bearer ${bearer}`;
  return activeWorker.fetch(
    new Request(`https://ghostvr.pamplemouche.com${path}`, { ...init, headers }),
    {},
  );
};

const form = (obj) => ({
  method: 'POST',
  headers: { 'content-type': 'application/x-www-form-urlencoded' },
  body: new URLSearchParams(obj).toString(),
});

let pass = 0, fail = 0;
const check = (name, cond, extra = '') => {
  if (cond) { pass++; console.log(`  ok   ${name}`); }
  else { fail++; console.log(`  FAIL ${name} ${extra}`); }
};

console.log('\n--- no session: shapes stay valid but no real account ---');
for (const [name, path, init] of [
  ['graphql', '/oculus/graphql?query=viewer{name}', {}],
  ['auth.getSessionForApp', '/oculus/method/auth.getSessionForApp', {}],
  ['pamp/me', '/oculus/pamp/me', {}],
  ['generic oculus', '/oculus/some_unknown_thing', {}],
]) {
  const r = await call(path, init);
  check(`${name} -> 200`, r.status === 200, `got ${r.status}`);
  const body = await r.json();
  const flat = JSON.stringify(body);
  check(`${name} has no fake id`, !flat.includes('100000000000001'), 'leaked canned USER_ID');
  check(`${name} has no canned token`, !flat.includes('ghostvr_session_valid_token'), 'leaked canned ACCESS_TOKEN');
}
{
  const rb = await call('/graphqlbatch', { method: 'POST', body: '[]', headers: {'content-type':'application/json'} });
  check('graphqlbatch -> 200', rb.status === 200, `got ${rb.status}`);
  const rp = await call('/oculus/pamp/me');
  check('pamp/me anonymous', (await rp.json()).authenticated === false, 'reported a session');
  const rs = await call('/oculus/method/auth.getSessionForApp');
  check('sessionForApp token null', (await rs.json()).access_token === null, 'issued a token');
}

console.log('\n--- login rejects bad credentials ---');
arcBehaviour = 'bad';
let r = await call('/oculus/method/auth.login', form({ email: 'someone', password: 'wrong' }));
check('wrong password -> 401', r.status === 401, `got ${r.status}`);
check('wrong password has error_code', (await r.clone().json()).error_code != null);
check('no access_token leaked', !JSON.stringify(await r.json()).includes('OC|'));

console.log('\n--- login rejects missing password ---');
r = await call('/oculus/method/auth.login', form({ email: 'someone' }));
check('no password -> 400', r.status === 400, `got ${r.status}`);

console.log('\n--- login accepts good credentials ---');
arcBehaviour = 'ok';
r = await call('/oculus/method/auth.login', form({ email: 'alice', password: 'pw' }));
check('good login -> 200', r.status === 200, `got ${r.status}`);
const body = await r.json();
// The token is opaque and signed: it must not be a guessable id-based string.
check('access_token present', typeof body.access_token === 'string' && body.access_token.length > 20,
  `got ${JSON.stringify(body.access_token)}`);
check('access_token is opaque', !String(body.access_token).includes('u-42'),
  'token leaks the raw backend user id');
check('identity is the typed pseudo', body.user?.alias === 'alice' || body.viewer?.alias === 'alice',
      JSON.stringify({u: body.user?.alias, v: body.viewer?.alias}));
check('uid is backend user id', body.uid === 'u-42', String(body.uid));
// The client stores this and resends it as a bearer token from then on.
bearer = body.access_token;

console.log('\n--- session now works ---');
r = await call('/oculus/graphql?query=viewer{name}');
check('graphql -> 200 after login', r.status === 200, `got ${r.status}`);
r = await call('/oculus/pamp/me');
const pamp = await r.json();
check('pamp/me authenticated', r.status === 200 && pamp.authenticated === true);
check('pamp/me username', pamp.username === 'alice', JSON.stringify(pamp));

console.log('\n--- logout clears the session ---');
r = await call('/oculus/logout');
check('logout 200', r.status === 200);
// Tokens are stateless, so the server cannot revoke one; the app drops its own
// copy on logout. Clear it here to model that.
bearer = '';
r = await call('/oculus/graphql?query=viewer{name}');
check('graphql -> 200 after logout', r.status === 200, `got ${r.status}`);
check('logout cleared identity', !JSON.stringify(await r.json()).includes('100000000000001'));
r = await call('/oculus/method/auth.getSessionForApp');
check('sessionForApp token null after logout', (await r.json()).access_token === null);

console.log('\n--- avatar and profile-photo paths must be real images ---');
for (const path of ['/assets/avatar.png', '/fb-graph/1/picture', '/photo', '/profile']) {
  const r = await call(path);
  const type = r.headers.get('content-type') || '';
  check(`${path} -> image`, type.startsWith('image/'), `got ${type || 'no content-type'}`);
  const bytes = new Uint8Array(await r.arrayBuffer());
  check(`${path} is PNG`, bytes[0] === 0x89 && bytes[1] === 0x50, `magic ${bytes[0]},${bytes[1]}`);
  check(`${path} not empty`, bytes.length > 50, `only ${bytes.length} bytes`);
}
{
  // The profile payload must point at a URI that actually serves an image.
  const r = await call('/oculus/graphql?query=viewer{profile_photo{uri}}');
  const body = await r.json();
  const uri = body.viewer?.profile_photo?.uri;
  check('viewer profile_photo uri present', typeof uri === 'string' && uri.length > 0, `got ${uri}`);
  const img = await call(new URL(uri).pathname);
  check('that uri serves an image', (img.headers.get('content-type') || '').startsWith('image/'),
    `got ${img.headers.get('content-type')}`);

  // The profile screen's `MyUserProfileResponse.Viewer` deserializes
  // `linked_accounts_info` into `LinkedAccounts`, whose `facebook_account` is
  // an `FBConnectAccount`. The static table also carries this key and wins over
  // the builder, so it has to hold every field the model declares.
  const rLinked = await call('/oculus/graphql?q=' + encodeURIComponent(
    'viewer() { linked_accounts_info { facebook_account { needs_password_to_unlink } } }'));
  const bLinked = await rLinked.json();
  check('linked_accounts_info carries needs_password_to_unlink (FBConnectAccount field)',
    typeof bLinked.viewer?.linked_accounts_info?.facebook_account?.needs_password_to_unlink === 'boolean',
    JSON.stringify(bLinked.viewer?.linked_accounts_info));
}

console.log('\n--- Samsung DI endpoints (setup wizard) ---');
{
  // The policy parser requires rc == 1000 and then reads every field with an
  // unguarded accessor, so a partial body throws instead of failing.
  const r = await call('/v1/quotas');
  const b = await r.json();
  check('policy -> 200', r.status === 200, `got ${r.status}`);
  check('policy rc == 1000', b.rc === 1000, `got ${b.rc}`);
  for (const key of ['rint', 'lgt', 'dom', 'uri', 'bat-uri', 'dq-w', 'oq-w', 'dq-3g', 'oq-3g']) {
    check(`policy has ${key}`, b[key] !== undefined, 'missing key would throw in the parser');
  }
  const d = await call('/app/delete', { method: 'POST' });
  check('app/delete -> rc 1000', (await d.json()).rc === 1000);
  const reg = await call('/logs_v2', { method: 'POST' });
  check('logs_v2 -> rc 1000', (await reg.json()).rc === 1000);
}

console.log('\n--- session survives a change of isolate (the resync loop) ---');
arcBehaviour = 'ok';
bearer = '';
r = await call('/oculus/method/auth.login', form({ email: 'alice', password: 'pw' }));
const loginBody = await r.json();
check('login issues a bearer token', typeof loginBody.access_token === 'string', 'no access_token');
check('token uses the client token shape', /^OC\|[^|]+\|[^|]+$/.test(loginBody.access_token || ''),
  `got ${String(loginBody.access_token).slice(0, 24)}`);
check('token is signed (not the logged-out form)', !/^OC\|[A-Za-z0-9_.-]+\|[A-Za-z0-9_.-]+$/.test(
  (loginBody.access_token || '').split('|').slice(1).join('|')));
bearer = loginBody.access_token;
check('login also sets a cookie for browsers', r.headers.get('Set-Cookie') != null, 'no Set-Cookie');
check('session cookie is HttpOnly', /HttpOnly/i.test(r.headers.get('Set-Cookie') || ''));
{
  // Switch to a brand-new isolate with the module state thrown away. This is
  // exactly where the app lost its session and looped before.
  activeWorker = await freshIsolate();
  const r2 = await call('/oculus/graphql?query=viewer{name}');
  const body2 = await r2.json();
  check('signed in after isolate switch', body2.viewer?.name === 'alice',
    JSON.stringify({ name: body2.viewer?.name }));
  const r3 = await call('/oculus/pamp/me');
  check('pamp/me still authenticated', (await r3.json()).authenticated === true,
    'lost the session across isolates');
  const r4 = await call('/oculus/method/auth.getSessionForApp');
  check('sessionForApp still issues a token', typeof (await r4.json()).access_token === 'string');
}

console.log('\n--- an unsigned / forged token is rejected ---');
{
  const good = bearer;
  bearer = `${good.slice(0, good.lastIndexOf('|'))}|deadbeefdeadbeef`;
  const r5 = await call('/oculus/pamp/me');
  check('tampered signature -> signed out', (await r5.json()).authenticated === false);
  // The client's own logged-out token: same shape, but not one we signed.
  bearer = 'OC|1234|AbCdEf';
  const r6 = await call('/oculus/graphql?query=viewer{name}');
  check('logged-out token -> no identity', (await r6.json()).viewer?.name === '',
    'accepted an unsigned token');
  bearer = good;
}

console.log('\n--- the browser cookie path also authenticates ---');
{
  // Re-login to capture the cookie, then drop the bearer token entirely.
  const rl = await call('/oculus/method/auth.login', form({ email: 'alice', password: 'pw' }));
  const cookie = (rl.headers.get('Set-Cookie') || '').split(';')[0];
  bearer = '';
  activeWorker = await freshIsolate();
  const rc = await activeWorker.fetch(
    new Request('https://ghostvr.pamplemouche.com/oculus/pamp/me', { headers: { Cookie: cookie } }),
    {},
  );
  const cb = await rc.json();
  check('cookie-only request is authenticated', cb.authenticated === true, JSON.stringify(cb));
  check('cookie-only request has the right user', cb.username === 'alice', String(cb.username));
}

console.log('\n--- crash reports are captured, not dropped ---');
{
  // The client's bug reporter posts the stack trace here. The worker must
  // accept it (the client retries forever otherwise) and log it, so a crash on
  // the headset leaves something recoverable in the invocation log.
  const seen = [];
  const original = console.log;
  console.log = (...args) => { seen.push(args.join(' ')); };
  const r = await call('/oculus/report_bug', {
    method: 'POST',
    headers: { 'content-type': 'application/json' },
    body: JSON.stringify({ stack: 'java.lang.NullPointerException at Foo.bar' }),
  });
  const b = await r.json();
  console.log = original;
  check('report_bug accepted', r.status === 200 && b.success === true, JSON.stringify(b));
  check('the stack trace was logged', seen.some((line) => line.includes('NullPointerException')),
    seen.join(' | ').slice(0, 200));
}

console.log('\n--- gatekeepers: the VR shell fetches 133 of them at once ---');
{
  // The shell sends one indexed key per project (`projects[0]=a&projects[1]=b`)
  // and reads `results` positionally with getBoolean(i). A short array throws
  // and leaves every gatekeeper false - the Home menu never appears.
  const gk = [
    'oculus_vrshell_enable_system_utilities',
    'oculus_horizon_feed',
    'oculus_oculus_does_not_exist',
  ];
  const qs = gk.map((p, i) => `projects[${i}]=${p}`).join('&');
  const rf = await call(`/oculus/features?${qs}&access_token=x`);
  const bf = await rf.json();
  check('features answers an envelope', Array.isArray(bf.data) && Array.isArray(bf.data[0].results),
    JSON.stringify(bf));
  check('one boolean per requested project (length must match exactly)',
    bf.data[0].results.length === gk.length,
    `got ${bf.data[0].results?.length}, want ${gk.length}`);
  check('system utilities (the Home menu) is ON', bf.data[0].results[0] === true);
  check('the feed gatekeeper is ON', bf.data[0].results[1] === true);
  check('an unknown gatekeeper is OFF', bf.data[0].results[2] === false);

  // The bracket form the phone app uses must keep working.
  const rb = await call('/oculus/features?projects[]=oculus_horizon_feed');
  const bb = await rb.json();
  check('projects[]= spelling still works', bb.data[0].results[0] === true, JSON.stringify(bb));

  // The phone app's `projects[]` form may repeat the key. `keys()` yields it
  // once per occurrence, so reading it per key returned the values N times and
  // `results` grew to N*N entries; the client zips it positionally and read the
  // duplicates as extra projects.
  const rr = await call('/oculus/features?projects[]=oculus_horizon_feed&projects[]=oculus_oculus_does_not_exist');
  const br = await rr.json();
  check('repeated projects[] does not duplicate results',
    br.data[0].results.length === 2, `got ${br.data[0].results.length}: ${JSON.stringify(br.data[0].results)}`);
  check('repeated projects[] keeps the order', br.data[0].results[0] === true && br.data[0].results[1] === false,
    JSON.stringify(br.data[0].results));

  // Indexed keys must be read in index order, not in query-string order.
  const rq = await call('/oculus/features?projects[1]=oculus_oculus_does_not_exist&projects[0]=oculus_horizon_feed');
  const bq = await rq.json();
  check('indexed projects are ordered by index',
    bq.data[0].results.length === 2 && bq.data[0].results[0] === true && bq.data[0].results[1] === false,
    JSON.stringify(bq.data[0].results));
}

console.log('\n--- graphql: <placeholder> tokens are expanded from query_params ---');
{
  // ApiDispatcher sends the document with `<placeholder>` tokens intact and the
  // values in a sibling `query_params` JSON object. Without expansion the
  // section id was the literal `<category>`, so every page fell back to the
  // whole catalogue and answered all 562 items at once.
  const doc = 'node(<category>) { section_name, all_items.after(<cursor>).first(<count>) { '
    + 'nodes { id, display_name }, page_info { end_cursor, has_next_page } } }';
  const params = (over) => encodeURIComponent(JSON.stringify(over));
  const rp = await call('/oculus/graphql?q=' + encodeURIComponent(doc)
    + '&query_params=' + params({ category: 'games', cursor: '0', count: '20' }));
  const bp = await rp.json();
  const page = bp.node?.all_items;
  check('the section id is resolved (not the literal placeholder)',
    bp.node?.section_name === 'Games', JSON.stringify(bp.node?.section_name));
  check('first(<count>) caps the page', page?.nodes?.length === 20, `got ${page?.nodes?.length}`);
  check('the page is smaller than the whole catalogue', page?.count > page?.nodes?.length,
    `count=${page?.count} page=${page?.nodes?.length}`);
  check('page_info reports more pages', page?.page_info?.has_next_page === true,
    JSON.stringify(page?.page_info));

  const r2 = await call('/oculus/graphql?q=' + encodeURIComponent(doc)
    + '&query_params=' + params({ category: 'games', cursor: '20', count: '20' }));
  const b2 = await r2.json();
  check('after(<cursor>) offsets the page', b2.node?.all_items?.page_info?.start_cursor === '20',
    JSON.stringify(b2.node?.all_items?.page_info));
  const ids1 = new Set((page?.nodes || []).map((n) => n.id));
  check('consecutive pages are disjoint',
    (b2.node?.all_items?.nodes || []).every((n) => !ids1.has(n.id)));

  // The install query carries its arguments in a nested `params` map, which the
  // expansion inlines as JSON; the id has to be found inside it.
  const binDoc = 'app_binary_update(<params>) { new_binary { id, uri, size } }';
  const rbin = await call('/oculus/graphql?q=' + encodeURIComponent(binDoc)
    + '&query_params=' + params({ params: { app_id: page?.nodes?.[0]?.id, installed_version_code: '0' } }));
  const bbin = await rbin.json();
  check('a nested <params> map resolves the app id',
    bbin.app_binary_update?.new_binary?.id === page?.nodes?.[0]?.id,
    JSON.stringify(bbin.app_binary_update?.new_binary));
  check('the nested <params> id yields a real apk uri',
    String(bbin.app_binary_update?.new_binary?.uri || '').endsWith('.apk'),
    String(bbin.app_binary_update?.new_binary?.uri));
}

console.log('\n--- store: the vault catalogue is served ---');
{
  const rSec = await call('/oculus/graphql?q=' + encodeURIComponent(
    'node(games) { section_name, all_items { nodes { id, display_name, latest_supported_binary { uri } } } }'));
  const bSec = await rSec.json();
  const nodes = bSec.node?.all_items?.nodes || [];
  check('games section has items', nodes.length > 0, `got ${nodes.length}`);
  check('items carry a display name', Boolean(nodes[0]?.display_name), JSON.stringify(nodes[0] || {}).slice(0, 200));
  const firstId = nodes[0]?.id;
  check('item ids are prefixed', typeof firstId === 'string' && firstId.startsWith('gv:'), String(firstId));

  // The install URI. The store sends this right before downloading.
  const rBin = await call('/oculus/graphql?q=' + encodeURIComponent(
    `app_binary_update(app_id: ${firstId}) { new_binary { id, uri, size } }`));
  const bBin = await rBin.json();
  const nb = bBin.app_binary_update?.new_binary;
  check('app_binary_update returns a binary', Boolean(nb), JSON.stringify(bBin).slice(0, 200));
  check('the binary uri is a real apk download', /\.apk$/.test(nb?.uri || ''), String(nb?.uri));
  check('the binary uri points at the vault or our mirror',
    /^https:\/\/(vault\.gearvr\.net|ghostvr\.pamplemouche\.com)\//.test(nb?.uri || ''), String(nb?.uri));
  check('the binary declares a size', typeof nb?.size === 'number' && nb.size > 0, String(nb?.size));

  // The PDP asks for the full node shape.
  const rPdp = await call('/oculus/graphql?q=' + encodeURIComponent(
    `node(${firstId}) { id, display_name, latest_supported_binary { uri }, is_viewer_entitled }`));
  const bPdp = await rPdp.json();
  check('PDP node resolves', bPdp.node?.id === firstId, JSON.stringify(bPdp).slice(0, 200));
  check('catalogue items are entitled (so the button says install)', bPdp.node?.is_viewer_entitled === true);

  // `StoreUtils.createStoreItemModel` reads `current_offer.price` without a
  // null check on `current_offer`, so a null here is a NullPointerException
  // while building every tile in the list. The other fields are selected by the
  // list query on the `Application` fragment of a union; a missing one is
  // `undefined` in the Relay store rather than null.
  const rTile = await call('/oculus/graphql?q=' + encodeURIComponent(
    `node(games) { all_items.first(3) { nodes { current_offer { price { formatted } },`
    + ' cinema_video { rating }, term_in_sec, style_theme, required_input_device { tag, name },'
    + ' microphone_usage, developer_filtered_livestreaming_status,'
    + ' livestreaming_audio_hooking_enabled, chromecast_audio_enabled, banner_target { id } } } }'));
  const bTile = await rTile.json();
  const tile = (bTile.node?.all_items?.nodes || [])[0] || {};
  check('a tile carries a non-null current_offer (StoreUtils NPEs otherwise)',
    tile.current_offer !== null && tile.current_offer !== undefined && typeof tile.current_offer.price === 'object',
    JSON.stringify(tile.current_offer));
  check('the offer price is a formatted string', typeof tile.current_offer?.price?.formatted === 'string',
    JSON.stringify(tile.current_offer?.price));
  check('cinema_video is an object, not null', tile.cinema_video !== null && typeof tile.cinema_video === 'object',
    JSON.stringify(tile.cinema_video));
  check('term_in_sec is a number', typeof tile.term_in_sec === 'number', JSON.stringify(tile.term_in_sec));
  check('style_theme is a string', typeof tile.style_theme === 'string', JSON.stringify(tile.style_theme));
  check('required_input_device is present as a key (null is fine)',
    'required_input_device' in tile, JSON.stringify(Object.keys(tile)));
  check('banner_target is present as a key (null is fine)', 'banner_target' in tile,
    JSON.stringify(Object.keys(tile)));
  check('livestreaming flags are booleans',
    typeof tile.livestreaming_audio_hooking_enabled === 'boolean'
      && typeof tile.chromecast_audio_enabled === 'boolean', JSON.stringify(tile));

  // A user node must NOT be swallowed by the store branch.
  const rUser = await call('/oculus/graphql?q=' + encodeURIComponent('node(999) { id, name, alias }'));
  const bUser = await rUser.json();
  check('a non-store node still answers as a user', typeof bUser.node?.name === 'string',
    JSON.stringify(bUser).slice(0, 200));

  // The store pages a section as the user scrolls; `first` must be honoured or
  // the first request pulls the entire section and `has_next_page` lies.
  const rPage = await call('/oculus/graphql?q=' + encodeURIComponent(
    'node(games) { all_items.first(5) { nodes { id }, page_info { end_cursor, has_next_page } } }'));
  const bPage = await rPage.json();
  const pageNodes = bPage.node?.all_items?.nodes || [];
  check('first(5) returns exactly 5', pageNodes.length === 5, `got ${pageNodes.length}`);
  check('page_info says there is a next page',
    bPage.node?.all_items?.page_info?.has_next_page === true,
    JSON.stringify(bPage.node?.all_items?.page_info));

  const cursor = bPage.node?.all_items?.page_info?.end_cursor;
  const rPage2 = await call('/oculus/graphql?q=' + encodeURIComponent(
    `node(games) { all_items.first(5).after(${cursor}) { nodes { id } } }`));
  const bPage2 = await rPage2.json();
  const secondIds = (bPage2.node?.all_items?.nodes || []).map((n) => n.id);
  const firstIds = pageNodes.map((n) => n.id);
  check('the second page is disjoint from the first',
    secondIds.length === 5 && !secondIds.some((id) => firstIds.includes(id)),
    JSON.stringify({ firstIds, secondIds }).slice(0, 300));

  // The store home asks for `viewer { app_store { sections } }`.
  const rHome = await call('/oculus/graphql?q=' + encodeURIComponent(
    'viewer() { app_store { sections { nodes { id, section_name } } } }'));
  const bHome = await rHome.json();
  const sections = bHome.viewer?.app_store?.sections?.nodes || [];
  check('viewer.app_store is served with sections', sections.length > 0,
    JSON.stringify(bHome.viewer?.app_store || {}).slice(0, 200));
  check('the games section is advertised', sections.some((s) => s.id === 'games'),
    JSON.stringify(sections).slice(0, 200));
}

console.log('\n--- OCMS: the library queries carry their arguments in `variables` ---');
{
  // OCMS's own documents, taken verbatim from the decompiled
  // `LibraryMethods.smali`. It sends `doc` + `variables`; the VR app sends
  // `q` + `query_params`. Both have to be understood.
  const UPDATE_DOC = 'query($params: AppBinaryUpdatesArgs!) {app_binary_updates (args: $params) '
    + '{  ... on AppBinaryUpdateList {    updates {      app_id,      new_binary {        '
    + '... on AndroidBinary { id, uri, size,          version_code,          apk_cert_signature,'
    + '          external_signatures,          obb_binary {            ... on OBBBinary { id, uri, size, },'
    + '          },          asset_files {            edges {              node {                '
    + '... on AssetFile { id, uri, size, file_name, is_required, },              },            },          },'
    + '        },      },      patch { id, uri, size,        checksum_hash,        obb_patch {          '
    + '... on AppBinaryPatch { id, uri, size,            checksum_hash,            },        },'
    + '        asset_file_patches {          ... on AppBinaryPatch {            checksum_hash, id, uri, size,'
    + '            source_binary {              ... on AssetFile {                file_name,'
    + '                is_required,              },            },          },        },      },    },  },},}';
  const ENTITLEMENT_DOC = 'query ($machine_id: ID){entitlements: me {  active_android_entitlements '
    + '{    nodes {      grant_reason,      grant_time,      expiration_time,id, last_used, '
    + 'signed_token(machine_id: $machine_id),      item {__typename,id,display_name}      }    }  }}}';

  // A query with a real `<placeholder>` only resolves if `variables` is read:
  // with the placeholder left literal, `nodeIdOf` matches nothing and the
  // section falls back to the whole catalogue instead of paging.
  const PAGED_DOC = 'query($params: GamesArgs!) { node(<category>) { '
    + 'all_items.after(<cursor>).first(<count>) { nodes { id } page_info { end_cursor } } } }';
  const rEnt = await call('/oculus/graphql?doc=' + encodeURIComponent(PAGED_DOC)
    + '&variables=' + encodeURIComponent(JSON.stringify(
      { category: 'games', cursor: '20', count: '20' })));
  const bEnt = await rEnt.json();
  const paged = bEnt.node?.all_items;
  check('OCMS `variables` is read, not just `query_params`',
    paged?.page_info?.start_cursor === '20', JSON.stringify(paged?.page_info));
  check('the paged OCMS answer is one page, not the whole catalogue',
    (paged?.nodes || []).length === 20, `got ${(paged?.nodes || []).length}`);

  // The entitlements query returns the `entitlements` root the model reads,
  // with the account's owned apps in the connection. `LibraryCacheRefresher`
  // drops any entry whose `signed_token` is null, so the library would be empty
  // without one.
  const rEnt2 = await call('/oculus/graphql?doc=' + encodeURIComponent(ENTITLEMENT_DOC)
    + '&variables=' + encodeURIComponent(JSON.stringify({ machine_id: 'test-device' })));
  const bEnt2 = await rEnt2.json();
  const entNodes = bEnt2.entitlements?.active_android_entitlements?.nodes;
  check('the entitlements query answers the `entitlements` root',
    Array.isArray(entNodes), JSON.stringify(bEnt2).slice(0, 160));
  check('the library is populated from the catalogue', (entNodes || []).length > 0,
    `got ${(entNodes || []).length}`);
  check('every entitlement carries a signed_token (a null drops it client-side)',
    (entNodes || []).every((n) => typeof n.signed_token === 'string' && n.signed_token.length > 0),
    JSON.stringify(entNodes?.[0] || {}).slice(0, 200));
  check('expiration_time is null (never expires), not 0 (already expired)',
    (entNodes || []).every((n) => n.expiration_time === null),
    JSON.stringify(entNodes?.[0]?.expiration_time));
  check('every entitlement names a package (getPackageName throws otherwise)',
    (entNodes || []).every((n) => typeof n.item?.latest_supported_binary?.package_name === 'string'
      && n.item.latest_supported_binary.package_name.length > 0),
    JSON.stringify(entNodes?.[0]?.item?.latest_supported_binary || {}).slice(0, 200));
  check('every entitlement id is a store id',
    (entNodes || []).every((n) => typeof n.id === 'string' && n.id.startsWith('gv:')),
    JSON.stringify((entNodes || []).slice(0, 3).map((n) => n.id)));

  // Pick a real catalogue id to ask an update for.
  const rSec = await call('/oculus/graphql?doc=' + encodeURIComponent(
    'query { node(games) { all_items { nodes { id } } } }'));
  const appId = (await rSec.json()).node?.all_items?.nodes?.[0]?.id;
  check('a catalogue id is available to ask an update for',
    typeof appId === 'string' && appId.startsWith('gv:'), String(appId));

  // The library/installer query. The args ride in `variables.params.app_params`,
  // one entry per entitlement, with the id under `app_id`.
  const vars = { params: { app_params: [{ app_id: appId, installed_version_code: '0' }] } };
  const rUp = await call('/oculus/graphql?doc=' + encodeURIComponent(UPDATE_DOC)
    + '&variables=' + encodeURIComponent(JSON.stringify(vars)));
  const bUp = await rUp.json();

  // The model field is `app_binary_updates`; the singular key would deserialize
  // to null and make the installer report SERVER_RESPONSE_ERROR.
  check('app_binary_updates is answered under its own (plural) key',
    bUp.app_binary_updates !== undefined, JSON.stringify(bUp).slice(0, 200));
  check('the singular key is not used for the plural query',
    bUp.app_binary_update === undefined, JSON.stringify(bUp).slice(0, 200));

  const updates = bUp.app_binary_updates?.updates;
  check('updates is an array', Array.isArray(updates), JSON.stringify(updates));
  check('the requested app is answered', updates?.[0]?.app_id === appId, JSON.stringify(updates));
  check('the update carries a real apk uri',
    /\.apk$/.test(updates?.[0]?.new_binary?.uri || ''), String(updates?.[0]?.new_binary?.uri));
  check('the update declares a size',
    typeof updates?.[0]?.new_binary?.size === 'number' && updates[0].new_binary.size > 0,
    String(updates?.[0]?.new_binary?.size));
  check('version_code is a number (the model declares long)',
    typeof updates?.[0]?.new_binary?.version_code === 'number',
    JSON.stringify(updates?.[0]?.new_binary?.version_code));

  // An id the catalogue does not know must not be invented, and must not break
  // the response either.
  const rUnknown = await call('/oculus/graphql?doc=' + encodeURIComponent(UPDATE_DOC)
    + '&variables=' + encodeURIComponent(JSON.stringify(
      { params: { app_params: [{ app_id: 'gv:not-in-the-catalogue' }] } })));
  const bUnknown = await rUnknown.json();
  check('an unknown app id yields an empty updates array',
    Array.isArray(bUnknown.app_binary_updates?.updates)
    && bUnknown.app_binary_updates.updates.length === 0,
    JSON.stringify(bUnknown).slice(0, 200));

  // The singular query must keep answering the singular key - the routing fix
  // must not have swapped the two.
  const rSing = await call('/oculus/graphql?doc=' + encodeURIComponent(
    `app_binary_update(app_id: ${appId}) { new_binary { id, uri, size } }`));
  const bSing = await rSing.json();
  check('the singular app_binary_update still answers its own key',
    bSing.app_binary_update?.new_binary?.id === appId, JSON.stringify(bSing).slice(0, 200));
}

console.log('\n--- logout ---');
r = await call('/oculus/logout');
check('logout 200', r.status === 200);
check('logout expires the cookie', /Max-Age=0/i.test(r.headers.get('Set-Cookie') || ''), 'cookie not cleared');
bearer = '';
activeWorker = await freshIsolate();
r = await call('/oculus/pamp/me');
check('still signed out on a fresh isolate', (await r.json()).authenticated === false);

console.log(`\n${pass} passed, ${fail} failed`);
process.exit(fail ? 1 : 0);
