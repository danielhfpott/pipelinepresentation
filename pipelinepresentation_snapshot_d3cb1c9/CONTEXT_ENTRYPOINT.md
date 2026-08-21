# Context Entrypoint

## Purpose

This repository is the shared context surface for the hackathon project/presentation effort. Any agent entering the project must orient from the repository before making architectural, implementation, presentation, or night-run decisions.

## Branch guard

The current active consolidation branch is:

`presentation-consolidation-20260821`

It was created from `main` at `f9d9b221e74dea22463948864311cb8a172cc04f` specifically to reunify:

- merged runtime/red-team evidence;
- PR #7's direct Corti medical-coding correction;
- the latest ChatGPT / Claude Code reconciliation;
- the cumulative night-run state.

Before reasoning from repository state, verify the checked-out branch and current commit.

If this consolidation branch contains commits not yet merged to `main`, do **not** assume `main` contains the latest synthesis. Conversely, do not assume this branch outranks later runtime/code evidence merely because it is the active synthesis branch.

Do not delete, reset, clean, move, rename, overwrite, force-push, or otherwise destructively normalize a workspace. Inspect status and preserve local work.

## Read order

Read these in order before making large conclusions:

1. `context/00_READ_ME_FIRST.md`
2. `context/05_SOURCE_OF_TRUTH_PROTOCOL.md`
3. **`context/19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md`**
3b. **`context/20_WAKE_UP_DELTA.md`** — doc 19 predates `presentation/` and `doctrine/`; this is the delta and the morning order
4. `context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md`
5. `context/16_DEMO_SURFACE_RECONCILIATION.md`
6. `context/17_RED_TEAM.md`
7. `context/18_CLAUDE_CODE_CHAT_RECONCILIATION.md`
8. `context/17_WEBCLAUDE_STATUS_AND_CORTI_DOCS_RECONCILIATION.md`
9. `context/15_FIVE_MINUTE_PRESENTATION_SPINE.md`
10. `context/16_THIS_CHAT_FORENSIC_RECONSTRUCTION_AND_SYNTHESIS.md`
11. `context/12_ASSISTANT_EXECUTION_TRUTH_AUDIT.md`
12. `context/11_PIPELINE_BASELINE_WORKING_MAP.md`
13. `context/03_LIVING_SYNTHESIS.md`
14. `context/14_PRESENTATION_ACTUALIZATION_PHONE_DEMO_PATH.md`
15. `context/15_PRESENTATION_XRAY_OVERLAY_MODE.md`
16. `context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`
17. `context/09_CURRENT_PREHOSPITAL_WORKFLOW_SOURCE.md`
18. `context/05_TEAM_IMPLEMENTATION_EVIDENCE_FRANK.md`
19. `context/06_CLAUDE_BUILD_MATERIAL_RECONCILIATION.md`
20. `context/13_CLAUDE_WEB_CHAT_PROVENANCE_AND_RESEARCH_RECONCILIATION.md`
21. `.nightrun/STATE.md` when night-run/presentation optimization state matters.

Then, when the task touches the presentation itself:

- `presentation/continuum.html` — the presentation surface: **Map** (team), **Run sheet** (presenter, with a rehearsal timer), **Stage** (the room, near-wordless). `presentation/README.md` explains the modes and keys.
- `doctrine/` — truth doctrine (tier table now filled from verified evidence), demo script, presentation build, run log, preflight.
  **`doctrine/CLAUDE_PROPOSED_WEBCLAUDE.md` is a proposed replacement for the root `CLAUDE.md` and has deliberately NOT been merged over it.** Two governance models are open; that is Daniel's decision, not an agent's.

Then inspect the exact code/runtime/source evidence needed for the task.

## Why `19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md` is first-class

The repository intentionally preserves older documents, including conclusions later corrected by stronger evidence.

Doc 19 provides the current **supersession map**. It records, among other things:

- ~5-minute format superseding ~15-minute assumptions;
- Frank runtime/test evidence;
- from-scratch git-history verification;
- mobile web app correction to the earlier phone-runtime premise;
- interactive zero-backend fallback discovery;
- three distinct Corti transcription surfaces;
- PR #7's direct-docs correction reopening medical coding as optional upside;
- one-X-ray-moment compression;
- exact safe wording for the `missing` rule;
- remaining human/team/baseline-freeze gaps.

Do not make a cold agent rediscover these corrections by reading documents in chronological order and choosing whichever sounds most confident.

## Truth rule

A filename, README, title, AI synthesis, teammate statement, or this file itself is not runtime proof.

Use:

`source claim -> code/artifact evidence -> runtime/test evidence -> UX/demoability -> presentation-safe claim`

When evidence conflicts, preserve the conflict until stronger evidence resolves it. When stronger evidence does resolve it, record the supersession rather than silently deleting history.

## Current operating state

- The pipeline/presentation baseline is **not yet frozen**.
- The night run remains **blocked** until baseline freeze.
- Frank's implementation has substantial deterministic execution evidence at last verified commit `b1f816b`, including 159/159 tests passing.
- Frank's from-scratch implementation timeline has been verified from full git history.
- The current product surface is a **mobile-format Vite web app**, not a native/PWA phone package.
- Phone vs laptop browser is therefore a presentation/reliability choice, not a functional-fidelity choice.
- A zero-backend interactive demo mode exists; the fallback switch still needs rehearsal.
- Three distinct Corti transcription modes are present in code.
- Four of five stated Corti product areas are mapped in the current build; medical coding is absent from the build but current v2 coding is documented and is optional one-test/tiny-upside work, not a blocker.
- The strongest current demo hypothesis is one continuous encounter with the safety/context beat as the load-bearing beyond-scribe moment.
- One short X-ray overlay on that beat is the strongest current explanatory-layer candidate.
- Preloaded audio is currently the safer default unless live capture proves more valuable in rehearsal.
- Exact connected runtime path, fallback rehearsal, clinical case/sign-off, team speaking map, stopwatch timing, and current Frank-repo head still gate baseline freeze.
- GitHub is the collaboration/submission truth surface; the live demo is the experiential proof surface.

## Agent handoff rule

If new evidence materially changes project truth, implementation status, demoability, Corti coverage, presentation spine, or night-run readiness:

1. identify the exact current statement being changed;
2. record the stronger evidence;
3. preserve what remains true;
4. update the canonical consolidated state and/or `.nightrun/STATE.md`;
5. do not leave the correction only in chat.

Do not let a cold-session agent silently create a parallel project interpretation.