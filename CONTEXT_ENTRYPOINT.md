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
5. `context/17_WEBCLAUDE_STATUS_AND_CORTI_DOCS_RECONCILIATION.md`
6. `context/15_FIVE_MINUTE_PRESENTATION_SPINE.md`
7. `context/12_ASSISTANT_EXECUTION_TRUTH_AUDIT.md`
8. `context/11_PIPELINE_BASELINE_WORKING_MAP.md`
9. `context/03_LIVING_SYNTHESIS.md`
10. `context/14_PRESENTATION_ACTUALIZATION_PHONE_DEMO_PATH.md`
11. `context/15_PRESENTATION_XRAY_OVERLAY_MODE.md`
12. `context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`
13. `context/09_CURRENT_PREHOSPITAL_WORKFLOW_SOURCE.md`
14. `context/05_TEAM_IMPLEMENTATION_EVIDENCE_FRANK.md`
15. `context/06_CLAUDE_BUILD_MATERIAL_RECONCILIATION.md`
16. `context/13_CLAUDE_WEB_CHAT_PROVENANCE_AND_RESEARCH_RECONCILIATION.md`
17. `.nightrun/STATE.md` when night-run/presentation optimization state matters.

Then inspect the exact code/runtime evidence needed for the task.

## Why these files are high priority

`context/16_THIS_CHAT_FORENSIC_RECONSTRUCTION_AND_SYNTHESIS.md` captures the current thread's combined contribution to:

- night-run purpose/mechanics;
- GitHub-as-shared-memory rules;
- branch/context-drift prevention;
- assistant execution truth auditing;
- phone-first live presentation actualization;
- functionality-neutral phone mirroring/control;
- persistent live phone state across scene switches;
- presentation-only X-ray/detail overlays;
- the distinction between project truth and later judging/rubric optimization.

`context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md` is now the strongest direct implementation/test evidence currently present in this presentation repository for Frank's build. It records what was actually inspected/executed and what remains unobserved.

`context/17_WEBCLAUDE_STATUS_AND_CORTI_DOCS_RECONCILIATION.md` reconciles the newest WebClaude interpretation against that runtime evidence and current official `docs.corti.ai` material. It is the current bridge between implementation reality, Corti platform truth, and presentation compression.

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
- Frank's deterministic implementation layers now have substantial direct runtime/test evidence, including 159/159 tests passing in Claude Code's verification; live Corti execution still requires separate evidence.
- A candidate approximately five-minute spine now exists and centers one continuous encounter rather than a feature tour.
- Current presentation actualization is converging on a persistent real-phone demo with presentation-only X-ray/detail overlays used selectively rather than as an exploratory flow.
- Official Corti docs now form a primary technical source for STT, `/streams`, keyterms, audio events, agentic framework, text generation, and medical coding capability semantics.
- Whole-team mapping, exact phone/UI live path, and final demo choreography still need reconciliation before baseline freeze.
- GitHub is both the collaboration substrate and part of the judged delivery, while the live demo/presentation is the complementary experiential surface.

## Agent handoff rule

If you discover something that materially changes project truth, implementation status, demoability, Corti-rubric coverage, or the presentation spine, write the reconciled result back to GitHub with provenance/status rather than leaving it only in chat.

Do not let a cold-session agent silently start a parallel version of the project.