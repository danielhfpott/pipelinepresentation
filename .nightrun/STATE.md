# Night Run State

blocked: PIPELINE_BASELINE_NOT_FROZEN
iteration: 0
last_updated: 2026-08-21T00:52:00+02:00
baseline_commit: NOT_FROZEN
current_context_branch: presentation-consolidation-20260821
main_head_at_final_checkpoint: bce42c14cd1e8ccd345333436b4762a98b88888b
current_context_head_before_state_update: bce42c14cd1e8ccd345333436b4762a98b88888b
checkpoint: FINAL_PRE_SLEEP_CONSOLIDATION_2026-08-21T00:52+02:00
target: NONE
result: WAITING_FOR_EXACT_BASELINE_FREEZE

## Final pre-sleep consolidation checkpoint

This is the final consolidation checkpoint before Daniel stops active work for this session.

Repository state checked immediately before this update:

- PR #7 merged: current Corti v2 medical-coding interpretation corrected against direct docs evidence;
- PR #8 merged: corrected Claude Code chat reconciliation added;
- PR #9 merged: canonical consolidated state, repaired context router, refreshed night-run state, reconciled five-minute spine, and canonical night-run orientation all landed in `main`;
- latest observed `main` commit: `bce42c14cd1e8ccd345333436b4762a98b88888b`;
- no newer `pipelinepresentation` commit was observed after PR #9 at the moment this checkpoint was written;
- `presentation-consolidation-20260821` was fast-forwarded to that exact `main` head before this state update.

This checkpoint intentionally does **not** freeze the project baseline and does **not** activate the unattended night run.

### Resume rule

On the next human or agent session:

1. fetch/pull current GitHub state and verify whether `main` moved beyond `bce42c14cd1e8ccd345333436b4762a98b88888b`;
2. read `CONTEXT_ENTRYPOINT.md`;
3. read `context/19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md`;
4. read this `.nightrun/STATE.md`;
5. inspect only evidence that changed after this checkpoint;
6. continue from the remaining baseline-freeze gates rather than reconstructing the entire project from older chats/docs.

Do not reopen superseded assumptions such as:

- ~15-minute presentation;
- phone mirroring being required for functional fidelity;
- fallback being only a video;
- medical coding being definitely unavailable;
- `missing` proving Daniel's doctrine was intentionally encoded into Frank's rule engine.

Those questions are already reconciled in the canonical state unless new stronger evidence changes them.

## Purpose of this file

This file is the **cumulative cross-iteration synthesis layer** consumed by the overnight runner.

It is the "icing / all-encompassing layer" over the underlying evidence, not a replacement for that evidence.

Authority remains:

`current code + git history + executed tests/runtime + official sources + first-hand team/clinical evidence`

This state compresses their current relationship so each night-run iteration can improve the same project instead of reconstructing or redefining it.

Canonical current synthesis:

`context/19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md`

## Activation status

**BLOCKED — CORRECTLY.**

The project picture is now substantially reconciled, but the exact baseline that the night run is allowed to optimize has not yet been frozen.

Do not set `blocked: NONE` until the final demo/presentation baseline has:

1. an exact implementation commit/reference;
2. an exact connected demo path;
3. an exact rehearsed fallback path;
4. an exact approved clinical case;
5. an exact presentation surface choice;
6. an exact speaker/timing choreography;
7. a recorded baseline SHA/reference.

## Current high-level project model

The strongest defensible whole-project direction is:

> **preserve clinically relevant context across an acute encounter so later documentation and assistance can use what happened earlier rather than treating the latest sentence as the entire situation.**

Current implemented center of gravity is Frank's mobile-format prehospital web application.

Broader team context reaches conceptually from dispatch/pre-arrival context through ambulance encounter and receiving-side continuity, but the entire continuum is **not** implemented end-to-end.

The audience-facing experience should remain much simpler than the evidence/context architecture underneath it.

## Implementation reference

Last directly executed/inspected Frank repository commit in the shared evidence:

`Clinlog/hackathon-ppj @ b1f816b`

