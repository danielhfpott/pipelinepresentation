# Claude Code Chat Reconciliation — 2026-08-21

## Status

**HIGH-VALUE EXECUTION / REPOSITORY-INSPECTION SOURCE — RECONCILED, NOT SELF-AUTHENTICATING.**

This file records the substantive findings from the user-supplied Claude Code conversation exported as a large Markdown paste on 2026-08-21.

The chat contains actual shell commands and outputs from Daniel's local VS Code/Claude Code environment, including repository cloning, git-history inspection, build/test execution, code searches, branch/PR operations, and creation of the merged runtime/red-team documents now present in this repository.

The raw chat is a provenance source. The strongest durable evidence from it is the repository history, command output, and resulting merged GitHub artifacts.

---

## 1. Frank repository: direct inspection and execution

Claude Code used Daniel's authenticated `gh` session to access the private repository:

`Clinlog/hackathon-ppj`

At inspected commit:

`b1f816b`

it reported:

- 251 tracked files;
- 13 edge functions;
- 9 application screens;
- substantial implemented areas for ambient capture, safety rules, paediatric dosing, QR, guideline lookup, note structuring, and audio;
- 159 Vitest tests across 16 files passing;
- anonymisation pattern-net tests passing;
- `npx vite build` passing;
- `npm run build` initially failing because of two TypeScript errors;
- a four-line local fix making `tsc -b` and the complete build pass while preserving 159/159 tests.

The build-fix patch was deliberately **not pushed into Frank's repository** because that code lane belongs to Frank/Frank's Claude Code. The result was handed off as measured evidence rather than silently modifying another teammate's code.

This execution layer is already preserved in:

`context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md`

---

## 2. From-scratch provenance: checked against full history

The Claude Code chat later unshallowed the Frank repository and inspected its complete history.

Reported result:

### Before hackathon code day (2026-08-18 to 2026-08-19)

12 commits containing only:

- 59 Markdown files;
- 32 PDF files;
- one `.gitignore`;
- **no application-code file extensions** among `.ts`, `.tsx`, `.mjs`, `.js`, `.py`, `.sql`, or `.json`.

The first commit is explicitly described as a provenance commit with no application code.

### Hackathon implementation day (2026-08-20)

Application code begins at approximately 11:14 and continues through 21:17 across 27 commits.

Important interpretation:

> The from-scratch compliance finding is not merely an assertion in a README. It is supported by the git timeline Claude Code inspected.

Large hackathon-day commits still require a simple truthful explanation if questioned:

- large Danish/English corpus commits are data;
- the large web-client commit was generated/written on the hackathon day from an earlier specification that contained no application code.

Scope guard:

> This provenance verification applies to `Clinlog/hackathon-ppj`. It does not authorize importing prewritten application code from older Daniel repositories or historical hack-prep code into the submission.

The durable red-team record is now:

`context/17_RED_TEAM.md`

---

## 3. Product-surface correction: mobile web app, not native phone package

Claude Code inspected the implementation for PWA/native-wrapper markers and reported:

- no PWA manifest;
- no service worker;
- no Capacitor/Cordova/React-Native wrapper;
- plain Vite/React/TypeScript web application with mobile-format UI.

Therefore the earlier presentation idea needs one precise correction:

> **A phone is a possible and compelling presentation/user surface, but mirroring the phone is not required to preserve functional fidelity.**

The same built web bundle can run in a laptop browser against the same backend.

This changes the role of phone mirroring from:

`required to show the real product`

to:

`optional stage/credibility embodiment of the mobile clinician experience`.

The phone idea remains valid if it improves audience understanding or authenticity, but it must now compete on presentation value and reliability rather than on functional necessity.

The implementation-specific reconciliation is preserved in:

`context/16_DEMO_SURFACE_RECONCILIATION.md`

---

## 4. Actual stage fragility: microphone/runtime environment

Claude Code identified the more important stage constraint as audio capture rather than mirroring:

- hard 16 kHz sample-rate guard;
- secure-context requirements for browser microphone APIs;
- LAN-IP phone access can fail secure-context rules;
- Safari/iOS is specifically a higher-risk browser/device path in the implementation comments/constraints.

Implication:

> Phone-vs-laptop should be decided by rehearsal evidence, not by an architectural assumption.

Preloaded audio is especially valuable because Corti's spoken briefing explicitly permits it and it removes microphone/sample-rate/environment variability from the judged path.

---

## 5. Demo-only implementation is stronger than a video fallback

Claude Code inspected the demo path and reported a genuine interactive zero-backend demo mode rather than merely a screen recording.

Working invocation reported:

`VITE_DEMO_ONLY=1 npx vite build`

Important current caveat:

- a documented `npm run build:demo` script does not actually exist;
- the complete `npm run build` path still depends on Frank applying the verified TypeScript fix.

This changes the presentation reliability hierarchy:

1. verified live/connected path;
2. interactive demo-only path;
3. screen recording only as a display/catastrophic-stage fallback.

The interactive fallback should itself be rehearsed rather than merely known to exist.

---

## 6. Corti transcription coverage is broader than the first mapping

Code search in the Claude Code session found three distinct transcription surfaces implemented:

