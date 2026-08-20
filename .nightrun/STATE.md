# Night Run State

blocked: PIPELINE_BASELINE_NOT_FROZEN
iteration: 0
last_updated: 2026-08-21T00:05:00+02:00
baseline_commit: NOT_FROZEN
current_context_branch: presentation-context-20260820
current_context_head_at_audit_start: fe0e229092fcc7037c232e79b1b9190430f45d89
target: NONE
result: WAITING_FOR_PIPELINE_BASELINE

## Current compressed project model

This file is the living synthesis layer consumed by every overnight iteration. It is intentionally present **before activation** so that the shape expected from later iterations is concrete rather than merely described in `NIGHT_RUN.md`.

The underlying code, runtime behavior, source evidence, tests, clinical material, and Git history remain authoritative. This state file summarizes them; it never outranks them.

## Frozen pipeline / demo spine

**NOT FROZEN.**

Current working map lives in:

`context/11_PIPELINE_BASELINE_WORKING_MAP.md`

Do not infer a final pipeline from this placeholder. The team picture is still being reconciled.

## Capability truth map

### RUNNING

- None promoted here yet. Runtime verification for the final demonstrable pipeline has not been completed.

### BUILT

- None promoted here yet without sufficient bounded verification.

### PARTIAL

- Frank's supplied hackathon codebase contains substantial implementation material, but the complete presentation-relevant runtime path has not yet been traced and executed end-to-end by this presentation effort.

### DESIGNED / CANDIDATE

- Broader acute-care/context-continuity interventions remain candidates until reconciled against actual implementation and team intent.

### EXTERNAL

- Direct production EHR/Epic access, dispatch infrastructure, receiving-hospital infrastructure, and other deployment boundaries remain external unless explicit implementation evidence changes this.

### UNKNOWN

- Exact final four-of-five Corti product-area coverage on the live demo path.
- Exact best five-minute demonstrable spine.
- Full fourth-teammate contribution map.
- Complete runtime status of every presentation-critical Frank/Mihai/team capability.

## Corti judging / API coverage

Source-reported Corti briefing is preserved in:

`context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`

Current evidence status before baseline freeze:

- Clinical relevance: **strong source/workflow grounding, final demo mapping not frozen**.
- Corti API breadth: **not yet proven on one end-to-end runtime path**.
- Working prototype: **substantial implementation exists; final live path not yet independently verified by this presentation effort**.
- Insight / ambition beyond ordinary ambient scribe: **many candidate/contextual layers exist; final truthful expression not frozen**.
- Crowd comprehension: **presentation architecture still being distilled**.

## Best known five-minute demo path

**NOT YET FROZEN.**

Candidate field remains:

`incoming/pre-arrival context -> live encounter speech/context -> structured clinical understanding/documentation -> relevant contextual support where actually implemented -> handoff/continuity output`

This is not yet a presentation claim.

## Fallback / backup demo path

NOT YET ESTABLISHED.

## Presentation-safe claims currently supported at source level

- Frank describes a real prehospital workflow in which the physician receives evolving 112-derived context as text rather than direct call audio.
- Frank reports already using dictation/structured output in practice and reports a pre-arrival handoff benefit.
- Corti's spoken briefing, as supplied by Daniel, describes a roughly five-minute demo plus Q&A and requires at least four of five named product areas.
- The presentation/context repository contains a deliberate evidence-status discipline and active multi-agent handoff model.

These are source-level/project-process claims; implementation-specific claims still require code/runtime evidence.

## Claims that must not be made yet

- That the entire candidate acute-care continuum is implemented.
- That any named README/module/folder proves runtime behavior.
- That all four required Corti product areas have been demonstrated end-to-end.
- That direct Epic/EHR/112 production integrations exist.
- That the night run has optimized the project already.
- That the final pipeline baseline has been frozen.

## Current contradictions / uncertainty

- Some older Claude-web research used a B-response target of 25 minutes / historical ~37-minute framing. Current Region H material establishes a 30-minute B target; old 25/37 framing must not be presented as current.
- Claude-generated operating doctrine and Frank's code need continued reconciliation; polished documentation must not override contrary runtime/code behavior.
- The complete Frank-code runtime/demoability audit is still unfinished.

## Latest bounded delta

This is **iteration 0 / pre-night-run preparation**, not an overnight optimization iteration.

Changes made to night-run infrastructure before activation:

- root `NIGHT_RUN.md` exists and defines one bounded iteration;
- `.nightrun/STATE.md` exists and now provides the actual cumulative-state schema;
- the night run remains blocked until the pipeline baseline is frozen;
- the known-good PowerShell sequence is being preserved in GitHub as provenance/source material.

## Evidence produced / referenced

- `NIGHT_RUN.md`
- `context/10_NIGHTRUN_DESIGN_CONTRACT.md`
- `context/11_PIPELINE_BASELINE_WORKING_MAP.md`
- user-supplied `4.txt` known-good PowerShell sequence (original upload SHA-256 recorded separately)

## Files changed in latest pre-run infrastructure correction

- `.nightrun/STATE.md`

## Regression / demo risks currently visible

- Activating the night run before baseline freeze could cause autonomous optimization to redefine rather than improve the project.
- Agents reading `main` do not yet inherit all current branch context until PR #2 is merged and local clones are updated.
- The final runtime/demo path is not yet proven.

## Highest-value remaining optimization frontier

Not optimization yet: **finish the baseline truth map**.

Specifically:

1. finish the assistant/action truth audit;
2. reconcile the newly supplied Claude-web acute-system research with primary/current sources;
3. complete the presentation-relevant implementation/runtime trace;
4. map all teammate contributions;
5. prove Corti product-area coverage;
6. freeze one five-minute demo spine.

## Exact next recommended bounded action

Continue the truth audit and implementation-evidence reconciliation. Do **not** set `blocked: NONE` yet.

## Human/team decision required

None required merely to continue evidence gathering.

A human/team decision **will** be required before baseline freeze if multiple truthful demo spines remain viable.

## Activation note

The PowerShell driver is structurally ready to consume root-level `NIGHT_RUN.md`, but the night run must not begin optimizing product/presentation code until the current pipeline has been created/reconciled and the baseline commit is recorded here.

When ready, update at minimum:

- `blocked: NONE`
- `baseline_commit: <exact commit SHA>`
- `target: <current highest-priority presentation-critical target or AUTO_SELECT_FROM_BASELINE>`
- the frozen pipeline/demo spine and capability truth map above

Then the proven PowerShell driver can start invoking exactly one bounded iteration at a time.