Current status of Frank repo **after** that commit is not independently available to ChatGPT's GitHub connector in this consolidation pass; before baseline freeze, Claude Code/local Git should check whether Frank has pushed newer commits and, if so, re-run only the presentation-critical verification that changed.

## Capability truth map

### RUNNING / LIVE-OBSERVED FOR FINAL DEMO

**Not yet promoted.**

The cross-agent verification environment did not make the final live Corti-connected demo call because live credentials/configuration were not present in that verification environment.

This is an evidence boundary, not a claim that Frank's deployed application cannot call Corti.

### BUILT / DIRECTLY EXECUTION-EVIDENCED

At `b1f816b`, Claude Code established:

- 251 tracked files;
- 13 edge-function directories;
- 9 application screens;
- **159/159 Vitest tests across 16 files passed**;
- anonymisation pattern-net tests passed;
- `npx vite build` succeeded;
- an initially broken full `npm run build` path was diagnosed;
- a four-line local correction made `tsc -b` and the full build pass while preserving 159/159 tests;
- that correction was not pushed across Frank's implementation ownership boundary;
- an **interactive zero-backend demo-only mode** exists and builds;
- batch transcription, stateful ambient streaming and stateless real-time audio-bridge transcription paths exist in code;
- deterministic safety/omission logic, ambient/event-log functionality, structured-note model, QR, guideline/retrieval, audio and paediatric-dosing implementation areas materially exist.

### PARTIAL / FINAL CONNECTED PATH NOT YET VERIFIED

- exact live Corti-connected start-to-finish demo scenario;
- deployed Supabase/service behavior under stage conditions;
- exact QR/receiving-side handoff manifestation used in the final demo;
- current Frank-repo state beyond `b1f816b`;
- any optional new medical-coding addition;
- any keyterms addition;
- final X-ray/presentation overlay implementation;
- measured end-to-end timing.

### DESIGNED / CANDIDATE PRESENTATION LOGIC

- one continuous encounter rather than a feature tour;
- preloaded/synthetic approved audio as safer default input unless live microphone wins in rehearsal;
- safety/context beat as the strongest beyond-scribe moment;
- one short X-ray overlay on that beat, replacing narration rather than adding a detour;
- structured note and handoff output after the encounter;
- 180-second primary demo cut + 135-second compressed cut;
- phone browser or laptop browser chosen by rehearsal evidence, not fidelity assumptions.

### EXTERNAL / FUTURE BOUNDARIES

Unless new code/runtime evidence changes them:

- production 112/dispatch integration;
- production Epic/EHR integration;
- production hospital infrastructure integration;
- longitudinal patient-history access;
- ceiling microphone / ambulance ambient hardware not actually used in the final demo;
- other deployment/institutional integrations discussed as continuation paths.

### HUMAN / TEAM UNKNOWN

- Mihai's complete current contribution/workstream;
- fourth teammate identity/workstream in this shared evidence set;
- fourth teammate speaking role;
- final speaker allocation;
- who physically drives the demo;
- who owns final submission action;
- Frank's sign-off on exact synthetic case/clinical details.

These must not be invented by an overnight agent.

## From-scratch provenance

**STRONGLY VERIFIED FOR FRANK'S REPOSITORY.**

Claude Code inspected the full unshallowed `Clinlog/hackathon-ppj` history.

Observed:

- 2026-08-18 → 2026-08-19: 12 commits; documentation/PDF material plus `.gitignore`; no `.ts`, `.tsx`, `.mjs`, `.js`, `.py`, `.sql`, `.json` application-code files;
- 2026-08-20 ~11:14 → 21:17: 27 commits containing implementation work.

Guard:

> Do not merge historical pre-hackathon application code from other repositories into the submitted implementation and then rely on this provenance conclusion.

## Product / presentation surface truth

The current implementation is a **mobile-format Vite/React web app**, not a native/PWA handset package.

Code inspection found:

- no PWA manifest;
- no service worker;
- no Capacitor/Cordova/React-Native wrapper.

Therefore:

