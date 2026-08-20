# Context Entrypoint

## Purpose

This repository is the shared context surface for the hackathon project/presentation effort. Any agent entering the project must orient from the repository before making architectural, implementation, or presentation decisions.

## Branch guard

The current active context branch is:

`presentation-context-20260820`

Before reasoning from repository state, verify the checked-out branch and current commit.

If you are on `main` while this branch contains newer context, do **not** assume `main` represents the latest project understanding.

Do not switch branches, merge, reset, clean, delete, move, rename, overwrite, or force anything automatically if there are local changes. First inspect `git status --short` and preserve the workspace.

## Read order

Read these in order before making large conclusions:

1. `context/00_READ_ME_FIRST.md`
2. `context/05_SOURCE_OF_TRUTH_PROTOCOL.md`
3. `context/16_THIS_CHAT_FORENSIC_RECONSTRUCTION_AND_SYNTHESIS.md`
4. `context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md`
5. `context/16_DEMO_SURFACE_RECONCILIATION.md`
6. `context/17_RED_TEAM.md`
7. `context/18_CLAUDE_CODE_CHAT_RECONCILIATION.md`
8. `context/17_WEBCLAUDE_STATUS_AND_CORTI_DOCS_RECONCILIATION.md`
9. `context/15_FIVE_MINUTE_PRESENTATION_SPINE.md`
10. `context/12_ASSISTANT_EXECUTION_TRUTH_AUDIT.md`
11. `context/11_PIPELINE_BASELINE_WORKING_MAP.md`
12. `context/03_LIVING_SYNTHESIS.md`
13. `context/14_PRESENTATION_ACTUALIZATION_PHONE_DEMO_PATH.md`
14. `context/15_PRESENTATION_XRAY_OVERLAY_MODE.md`
15. `context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`
16. `context/09_CURRENT_PREHOSPITAL_WORKFLOW_SOURCE.md`
17. `context/05_TEAM_IMPLEMENTATION_EVIDENCE_FRANK.md`
18. `context/06_CLAUDE_BUILD_MATERIAL_RECONCILIATION.md`
19. `context/13_CLAUDE_WEB_CHAT_PROVENANCE_AND_RESEARCH_RECONCILIATION.md`
20. `.nightrun/STATE.md` when night-run/presentation optimization state matters.

Then inspect the exact code/runtime evidence needed for the task.

## Why these files are high priority

`context/16_THIS_CHAT_FORENSIC_RECONSTRUCTION_AND_SYNTHESIS.md` captures the current ChatGPT thread's combined contribution to night-run mechanics, GitHub-as-shared-memory rules, branch/context-drift prevention, phone/presentation actualization, X-ray overlays, and the distinction between project truth and later rubric optimization.

`context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md` contains direct implementation/test evidence for Frank's build, including executed test/build findings and explicit limits on what was not live-tested.

`context/16_DEMO_SURFACE_RECONCILIATION.md` corrects the earlier phone premise against code evidence: the current product is a mobile-format Vite web app, not a native/PWA phone package. A phone remains a possible presentation surface, but mirroring is a credibility/embodiment choice rather than a fidelity requirement. It also records microphone/runtime constraints and the interactive zero-backend demo path.

`context/17_RED_TEAM.md` records the from-scratch provenance verification, stage-failure drills, timing ambiguity, claim hygiene, keyterms opportunity, and other high-risk/high-value presentation findings.

`context/18_CLAUDE_CODE_CHAT_RECONCILIATION.md` preserves the latest user-supplied Claude Code conversation as a provenance/execution source and reconciles its strongest command/output evidence into the shared project model.

`context/17_WEBCLAUDE_STATUS_AND_CORTI_DOCS_RECONCILIATION.md` reconciles WebClaude interpretation against runtime evidence and current official `docs.corti.ai` material.

`context/15_FIVE_MINUTE_PRESENTATION_SPINE.md` is a candidate run spine, not a locked script. It should be improved/rejected/reframed as stronger whole-team and UX/runtime evidence arrives.

## Truth rule

Do not treat a filename, README, document title, AI synthesis, teammate statement, or this file itself as runtime proof.

Use the progression:

`source claim -> code evidence -> runtime/test evidence -> UX/demoability -> presentation-safe claim`

Preserve contradictions rather than smoothing them away.

## Current operating state

- The pipeline baseline is **not frozen**.
- The night run is **blocked** until the baseline is frozen.
- A final polished presentation artifact has **not yet been created**.
- Frank's deterministic implementation layers have substantial direct runtime/test evidence, including 159/159 tests passing in Claude Code's verification; live Corti execution remains a separate evidence question.
- Frank's repository history has been inspected as a from-scratch provenance timeline: pre-hackathon commits contain documentation/data material and no application-code file types; application code begins on hackathon day.
- A candidate approximately five-minute spine exists and centers one continuous encounter rather than a feature tour.
- The current product surface is a **mobile-format Vite web app**. A phone-hosted/mirrored presentation remains possible, but laptop browser execution can be the same application bundle/backend path; choose by rehearsal reliability and presentation value.
- A zero-backend interactive demo mode exists and materially strengthens the fallback hierarchy; it still needs deliberate rehearsal.
- The strongest current X-ray candidate is one short safety-context moment that makes invisible longitudinal context visible rather than creating an exploratory architecture tour.
- Three distinct Corti transcription surfaces have been found in code: batch transcription, stateful ambient `/streams`, and stateless real-time audio-bridge transcription.
- Official Corti docs remain a primary technical source for STT, `/streams`, keyterms, audio events, agentic framework, text generation, and coding semantics.
- Medical coding is **not currently a presentation-critical build target**; availability/tenant semantics are nuanced and the current project already has stronger actualization priorities.
- Whole-team mapping, Frank's clinical sign-off for the chosen case, Mihai/fourth-teammate contribution/speaking reality, exact live/demo-only rehearsal path, and final 180s/135s choreography still need reconciliation before baseline freeze.
- GitHub is both the collaboration substrate and part of the judged delivery, while the live demo/presentation is the complementary experiential surface.

## Agent handoff rule

If you discover something that materially changes project truth, implementation status, demoability, Corti-rubric coverage, or the presentation spine, write the reconciled result back to GitHub with provenance/status rather than leaving it only in chat.

Do not let a cold-session agent silently start a parallel version of the project.