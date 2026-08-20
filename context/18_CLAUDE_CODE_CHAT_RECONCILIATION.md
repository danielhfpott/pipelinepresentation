# Claude Code Chat Reconciliation — 2026-08-21

## Status

**HIGH-VALUE EXECUTION / REPOSITORY-INSPECTION SOURCE — RECONCILED, NOT SELF-AUTHENTICATING.**

This file records the substantive findings from the user-supplied Claude Code conversation exported as a large Markdown paste on 2026-08-21.

The chat contains actual shell commands and outputs from Daniel's local VS Code/Claude Code environment, including repository cloning, git-history inspection, build/test execution, code searches, branch/PR operations, and creation of runtime/red-team documents now merged into this repository.

The raw chat is a provenance source. Stronger durable evidence is the command/output itself and the resulting GitHub history.

---

## 1. Frank repository: direct inspection and execution

Claude Code used Daniel's authenticated `gh` session to access:

`Clinlog/hackathon-ppj`

Last directly verified implementation commit in this evidence set:

`b1f816b`

Reported/observed during that pass:

- 251 tracked files;
- 13 edge-function directories;
- 9 application screens;
- substantial implementation for ambient capture, safety logic, paediatric dosing, QR, guideline lookup, note structuring and audio;
- 159 Vitest tests across 16 files passing;
- anonymisation pattern-net tests passing;
- `npx vite build` passing;
- `npm run build` initially failing because of two TypeScript errors;
- a four-line local fix making `tsc -b` and the complete build pass while preserving 159/159 tests.

The build-fix patch was deliberately **not pushed into Frank's repository** because that implementation lane belongs to Frank / Frank's Claude Code.

Primary durable execution record:

`context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md`

---

## 2. From-scratch provenance: checked against full history

Claude Code unshallowed the Frank repository and inspected its complete history.

Reported result:

### 2026-08-18 to 2026-08-19

12 commits containing:

- 59 Markdown files;
- 32 PDFs;
- one `.gitignore`;
- no `.ts`, `.tsx`, `.mjs`, `.js`, `.py`, `.sql`, or `.json` application-code files.

### 2026-08-20 implementation day

Application code begins at approximately 11:14 and continues through 21:17 across 27 commits.

Therefore the from-scratch finding is supported by a git timeline, not merely README wording.

Large hackathon-day commits still need a simple truthful explanation if questioned:

- large Danish/English corpus commits are data;
- the large web-client commit was written/generated on hackathon day from an earlier specification that contained no application code.

Scope guard:

> This provenance verification applies to `Clinlog/hackathon-ppj`. Do not import pre-hackathon application code from historical repositories into the submission and then assume this provenance finding still applies.

Primary durable red-team record:

`context/17_RED_TEAM.md`

---

## 3. Product-surface correction: mobile web app, not native phone package

Claude Code inspected the implementation for native/PWA markers and reported:

- no PWA manifest;
- no service worker;
- no Capacitor/Cordova/React-Native wrapper;
- plain Vite/React/TypeScript web application with mobile-format UI.

Therefore:

> **A phone is a possible and potentially compelling presentation surface, but phone mirroring is not required for functional fidelity.**

The same application bundle can run in a laptop browser against the same backend.

Phone mirroring changes from:

`required to show the real product`

to:

`optional stage/credibility embodiment of the clinician-facing mobile experience`.

Choose phone vs laptop by rehearsal reliability and presentation value.

Primary implementation-specific reconciliation:

`context/16_DEMO_SURFACE_RECONCILIATION.md`

---

## 4. Actual stage fragility: microphone/runtime environment

Code inspection identified audio capture as a more important stage constraint than mirroring:

- hard 16 kHz sample-rate guard;
- secure-context requirements for browser microphone APIs;
- LAN-IP phone access can fail secure-context requirements;
- Safari/iOS is a higher-risk browser/device path in the inspected implementation context.

Preloaded audio is explicitly permitted by the supplied Corti briefing.

Current principle:

> **Phone-vs-laptop and live-mic-vs-preloaded must be decided by rehearsal evidence, not symbolic architecture assumptions.**

---

## 5. Demo-only implementation is stronger than a video fallback

Claude Code inspected a genuine interactive zero-backend demo mode.

Verified working build invocation at the inspected commit:

`VITE_DEMO_ONLY=1 npx vite build`

Caveats:

- a documented `npm run build:demo` script does not actually exist;
- the complete `npm run build` path still depends on Frank applying/otherwise resolving the verified TypeScript fix.

Current reliability hierarchy:

1. verified connected/live application path;
2. interactive zero-backend demo-only path;
3. screen recording only for catastrophic display/runtime failure.

The fallback switch itself must be rehearsed.

---

## 6. Corti transcription coverage is broader than the first mapping

Code search found three distinct implemented transcription surfaces:

1. batch/pre-recorded transcript path;
2. stateful ambient/conversational `/streams` path;
3. stateless real-time audio-bridge `/transcribe` WebSocket.