- phone browser can show the real app;
- laptop browser can show the same app bundle/backend path;
- scrcpy/phone mirroring is a presentation embodiment choice, not a functional-fidelity requirement;
- choose by stage reliability and audience value.

## Audio / microphone truth

Current code-evidenced stage risks:

- hard 16 kHz sample-rate guard;
- browser `getUserMedia` secure-context requirement;
- phone-over-LAN-IP can fail secure-context rules;
- Safari/iOS is a higher-risk capture path in the inspected implementation context.

Corti's supplied briefing explicitly allows preloaded audio.

Current default recommendation:

> **use preloaded/synthetic approved audio with the real application unless live capture has been rehearsed enough to justify the additional failure surface.**

## Interactive fallback truth

A genuine zero-backend demo-only application mode exists.

Verified build invocation at the inspected commit:

`VITE_DEMO_ONLY=1 npx vite build`

Known defect:

- documentation names `npm run build:demo`, but that script does not exist at the inspected commit.

Current fallback hierarchy:

1. verified connected/live application path;
2. rehearsed interactive zero-backend demo path;
3. short recording only for catastrophic stage/display failure.

Highest-value reliability task:

> rehearse the transition into demo-only mode before depending on it.

## Corti product-area coverage

Supplied briefing names at least four of five:

1. dictation;
2. speech-to-text;
3. ambient speech-to-text;
4. text generation;
5. medical coding.

Current verified implementation maps the first four.

Three distinct transcription surfaces are present in code:

- batch transcript path;
- stateful ambient `/streams`;
- stateless real-time audio-bridge `/transcribe`.

### Medical coding — latest consolidated status

Medical coding is **not present in the verified application tree**.

Merged PR #7 directly corrected the earlier availability assumption using current Corti documentation:

`POST https://api.${ENVIRONMENT}.corti.app/v2/tools/coding/`

The current stateless v2 surface is documented without the legacy per-customer/tuning wording previously misapplied to it.

Existing Frank auth infrastructure already uses the needed bearer-token / tenant-header pattern.

Environment truth still required:

- test whether the hackathon tenant is entitled.

Decision rule:

> **Optional fifth-area gain, never a blocker. Make one bounded entitlement test. If it works and implementation stays tiny, it may be worth adding after the core demo is secure. If it fails or expands, abandon immediately.**

Current Danish coding wording from the corrected source:

**SNOMED CT-DK.**

Do not repeat an unsupported ICD-10-DK claim.

## Keyterms

Official Corti documentation supports keyterms.

Verified current build contains no keyterm/vocabulary/bias configuration.

Status:

**POSSIBLE LOW-COST OPTIMIZATION / NOT IMPLEMENTED.**

Do not spend core rehearsal time on it. Only test after the baseline demo and fallback work reliably.

## Agentic framework

Code inspection indicates seven Corti-agent uses.

Presentation rule:

> demonstrate the clinical consequence, not seven implementation boxes.

Use agentic depth as:

- one concise clause where useful;
- optional X-ray/architecture evidence;
- prepared Q&A depth.

## Best known five-minute presentation spine

**CANDIDATE — NOT FROZEN.**

Current semantic sequence:

`one encounter begins`
`-> speech/context accumulates`
`-> contextual question/retrieval if time permits`
`-> earlier fact becomes relevant to later planned action`
`-> safety/context alert appears before action`
`-> encounter stops`
`-> structured clinical note appears`
`-> handoff/QR manifestation`

The project meaning is weakened by restarting separate feature demos because the through-line is continuity of context.

### Strongest current demo beat

The safety/context moment is currently load-bearing:

> a fact stated earlier remains available and becomes relevant to a later planned drug/action.

Presentation-safe generic line:

> **A scribe records what you said. This can check what you said earlier against what you are about to do now.**

Exact clinical pairing must be Frank-approved and guaranteed by implemented data/rules.

## `missing` rule wording

Presentation-safe:

> **The rule engine checks for what's missing, not just what's wrong.**

Do **not** claim Frank intentionally encoded Daniel's broader context-architecture doctrine unless Frank confirms that intent.

