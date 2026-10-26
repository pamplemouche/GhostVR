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
// copy under a temp name rather than evaluated as a string.
const src = readFileSync('src/index.js', 'utf8');
const workerPath = join(mkdtempSync(join(tmpdir(), 'ghostvr-')), 'worker.mjs');
writeFileSync(workerPath, src);
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