This materially weakens the early concern that dictation and speech-to-text might look like one undifferentiated capability.

Rubric interpretation still comes from Corti's briefing, not endpoint counting alone.

---

## 7. Keyterms: real Corti capability, unused in current build

Claude Code found no current keyterm/vocabulary/bias configuration in the application tree.

Official Corti documentation separately establishes keyterm support.

Status:

**AVAILABLE PLATFORM CAPABILITY / NOT CURRENTLY IMPLEMENTED IN THE VERIFIED BUILD.**

Potentially useful only after the core demo/fallback is rehearsed and only if it can be live-tested cheaply.

---

## 8. Medical coding — corrected after direct docs verification

The Claude Code conversation initially moved through three states:

1. implementation inspection: medical coding absent from Frank's tree;
2. WebClaude relay: coding might be customer-gated and therefore not worth pursuing;
3. **direct `docs.corti.ai` verification: the current stateless v2 coding surface is documented without the legacy per-customer/tuning limitation.**

PR #7 merged that correction into `main`.

Current official-docs-backed endpoint recorded in the repository:

`POST https://api.${ENVIRONMENT}.corti.app/v2/tools/coding/`

Auth requirements match the existing Corti bearer-token + tenant-header pattern already present in Frank's shared auth helper.

Important nuance:

- coding is **absent from the currently verified application**;
- the endpoint is **documented as available in the current API**;
- actual hackathon-tenant entitlement remains an environment fact to test;
- Danish support cited by the current reference is **SNOMED CT-DK**, not an inferred ICD-10-DK claim.

Current decision:

> **Coding is an optional small fifth-area gain, not a blocker. Test entitlement once; if it works and implementation cost stays tiny, it can be added without becoming a separate demo beat. If it fails or expands, abandon it immediately.**

This supersedes the earlier statement in this reconciliation that medical coding should simply remain a non-action.

Primary current source:

`context/17_RED_TEAM.md` §3 as corrected by merged PR #7.

---

## 9. Five-minute timing: preserve two rehearsable envelopes

The supplied Corti transcript says approximately five-minute demo **followed by** questions, supporting Q&A after the five-minute presentation/demo.

A WebClaude interpretation produced a tighter approximately 135-second demo assumption.

Do not average them.

Rehearse:

- primary ~180-second demo segment within the five-minute presentation;
- compressed ~135-second cut, dropping lower-priority content first.

All durations remain hypotheses until stopwatch rehearsal.

---

## 10. X-ray overlay: one surgical use currently earns its cost

Current strongest reconciliation:

- keep the actual product/UI as anchor;
- never contaminate clinician UX with judge-facing explanation;
- use an overlay only where the audience cannot infer the mechanism from the UI;
- the safety/context moment is the strongest current candidate.

A short X-ray can reveal that an earlier fact remained active in context and became relevant to a later planned action.

Candidate rule:

> **one short X-ray moment replacing narration rather than adding a detour.**

Still a presentation hypothesis until rehearsed.

---

## 11. Claim correction: `missing`

Do not say that Frank intentionally encoded Daniel's broader context-architecture doctrine into the rule engine unless Frank confirms that intent.

Presentation-safe wording:

> **The rule engine checks for what's missing, not just what's wrong.**

Conceptual resonance may remain in internal synthesis; causal implementation intent may not be invented.

---

## 12. Agentic framework: bank depth, do not feature-tour it

Code inspection indicates seven Corti-agent uses.

That is useful rubric/Q&A depth but not seven separate demo beats.

Current presentation principle:

> show the clinical consequence; mention agentic depth concisely; keep exact agent architecture available for Q&A or a surgical explanatory layer.

---

## 13. Unresolved human/team context

Still not grounded in this evidence stream:

- Mihai's complete current contribution;
- fourth teammate identity/workstream/speaking role;
- final presentation ownership per beat.

These must be resolved from team reality, not agent inference.

---

## 14. Relationship to the night run

This chat materially advances baseline readiness through:

- implementation/test evidence;
- provenance evidence;
- demo-surface evidence;
- fallback evidence;
- timing compression logic;
- one strong presentation-critical X-ray candidate;
- corrected Corti coding interpretation.

The night run still must not activate until the exact project/presentation baseline is explicitly frozen.

Before activation, reconcile at minimum:

1. exact connected demo path;
2. rehearsed interactive fallback;
3. laptop browser vs phone-hosted browser presentation choice;
4. exact synthetic/approved clinical case and Frank sign-off;
5. Mihai/fourth-teammate contribution/speaking reality;
6. final 180s + 135s run sheets;
7. any current Frank-repo changes beyond the last directly verified `b1f816b` commit;
8. optional coding entitlement test if the team still wants the fifth area.

---

## 15. Evidence hierarchy for this source

Use:

`command/output evidence`
`-> merged GitHub runtime/red-team documents`
`-> Claude Code interpretation`
`-> presentation inference`

Do not reverse that order.