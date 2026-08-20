# Canonical Consolidated Current State — 2026-08-21

## Status

**CURRENT CONSOLIDATION LAYER — READ THIS BEFORE DERIVING A NEW PROJECT THESIS.**

This document exists because the repository accumulated several valid but partially overlapping evidence streams in parallel:

- ChatGPT context architecture / presentation actualization;
- Claude Code repository execution and red-team work;
- WebClaude research / challenge interpretation;
- official Corti documentation reconciliation;
- Frank's implementation repository and clinical workflow evidence;
- night-run design and cumulative state.

The problem is not that those streams disagree. The problem is that later evidence has **superseded individual conclusions inside earlier documents**, while those earlier documents remain valuable provenance.

This file therefore does not delete history. It states the smallest current project picture that survives the whole evidence set.

---

# 1. Repository state at consolidation start

Presentation/context repository:

`danielhfpott/pipelinepresentation`

Current `main` at consolidation start:

`f9d9b221e74dea22463948864311cb8a172cc04f`

That commit is the merge of PR #7, which corrects the medical-coding interpretation using direct `docs.corti.ai` verification.

A previous active context branch, `presentation-context-20260820`, had diverged after PR #7 because it contained newer ChatGPT-side Claude-Code reconciliation/router work while `main` contained the newer coding correction.

To avoid choosing one partial branch as truth, this consolidation line was created directly from current `main`:

`presentation-consolidation-20260821`

The older branch should be treated as historical work-in-progress context, not the current orientation target once this consolidation is merged.

---

# 2. Evidence hierarchy

When claims conflict, use this order unless a task-specific reason justifies otherwise:

1. **actual current code + git history**;
2. **executed runtime/test evidence**;
3. **official current Corti documentation / official supplied hackathon source**;
4. **first-hand clinician/team workflow evidence**;
5. **artifact inspection / screenshots / README claims**;
6. **AI synthesis or interpretation**;
7. **brainstorming / future possibilities**.

The purpose is not to make lower layers unimportant. It is to prevent a polished explanation from outranking contradictory behavior.

Canonical progression:

`source/claim -> literal code/artifact -> execution/runtime -> UX/demoability -> presentation-safe claim`

---

# 3. What the project currently is, at the highest defensible level

The strongest whole-project interpretation today is **not** "a documentation app" and not "an AI safety monitor" in isolation.

The evidence supports a broader project direction around **preserving and using acute clinical context across an encounter rather than treating each sentence/action as a disconnected event**.

The current implemented center of gravity is Frank's mobile-format prehospital web application, which can:

- capture/transcribe clinical speech through multiple Corti transcription modes;
- structure an evolving encounter into clinical documentation;
- retrieve/answer against relevant clinical material in implemented paths;
- maintain an ambient event/context stream;
- apply deterministic safety/omission logic across facts separated in time;
- produce a structured note;
- produce a QR-based handoff artifact;
- use multiple Corti agents / text-generation services underneath those workflows.

The broader team context extends conceptually across:

`dispatch/pre-arrival context -> ambulance encounter -> evolving clinical context -> assistance/action -> documentation -> receiving-side continuity`

But that entire continuum is **not implemented end-to-end** and must not be presented as if it is.

The strongest current principle is:

> **keep enough relevant context alive that later information can be understood in relation to what happened earlier.**

That principle connects the clinical problem, the implementation, the safety beat, and the presentation without requiring unsupported claims about intent.

---

# 4. Frank implementation — strongest verified facts

Last directly executed/inspected Frank-repo commit in the current shared evidence:

`Clinlog/hackathon-ppj @ b1f816b`

Claude Code directly established at that point:

- 251 tracked files;
- 13 edge-function directories;
- 9 application screens;
- 159/159 Vitest tests passing across 16 files;
- anonymisation pattern-net tests passing;
- Vite production build path passing;
- a two-error TypeScript/full-build defect identified;
- a four-line local correction verified with `tsc -b`, complete build, and 159/159 tests still passing;
- the correction was not pushed across Frank's ownership boundary.

Important boundary:

> The cross-agent verification did **not** make a live Corti call with the final demo environment, so live service behavior/latency/accuracy must remain separately evidenced.

Primary source:

`context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md`

---

# 5. From-scratch provenance — strongly settled for Frank's repo

Claude Code unshallowed the full Frank repository history.

Observed:

