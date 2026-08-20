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
3. `context/12_ASSISTANT_EXECUTION_TRUTH_AUDIT.md`
4. `context/11_PIPELINE_BASELINE_WORKING_MAP.md`
5. `context/03_LIVING_SYNTHESIS.md`
6. `context/14_PRESENTATION_ACTUALIZATION_PHONE_DEMO_PATH.md`
7. `context/15_PRESENTATION_XRAY_OVERLAY_MODE.md`
8. `context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`
9. `context/09_CURRENT_PREHOSPITAL_WORKFLOW_SOURCE.md`
10. `context/05_TEAM_IMPLEMENTATION_EVIDENCE_FRANK.md`
11. `context/06_CLAUDE_BUILD_MATERIAL_RECONCILIATION.md`
12. `context/13_CLAUDE_WEB_CHAT_PROVENANCE_AND_RESEARCH_RECONCILIATION.md`
13. `.nightrun/STATE.md` when night-run/presentation optimization state matters.

Then inspect the exact code/runtime evidence needed for the task.

## Truth rule

Do not treat a filename, README, document title, AI synthesis, teammate statement, or this file itself as runtime proof.

Use the progression:

`source claim -> code evidence -> runtime/test evidence -> UX/demoability -> presentation-safe claim`

Preserve contradictions rather than smoothing them away.

## Current operating state

- The pipeline baseline is **not frozen**.
- The night run is **blocked** until the baseline is frozen.
- The final presentation artifact has **not yet been created**.
- Complete implementation/runtime proof remains unfinished.
- Current presentation actualization work is exploring a persistent real-phone demo with presentation-only X-ray/detail overlays; this remains candidate architecture until the live app/runtime path is verified.
- GitHub is both the collaboration substrate and part of the judged delivery, while the live demo/presentation is the complementary experiential surface.

## Agent handoff rule

If you discover something that materially changes project truth, implementation status, demoability, Corti-rubric coverage, or the presentation spine, write the reconciled result back to GitHub with provenance/status rather than leaving it only in chat.

Do not let a cold-session agent silently start a parallel version of the project.