1. batch / pre-recorded transcription (`/transcripts` path within interactions);
2. stateful ambient/conversational streaming (`/streams`);
3. stateless real-time dictation (`audio-bridge/v2/transcribe` WebSocket).

This weakens the earlier concern that judges might collapse dictation + STT into one indistinguishable implementation because the build contains genuinely distinct modes.

The exact hackathon rubric interpretation still comes from Corti's briefing, not from endpoint count alone.

---

## 7. Keyterms: unused implementation opportunity

Claude Code searched the application tree and found no current keyterm/vocabulary/bias configuration.

Official Corti documentation separately establishes keyterm support in transcription surfaces.

Therefore:

- keyterms are a real platform capability;
- they are not currently part of Frank's build;
- a keyterm list would primarily be data/configuration rather than inherited prewritten application code;
- it is a candidate small improvement only if it can be tested without distracting from higher-value rehearsal/build tasks.

Do not present keyterms as implemented unless that changes.

---

## 8. Medical coding: preserve the disagreement correctly

Claude Code's red-team document recommended dropping medical coding as an implementation task because the current project already maps to four Corti product areas and coding appeared tenant/customer constrained.

Subsequent `docs.corti.ai` reconciliation found a current documented v2 coding endpoint while older/legacy coding surfaces carry stronger customer-specific wording.

Therefore the current truthful state is **not**:

- "coding is definitely unavailable"; or
- "we should definitely add coding".

The useful current decision is:

> **Medical coding is not a presentation-critical build target unless new evidence shows it can be added cheaply and meaningfully.**

The project already has stronger presentation assets to actualize.

---

## 9. Five-minute timing: preserve two rehearsable envelopes

A WebClaude interpretation treated questions as inside the five-minute total and derived an approximately 135-second demo.

Claude Code returned to the supplied Corti transcript wording:

> approximately five-minute demo, **followed by** a few minutes of questions.

That wording supports Q&A occurring after the five-minute demo.

The correct anti-fragile response is not to average the two interpretations.

Rehearse:

- **primary version:** approximately 180 seconds of actual demo within a five-minute presentation;
- **compressed cut:** approximately 135 seconds of actual demo, with the in-context-question beat removable first.

This makes the presentation resilient to scheduling interpretation without requiring a new conceptual spine.

---

## 10. X-ray overlay: one surgical use currently earns its cost

Claude Code reconciled the phone/X-ray concept against the candidate five-minute spine.

Strongest current synthesis:

- keep the real product/UI as the anchor;
- do not contaminate clinician UX with judge-facing explanations;
- use presentation overlays only where the audience otherwise cannot perceive the mechanism;
- the safety-monitor moment is currently the best candidate.

Why:

The audience can see an alert appear but cannot automatically see that a fact stated much earlier remained in context and was compared with a later planned action.

Therefore a short X-ray moment can make invisible continuity visible.

Current candidate rule:

> **one X-ray moment, likely on the safety beat, replacing narration rather than adding an extra detour.**

This remains a presentation-design hypothesis until rehearsed against the actual UI and stopwatch.

---

## 11. Important claim correction: `missing`

An earlier synthesis connected the rule engine's `missing` category directly to the team's broader "did I do everything I reasonably could?" context doctrine.

Claude Code/WebClaude correctly identified that as an intent/provenance overreach: Frank may have implemented omission checking independently.

Presentation-safe wording:

> **The rule engine checks for what's missing, not just what's wrong.**

The conceptual resonance with the broader project context can remain in synthesis documents, but should not be presented as causal implementation intent without Frank confirming it.

---

## 12. Agentic framework: bank depth, do not feature-tour it

The current build contains seven Corti-agent uses according to code inspection.

This is strong evidence for questions and the agentic-framework bonus/superlative, but presenting seven separate agents inside a five-minute demo would turn the demonstration into a feature tour.

Current presentation principle:

> show the clinical consequence; bank the agentic depth for one sentence, architecture/X-ray detail when earned, and judge questions.

---

## 13. Current unresolved human/team context

Claude Code still could not ground:

- the fourth teammate's actual stream/role;
- Mihai's complete implementation contribution.

These remain whole-team synthesis gaps.

They should be resolved by team context rather than invented by an agent.

---

## 14. Relationship to the night run

This chat materially advances the prerequisites for baseline freeze because it adds:

- implementation/test evidence;
- provenance evidence;
- demo-surface evidence;
- fallback evidence;
- timing compression logic;
- one candidate presentation-critical moment.

But the night run should remain blocked until the actual project/presentation baseline is explicitly frozen.

Before activation, at minimum reconcile:

1. exact live/demo-only execution path;
2. presentation surface choice (laptop browser vs phone-hosted web app mirrored to laptop);
3. clinical scenario and Frank sign-off;
4. Mihai/fourth-teammate contribution/speaking reality;
5. final 180s + 135s run sheets;
6. Corti credential/live-service evidence available at that time.

---

## 15. Evidence hierarchy for this source

Use the Claude Code conversation in this order:

`command/output evidence`
`-> merged runtime/red-team GitHub documents`
`-> Claude Code interpretation`
`-> presentation inference`

Do not reverse that order.

The chat is valuable partly because it contains the commands and outputs that produced the durable evidence, not merely because Claude sounded confident.