- 2026-08-18 → 2026-08-19: 12 commits containing 59 Markdown files, 32 PDFs and `.gitignore`; no application-code file types among `.ts`, `.tsx`, `.mjs`, `.js`, `.py`, `.sql`, `.json`;
- 2026-08-20 from ~11:14 → 21:17: 27 commits containing the implementation work.

Therefore:

> **Frank's repository has a git-verifiable from-scratch implementation timeline.**

Large same-day commits have an explainable provenance: corpus data plus a web client written/generated on the day from an earlier no-code specification.

Do not contaminate this clean provenance by importing pre-hackathon application code from Daniel's historical repos into the submitted implementation.

Primary source:

`context/17_RED_TEAM.md` §1.

---

# 6. Product surface — settled correction

Earlier presentation reasoning treated the project as if there were a handset-resident phone application whose state had to be mirrored to preserve authenticity.

Code inspection supersedes that assumption.

Current implementation is:

- Vite + React + TypeScript;
- mobile-format UI;
- no PWA manifest;
- no service worker;
- no Capacitor/Cordova/React-Native wrapper.

Therefore:

> **It is a mobile web application.**

A phone can still be the most compelling physical embodiment of the clinician UX, but it is not technically necessary for fidelity. Laptop browser and phone browser can run the same application bundle/backend path.

Decision rule:

> choose phone vs laptop based on stage reliability and audience value, not because one is "the real code" and the other is not.

Primary source:

`context/16_DEMO_SURFACE_RECONCILIATION.md`.

---

# 7. Stage/audio truth — reliability before symbolism

The main code-evidenced stage fragility is audio capture:

- hard 16 kHz sample-rate guard;
- browser microphone secure-context requirement;
- LAN-IP phone access can violate secure-context requirements;
- Safari/iOS is the higher-risk path in the inspected implementation context.

The Corti briefing explicitly permits preloaded audio while still requiring the system to be shown working.

Current best default unless rehearsal proves otherwise:

> **run the real application with preloaded/synthetic approved audio rather than making live microphone capture the single point of failure.**

This is not faking the demo. It removes unnecessary capture variability while preserving real application processing/interaction.

---

# 8. Fallback truth — interactive demo mode exists

The verified application contains a zero-backend interactive demo-only mode.

Working build invocation observed:

`VITE_DEMO_ONLY=1 npx vite build`

It can preserve interactive UI/QR behavior without Wi-Fi/Corti/Supabase.

Current fallback hierarchy:

1. verified connected/live path;
2. **rehearsed interactive demo-only path**;
3. short recording of the already-verified path only for catastrophic display/runtime failure.

Known defect:

- documentation mentions `npm run build:demo`, but that script does not exist at the inspected commit.

The fallback is only stage-safe once the transition into it has been rehearsed.

---

# 9. Corti product-area coverage — current nuanced state

Supplied hackathon briefing says use at least four of five:

1. dictation;
2. speech-to-text;
3. ambient speech-to-text;
4. text generation;
5. medical coding.

Current verified application tree contains the first four and **does not currently contain medical-coding implementation**.

Closer code inspection found three distinct transcription modes:

- batch/pre-recorded transcript path;
- stateful conversational `/streams`;
- stateless real-time audio-bridge `/transcribe`.

That makes the four-area mapping more defensible than the earliest endpoint-only interpretation suggested.

## Medical coding — latest correction

Early runtime doc: coding absent.

Early red-team interpretation: coding likely unavailable/customer-gated; drop it.