Internal conceptual resonance is allowed; causal provenance is not invented.

## X-ray layer

Current strongest use:

- exactly one short X-ray moment;
- likely on the safety beat;
- same product state remains visible/continuous;
- overlay reveals why a fact from earlier matters now;
- <= ~20 seconds;
- replaces narration rather than adding a new presentation branch.

The richer X-ray architecture remains valid context but is not automatically part of the five-minute run.

## Timing

Do not average competing interpretations.

Rehearse:

- **primary:** ~180-second continuous demo segment within ~5-minute presentation;
- **compressed:** ~135-second demo cut, dropping lower-priority question/retrieval content before safety/note/handoff.

All durations remain estimates until stopwatch-measured.

## Presentation-safe claims currently supported

- Frank's hackathon repository has a git-verifiable from-scratch implementation timeline.
- The current app is a mobile-format prehospital web application.
- 159/159 tests passed in Claude Code's direct verification at `b1f816b`.
- substantial deterministic implementation layers are real at that commit.
- three distinct Corti transcription modes are represented in code.
- an interactive zero-backend demo-only mode exists.
- safety logic checks across encounter facts and includes missing-information findings.
- the application can structure encounter material into a clinical note.
- the supplied Corti briefing requires at least four of five product areas and permits preloaded audio.
- current Corti docs expose a v2 medical-coding surface; tenant entitlement is a test, not an assumption.

## Claims still prohibited without stronger evidence

- entire dispatch -> ambulance -> hospital continuum is integrated end-to-end;
- production Epic/EHR integration exists;
- production 112 audio/data integration exists;
- final live Corti-connected stage path has already been verified by this synthesis layer;
- phone mirroring is required for product fidelity;
- keyterms are implemented;
- medical coding is implemented;
- hackathon tenant coding entitlement definitely exists;
- final speaker allocation is known;
- final presentation spine is frozen;
- night run has already optimized the project.

## Superseded state from previous version

The previous `.nightrun/STATE.md` said:

- no BUILT capabilities promoted;
- four-of-five coverage unknown;
- fallback not established;
- runtime/demoability audit broadly unfinished;
- main did not yet inherit PR #2.

Those statements are now superseded by repository evidence.

This file replaces them.

## Remaining baseline-freeze gates

1. **Check Frank's current HEAD** against last verified `b1f816b`.
2. **Run the exact intended connected demo path** on the intended presentation machine/environment.
3. **Rehearse the interactive demo-only fallback switch.**
4. **Choose laptop browser vs phone browser/mirroring from rehearsal evidence.**
5. **Lock the synthetic clinical case and Frank's clinical sign-off.**
6. **Resolve Mihai + fourth teammate + speaking/driver reality.**
7. **Stopwatch-rehearse 180s and 135s cuts.**
8. **Optionally make one coding-entitlement test** after core path stability; add coding only if it remains tiny.
9. **Record exact baseline commit/reference(s).**
10. Update this file to `blocked: NONE` only after 1–9 yield one explicit baseline.

## Highest-value next bounded action

Not autonomous optimization yet.

> **Establish the exact executable presentation baseline by checking current Frank HEAD and rehearsing the intended connected path + interactive fallback.**

That is now higher value than additional abstract architecture.

## Human/team decision required before freeze

Yes:

- exact clinical demo case / Frank sign-off;
- team member speaking/driver roles;
- presentation surface if both phone and laptop are technically viable;
- whether optional medical coding is worth the bounded one-test/addition window.

## Activation note

The proven PowerShell driver and root `NIGHT_RUN.md` are structurally ready.

When baseline freeze is real, update at minimum:

- `blocked: NONE`
- `baseline_commit: <exact SHA or explicitly recorded multi-repo baseline>`
- `target: <highest-priority presentation-critical optimization or AUTO_SELECT_FROM_BASELINE>`
- the frozen executable demo spine;
- verified fallback command/path;
- exact case/timing/surface assumptions.

Only then should the night run iterate:

`inspect -> choose one weakness -> make smallest safe improvement -> execute/verify -> update STATE -> commit -> stop`.