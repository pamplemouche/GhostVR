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

const call = (path, init = {}) =>
  worker.fetch(new Request(`https://ghostvr.pamplemouche.com${path}`, init), {});

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
check('access_token present', typeof body.access_token === 'string' && body.access_token.includes('u-42'));
check('identity is the typed pseudo', body.user?.alias === 'alice' || body.viewer?.alias === 'alice',
      JSON.stringify({u: body.user?.alias, v: body.viewer?.alias}));
check('uid is backend user id', body.uid === 'u-42', String(body.uid));

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
r = await call('/oculus/graphql?query=viewer{name}');
check('graphql -> 200 after logout', r.status === 200, `got ${r.status}`);
check('logout cleared identity', !JSON.stringify(await r.json()).includes('100000000000001'));
r = await call('/oculus/method/auth.getSessionForApp');
check('sessionForApp token null after logout', (await r.json()).access_token === null);

console.log(`\n${pass} passed, ${fail} failed`);
process.exit(fail ? 1 : 0);