**Current direct-docs correction (PR #7):** current stateless v2 coding is publicly documented at:

`POST https://api.${ENVIRONMENT}.corti.app/v2/tools/coding/`

The legacy per-customer/tuning warning was being applied to the wrong surface.

Existing Frank auth infrastructure already supplies the relevant Bearer + Tenant-Name pattern.

Current truth:

- not implemented in the verified build;
- current API surface is documented;
- tenant entitlement remains a one-call environment test;
- Danish support should be described as **SNOMED CT-DK** based on the current reference, not inferred ICD-10-DK.

Decision:

> **medical coding is optional upside, not a blocker. Test once. If entitlement works and implementation remains tiny, it can become a fifth area without becoming a new demo beat. If it fails or expands, abandon it immediately.**

Primary current source:

`context/17_RED_TEAM.md` §3 as corrected by PR #7.

---

# 10. Keyterms — real opportunity, not current capability

Official Corti docs support keyterms on transcription surfaces.

Code search found no keyterm/vocabulary/bias configuration in the verified build.

Therefore:

**Status: NOT IMPLEMENTED / POSSIBLE LOW-COST OPTIMIZATION.**

Only pursue after the core demo and fallback are rehearsed, and only promote it to implemented after a live test.

---

# 11. Agentic depth — real, but presentation should show consequences

Code inspection indicates seven distinct Corti-agent uses through the current architecture.

This matters because the hackathon explicitly names best use of the agentic framework as a bonus/superlative area.

But seven agents should not become seven demo stops.

Presentation rule:

> **show the clinical effect; bank the architecture for one sentence, a surgical explanatory layer, and Q&A.**

---

# 12. Strongest current presentation spine

The candidate five-minute spine is not frozen, but one structure survives the evidence better than a feature tour:

> **one continuous encounter.**

Why:

- the project meaning is continuity of context;
- restarting/cutting among independent feature demos undermines that meaning;
- one patient story reduces crowd cognitive load;
- several Corti/product capabilities can become visible as consequences of one encounter.

Candidate sequence:

`encounter starts`
`-> speech becomes evolving clinical context/event log`
`-> optional in-context question/retrieval`
`-> safety/context relationship becomes relevant`
`-> alert occurs before a planned action`
`-> encounter stops`
`-> structured note appears`
`-> handoff/QR manifestation`

This is candidate choreography, not yet a frozen executable baseline.

Primary source:

`context/15_FIVE_MINUTE_PRESENTATION_SPINE.md` with corrections in docs 16/17/19.

---

# 13. Load-bearing demo beat — current strongest insight

The strongest demonstrated idea beyond a typical ambient scribe is currently the safety/context beat:

- a fact enters earlier in the encounter;
- other activity happens;
- a later planned drug/action appears;
- deterministic logic evaluates across the encounter;
- a warning can appear before administration/action.

The important property is not the specific dramatic clinical example. It is **temporal/context continuity**.

Presentation-safe wording:

> **A scribe records what you said. This can check what you said earlier against what you are about to do now.**

Specific medication/allergy/protocol content still requires Frank-approved implemented demo data.

---

# 14. `missing` claim — exact safe wording

Do not say:

> Daniel/team doctrine was encoded into Frank's rule engine.

That would infer implementation intent from later conceptual resonance.

Use:

> **The rule engine checks for what's missing, not just what's wrong.**

The wider "did I do everything I reasonably could?" concept may remain an internal/meta red thread without being presented as causal implementation provenance.

---

# 15. X-ray presentation layer — compressed, not discarded

The X-ray idea remains strong after runtime reconciliation, but not as a navigable architecture tour.

Current best use:

- actual clinician UI remains clean;
- audience sees the same product state;
- one short presentation-only overlay makes an invisible relationship visible;
- overlay disappears immediately.

Best current candidate:

> the safety beat, where the audience otherwise cannot see that the triggering fact was stated much earlier.

Time rule:

> **one X-ray moment, around <=20 seconds, replacing spoken explanation rather than adding a new detour.**

The richer X-ray architecture remains project knowledge/future presentation possibility but should not automatically enter the five-minute run.

---

# 16. Timing — two rehearsable envelopes, not one guessed truth

Supplied Corti transcript says roughly five-minute demo/presentation followed by Q&A.

That supports a ~300-second presentation with ~180 seconds available to the demo after intro/problem/close beats.

A WebClaude interpretation produced a tighter ~135-second demo assumption.

Do not average.

Rehearse two cuts:

- **primary:** ~180-second continuous demo;
- **compressed:** ~135-second continuous demo, dropping lower-priority question/retrieval material before the safety/note/handoff spine.

Stopwatch evidence should eventually replace estimated timing.

---

# 17. What remains external/future and must stay visibly separate

Do not imply current production integration with:

- 112/dispatch audio/data pipeline;
- Epic or another production EHR;
- hospital infrastructure beyond the actual demonstrated handoff artifact;
- longitudinal patient-history systems;
- ceiling microphones / ambient ambulance hardware not actually used in the demo.

These may be meaningful continuation paths.

Correct relationship:

`implemented boundary today -> next boundary this architecture could close`

not:

`future boundary described -> therefore already implemented`.

---

# 18. Whole-team truth remains incomplete

The repository still lacks sufficient grounded current evidence for:

- Mihai's full current contribution/workstream;
- fourth teammate identity/current workstream;
- fourth teammate speaking role;
- final speaker allocation;
- who physically drives the demo;
- who owns submission;
- whether all teammate implementation streams are meant to merge into one submitted repository or be represented another way.

These cannot be solved by AI inference from silence.

They are **human/team reconciliation tasks** before baseline freeze.

---

# 19. Frank clinical sign-off remains necessary

The presentation may use a synthetic clinical case, but exact clinical specifics must come from:

- Frank's approval;
- implemented rule/data tables;
- approved source material where appropriate.

Do not invent a dramatic allergy/drug pairing merely because it makes the story clean.

The mechanism may be verified while the exact stage case is still pending.

---

# 20. Current night-run readiness

The PowerShell/Claude iteration mechanism is structurally established:

`PowerShell driver -> Claude CLI -> NIGHT_RUN.md -> one bounded iteration -> .nightrun/STATE.md -> repeat unless blocked/error`

The night run is **not yet allowed to optimize** because the baseline is not frozen.

This is correct.

The state layer must now be updated because earlier `.nightrun/STATE.md` content predates runtime verification, demo-only discovery, phone/web correction, red-team findings, and PR #7.

The remaining baseline-freeze gates are now much narrower:

1. obtain/check current Frank implementation head versus last verified `b1f816b`;
2. choose exact connected demo path;
3. rehearse interactive fallback;
4. choose phone-browser vs laptop-browser presentation surface from rehearsal;
5. lock synthetic case + Frank sign-off;
6. resolve Mihai/fourth teammate/speaking reality;
7. run 180s and 135s stopwatch rehearsals;
8. decide optional coding entitlement test/addition;
9. record exact baseline commit(s) and then set night-run state to unblocked.

---

# 21. Supersession map

Earlier documents remain valuable, but read these corrections before repeating their conclusions:

| Earlier statement | Current status |
|---|---|
| ~15-minute presentation | **SUPERSEDED** by supplied ~5-minute briefing |
| phone mirroring required to show real app | **SUPERSEDED**: mobile web app; phone is presentation choice |
| no meaningful fallback beyond recording | **SUPERSEDED**: interactive zero-backend demo mode exists |
| medical coding absent therefore probably unavailable | **PARTLY SUPERSEDED**: absent in app, current v2 API documented |
| medical coding should definitely be dropped | **SUPERSEDED**: optional one-test/tiny fifth-area gain |
| Danish coding = ICD-10-DK | **DO NOT USE from current evidence**; PR #7 records SNOMED CT-DK |
| four-of-five product coverage unknown | **SUBSTANTIALLY RESOLVED at code level**; four areas mapped, live final path still needs rehearsal |
| runtime verification unfinished everywhere | **SUPERSEDED**: substantial deterministic execution evidence exists |
| fallback not established | **SUPERSEDED**: interactive demo-only path exists, switch not rehearsed |
| X-ray architecture should be broadly explored during demo | **COMPRESSED**: one surgical moment currently earns time |
| `missing` rule proves Daniel's doctrine was encoded | **REJECTED as intent inference** |
| entrypoint may rely on old context branch | **SUPERSEDED by this consolidation line once merged** |

---

# 22. Current shortest truthful project sentence

If one sentence is needed internally to orient further work without prematurely locking stage copy:

> **We built a prehospital clinical application that keeps context alive across an encounter so Corti-backed documentation and assistance can act on what happened earlier, not just on the latest sentence.**

This sentence is a synthesis, not a slogan contract. It should still be tested against Frank/team recognition and the exact final demo path.

---

# 23. Current immediate priority

The project no longer mainly needs more abstract architecture.

It needs **actualization and baseline freeze**:

`current implementation truth`
`-> exact demo case`
`-> exact connected execution`
`-> exact fallback`
`-> exact presentation surface`
`-> exact timing`
`-> team speaking/sign-off`
`-> freeze baseline`
`-> activate night-run optimization`

New ideas remain welcome, but they must now compete against these last-mile tasks for presentation value.

---

# 24. Rule for all next agents

Do not start another project interpretation from zero.

First ask:

1. What in this canonical state has new evidence changed?
2. Is the new evidence stronger than the evidence behind the current statement?
3. Which exact statement changes?
4. What remains unchanged?
5. Has the new result been written back into the canonical state / night-run state?

That is how the repository stays one project instead of becoming a stack of AI narratives.