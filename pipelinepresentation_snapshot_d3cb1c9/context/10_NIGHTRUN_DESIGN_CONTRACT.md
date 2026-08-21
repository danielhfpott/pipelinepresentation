# Night Run Design Contract

## Status

This file defines the operating contract for the overnight optimization run. It is **not yet the executable night-run launcher**.

The executable `NIGHTRUN.md` must be derived from the exact PowerShell sequence Daniel will provide from the previous successful overnight run, because that sequence is already proven to work on his laptop. Do not invent a replacement launcher merely because another sequence looks cleaner.

## 1. Core distinction: pipeline first, night run second

The night run must **not invent the project pipeline**.

First, the team must create/reconcile a real inspectable baseline of the project: what the workflow is, what has actually been implemented, what runs, what is partial, what is only designed, which Corti capabilities are genuinely used, and what the final five-minute demo needs to show.

Only after that baseline exists should the night run begin.

The relationship is:

`context + teammate work + code + clinical reality + Corti brief -> reconciled pipeline baseline -> overnight optimization / verification -> morning presentation/submission evidence`

The night run is therefore a controlled optimizer and verifier of an existing pipeline, not an autonomous product designer.

## 2. Proven launcher principle

Daniel has a prior PowerShell command/sequence from a successful overnight run that worked end-to-end while the laptop remained awake through its own Windows settings.

The exact provenance of that prior sequence is secondary to its operational value. The important fact is that it is a **known-good local execution pattern**.

When Daniel supplies the exact TXT/command sequence:

1. preserve its command order and semantics;
2. identify only the minimum substitutions needed for the current project;
3. do not casually refactor the launcher;
4. do not introduce additional dependencies unless required;
5. validate paths and assumptions before execution;
6. produce a dry-readable explanation of what each adapted command will do;
7. keep the original working pattern recoverable for comparison.

## 3. Terminal objective

Everything the overnight run does must materially improve the final hackathon delivery.

The morning state should make it easier to answer:

> **What have we actually done as work, what actually runs, and how can we prove/show it in approximately five minutes?**

The run should optimize for the two linked deliverables:

- the complete public GitHub project/submission;
- the approximately five-minute working demo/presentation plus judge Q&A.

Do not optimize code for its own sake.

## 4. GitHub is the durable source of truth

Chats, Claude/ChatGPT/Codex outputs, screenshots, ZIPs, local repos, README claims, teammate statements, public research, and runtime observations are input streams.

The reconciled status of the project belongs in GitHub.

The night run should read the current source-of-truth context before acting and should write back evidence/results in a form another agent or teammate can inspect later.

No AI agent's confidence outranks observed project reality.

## 5. Evidence hierarchy

Prefer, in descending order of operational confidence:

1. reproducible runtime behavior;
2. passing tests tied to the claimed behavior;
3. direct code-path evidence;
4. clinician/team first-hand workflow evidence;
5. official Corti assignment material / verified external evidence;
6. README/document claims;
7. agent synthesis;
8. brainstorm/intended behavior.

Lower layers may guide investigation but must not silently become higher-layer evidence.

Use the existing status distinctions such as RUNNING / BUILT / DESIGNED and RAW SOURCE / IMPLEMENTED / PARTIAL / DEMOABLE / EXTERNAL / FUTURE / UNVERIFIED / UNKNOWN where useful.

## 6. Presentation-first overnight work

The night run may inspect, test, measure, document, and selectively improve code, but every change must have a direct connection to presentation/submission strength.

High-value overnight work includes:

- establish the actual end-to-end pipeline by running it;
- identify the most reliable demo path;
- verify which Corti product areas are truly exercised;
- map every presentation-relevant capability to evidence;
- trace data that may disappear between backend and UI;
- find silent fallbacks that make failures look successful;
- verify critical runtime/configuration assumptions;
- improve only presentation-critical breakpoints when repair is bounded and low-risk;
- preserve screenshots/logs/output needed as evidence or fallback;
- assemble a concise morning status / remaining blockers / demo instructions;
- identify claims that must be removed or relabeled because evidence is insufficient.

Low-value work includes broad refactors, architectural beautification, dependency churn, unrelated feature expansion, speculative reimplementation, or anything whose value cannot be connected to the final GitHub submission or five-minute demo.

## 7. Do not collapse project reality into one agent-generated thesis

The night run must not decide that one polished framing is suddenly the project.

It should preserve the larger evidence field and reconcile:

- actual acute/pre-hospital workflow;
- Frank's implementation and clinician knowledge;
- Mihai/UI work;
- other teammate contributions;
- Corti's stated judging criteria and API requirement;
- current code/runtime state;
- the presentation-context repository;
- design/roadmap ideas;
- public evidence where necessary.

Candidate narratives may be evaluated, but the pipeline must be inferred from evidence rather than forced into a prewritten pitch.

## 8. Non-destructive safety rule

The overnight process must default to non-destructive actions.

Do **not** delete, overwrite, move, rename, reset, force-clean, or otherwise destroy project material merely to make the workspace cleaner.

Do not use destructive PowerShell cleanup commands unless Daniel explicitly requests the exact destructive action.

If files, branches, datasets, logs, screenshots, or evidence appear stale or conflicting, report and classify them rather than deleting them.

## 9. Change discipline

Before making a code change, the agent should state or record:

- the observed presentation-critical problem;
- the evidence that the problem exists;
- the smallest proposed intervention;
- the regression risk;
- how success will be measured.

After a change:

- run the relevant verification;
- capture the result;
- do not claim more than the verification establishes;
- record remaining uncertainty.

If a problem cannot be safely fixed overnight, downgrade/relabel the presentation claim instead of fabricating success.

## 10. Clinical-content boundary

No agent should invent medication doses, medical synonyms, guideline mappings, contraindications, patient facts, or other clinical content in order to make the demo work.

Clinical content should come from Frank/clinician-approved material or authoritative source material already intentionally incorporated into the project.

The night run may inspect and verify clinical logic; it must not silently author new clinical truth.

## 11. Source-title discipline

Names and titles are identifiers, not semantic proof.

A folder named `rag`, a file named `demo`, a class named `Agent`, a repo title, a screenshot label, or a document heading does not establish implementation, role, or importance by itself.

Use contents and behavior.

## 12. Morning handoff expected

A successful night run should leave a compact, inspectable morning handoff containing at least:

- exact baseline/commit inspected;
- what was run;
- what passed;
- what failed;
- what was changed, if anything;
- what is RUNNING / BUILT / DESIGNED;
- Corti product-area usage evidence;
- best known live-demo path;
- backup-demo/fallback artifacts where available;
- remaining blockers ranked by presentation impact;
- claims that are safe to make;
- claims that must not be made;
- exact next human actions before submission/presentation.

The handoff must make it possible for Daniel and the team to resume without reconstructing the night from terminal scrollback.

## 13. Final executable `NIGHTRUN.md`

Do not finalize the executable launcher until both of these are available:

1. the current pipeline baseline is sufficiently real/inspectable that there is something concrete to optimize; and
2. Daniel has supplied the exact prior PowerShell TXT/command sequence that already succeeded overnight.

Then adapt that sequence conservatively into the current project's `NIGHTRUN.md`, with explicit paths, prompts/instructions, logging, stop conditions, and morning outputs.

**Do not substitute a newly invented PowerShell orchestration pattern when a proven one is available.**
