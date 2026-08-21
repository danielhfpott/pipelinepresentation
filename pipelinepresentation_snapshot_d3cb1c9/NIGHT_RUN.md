# NIGHT_RUN.md

## Purpose

This is the exact root-level instruction file consumed by the proven PowerShell night-run driver.

The driver invokes Claude with:

`Read NIGHT_RUN.md and execute exactly one iteration. Issue git commands one at a time, never chained with &&. Then stop.`

Therefore this file defines what **one iteration** means.

The night run does **not** invent the project pipeline. It optimizes, verifies, repairs, and strengthens an already-created and explicitly frozen pipeline/presentation baseline.

Every iteration must also leave behind a better compressed understanding of the whole current project in `.nightrun/STATE.md`.

The loop is therefore:

`implementation/evidence work -> verification -> synthesis -> STATE -> commit -> stop`

not merely:

`change code -> repeat`.

---

## 0. Activation gate — mandatory first read

Before doing anything else, read:

1. `.nightrun/STATE.md`
2. `CONTEXT_ENTRYPOINT.md`
3. `context/19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md`
4. `context/10_NIGHTRUN_DESIGN_CONTRACT.md`

Then follow `CONTEXT_ENTRYPOINT.md` only as deeply as the current target requires.

Do **not** reconstruct the project by reading historical docs chronologically and choosing whichever conclusion sounds most confident. Doc 19 contains the current supersession map; older docs remain evidence/provenance and may contain statements later corrected.

If `.nightrun/STATE.md` contains any value other than:

`blocked: NONE`

then **do not modify product/presentation code**.

Report the blocker, leave the workspace intact, and stop this iteration.

This gate exists because the night run is an optimizer of a frozen baseline, not an autonomous project-definition process.

---

## 1. Terminal objective

Every iteration must strengthen the final Corti hackathon delivery:

1. the public/inspectable GitHub project submission; and
2. the approximately five-minute working presentation/demo plus judge Q&A.

The controlling question is:

> **What have we actually done as work, what actually runs, what matters clinically, and how can we prove/show it clearly in the final judged experience?**

Do not optimize code for its own sake.

---

## 2. Baseline identity is mandatory

When `blocked: NONE`, `.nightrun/STATE.md` must identify the exact baseline being optimized.

At minimum record:

- presentation/context repository baseline commit;
- implementation repository baseline commit if different;
- exact demo path;
- exact fallback path;
- exact clinical/synthetic case assumptions;
- exact presentation surface assumptions;
- exact timing envelope.

If this identity is missing, contradictory, or points at commits that no longer describe the intended demo, set:

`blocked: PIPELINE_BASELINE_NOT_FROZEN`

and stop.

Do not silently choose a new baseline.

---

## 3. One iteration means exactly one bounded improvement cycle

Perform the following sequence **once**, then stop.

### Step A — orient to current state

Read `.nightrun/STATE.md` first.

Treat it as the current compressed project model, not merely a log.

Then read `context/19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md` only to resolve the broader current relationship/supersession context that the state points to.

Inspect:

- current git status;
- checked-out branch;
- current commit;
- recent commits relevant to the frozen baseline.

If a teammate implementation repository is part of the baseline, verify that its current commit has not silently moved past the recorded baseline before changing anything.

Read only the exact code/context/source needed for the current target.

Do not re-derive the entire project every iteration.

### Step B — choose exactly one highest-value presentation-critical target

Choose one bounded target from the current state, prioritizing roughly:

1. broken or unproven final demo path;
2. untested fallback/recovery path;
3. missing evidence for a presentation-critical capability;
4. runtime/code contradiction that could make stage claims misleading;
5. silent fallback that makes failure look like success;
6. missing screenshot/log/backup/handoff artifact required by the presentation;
7. smallest reliability improvement to an already-established demo step;
8. optional Corti/rubric gain **only after** the core demo and fallback are stable;
9. evidence/status documentation that materially prevents claim drift.

Do not choose a target merely because it is technically interesting.

Do not let an optional fifth product area outrank a broken core demonstration.

### Step C — record the problem before changing anything

Before modifying code, establish:

- observed problem;
- exact evidence;
- smallest proposed intervention;
- regression risk;
- exact success test;
- whether this is within the correct teammate/code ownership lane.

If these cannot be stated concretely, do not modify code.

### Step D — perform the smallest safe intervention

Prefer:

- inspection;
- measurement;
- execution;
- tests;
- tracing;
- bounded repair;
- presentation-critical reliability work.

Do not broadly refactor.

Do not redesign the project.

Do not introduce a new architecture because it looks cleaner.

Do not add unrelated features.

Do not invent clinical content.

Do not modify another teammate's implementation lane merely because the fix is obvious unless the baseline/ownership rules explicitly allow it.

### Step E — verify by execution where possible

Prefer evidence in this order:

1. reproducible runtime behavior;
2. passing test tied to the claim;
3. direct code-path evidence;
4. official current Corti/hackathon source for platform/rule semantics;
5. first-hand clinician/team workflow evidence;
6. artifact/README/document claim;
7. AI synthesis;
8. brainstorm/intended behavior.

For clinical workflow facts, first-hand clinician evidence may appropriately outrank generic external interpretation; for Corti API semantics, current official Corti documentation outranks a relayed AI claim.

Reading code is not equivalent to proving it runs.

If verification fails, record the failure plainly.

Never make failure look like success.

### Step F — re-synthesize durable state

Update `.nightrun/STATE.md` after the bounded work.

This is **not just a last-action log**.

Preserve both:

1. **iteration delta** — what this iteration attempted, changed, verified, failed, or learned;
2. **cumulative synthesis** — what the total project/presentation now appears to be after integrating that evidence.

If the iteration materially changes the broader canonical project picture, also update:

`context/19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md`

Do not let STATE and doc 19 silently diverge.

At minimum STATE should maintain:

- blocker status;
- iteration number/timestamp;
- exact baseline/current commit context;
- frozen executable demo spine;
- latest bounded target/result;
- commands/tests actually run;
- files changed;
- evidence produced;
- RUNNING / BUILT / PARTIAL / DESIGNED / EXTERNAL / UNKNOWN capability map;
- Corti product/rubric coverage;
- best live/connected demo path;
- rehearsed fallback path;
- presentation-safe claims;
- claims still prohibited;
- contradictions/uncertainty;
- regression/demo risks;
- highest-value remaining frontier;
- exact next bounded action;
- human/team decision required.

### The all-encompassing-state rule

`STATE.md` is the **icing layer over the cake**:

- code/runtime/evidence remain the cake and authoritative;
- state integrates them into one compact current understanding;
- the next iteration reasons from that synthesis instead of terminal-history archaeology;
- morning handoff can understand both what happened and what it means;
- new evidence may revise the synthesis, but synthesis never overrides contrary evidence.

State should become **more informative, not merely longer**.

Correct stale interpretations in place.

Preserve meaningful unresolved contradictions explicitly.

Do not append hundreds of repetitive mini-reports.

### Step G — commit exactly the verified iteration

If the iteration changed files/state, commit the bounded iteration with a specific message.

Issue git commands one at a time.

Never chain commands with `&&`.

Do not merge branches.

Do not push directly to `main` unless Daniel explicitly changes that rule.

Then stop.

The PowerShell driver will invoke the next iteration.

---

## 4. Hard non-destructive rules

Do **not** delete, overwrite unrelated material, move, rename, reset, clean, force-checkout, force-push, rewrite history, or perform destructive cleanup unless Daniel explicitly requested that exact action.

If material appears stale, conflicting, duplicated, or confusing:

- classify it;
- record supersession;
- preserve provenance.

Do not destroy history to make the repository look conceptually clean.

---

## 5. Pipeline baseline is authoritative for the night run

Once frozen, optimize **that baseline**.

Do not wake up mid-run and replace the project with a different AI-generated thesis.

If new evidence reveals a fundamental contradiction:

1. document it;
2. determine whether a small evidence-supported correction is safe;
3. if not, block/downgrade the affected claim;
4. update STATE/doc19;
5. do not fabricate coherence.

Presentation must fit reality.

Reality is never rewritten to fit presentation.

---

## 6. Evidence/status discipline

Use:

- **RUNNING** — executed end-to-end in the relevant final path;
- **BUILT** — implemented and supported by passing test/equivalent evidence, not yet established in final live path;
- **PARTIAL** — implementation exists but the claimed end-to-end behavior is incomplete;
- **DESIGNED** — intended/architected/roadmap, not proven running;
- **EXTERNAL** — depends on unavailable external system, permission, data, hardware, network, partner;
- **UNKNOWN** — not yet established.

Never round PARTIAL up to RUNNING.

Never let a filename, title, README, UI label, or polished AI document substitute for runtime evidence.

---

## 7. Current Corti/judging constraints

Keep visible:

- clinical relevance;
- actual Corti API use;
- at least four of five named product areas;
- working prototype;
- insight/ambition beyond a typical ambient scribe;
- crowd comprehension/voting;
- approximately five-minute presentation/demo plus judge questions;
- agentic-framework bonus/superlative opportunity.

Current consolidated state already maps four product areas in the verified build and treats current v2 medical coding as **optional bounded upside**, not a blocker.

Do not spend an iteration on coding if the core demo/fallback is not stable.

---

## 8. Clinical-content boundary

Do not invent:

- medication doses;
- contraindications;
- guideline rules;
- synonyms/mappings altering clinical meaning;
- patient facts;
- synthetic case facts not already clinician-approved;
- authoritative medical conclusions.

Clinical demo content must come from Frank/clinician-approved material or intentionally incorporated authoritative sources.

The night run may test/trace clinical logic implementation.

It may not author new clinical truth to make the demo dramatic.

---

## 9. Silent-fallback rule

Treat any path where failure continues with default, placeholder, cached, raw, hardcoded, or stale content as presentation-critical until understood.

For each such path determine:

- what failed;
- substitute value;
- whether output looks like success;
- whether stage could misrepresent it.

Prefer loud truthful failure over deceptive success.

The known interactive demo-only mode is an explicit **presentation fallback**, not evidence that connected live services succeeded.

---

## 10. Morning usefulness rule

By morning STATE/doc19 should let the team immediately understand:

- exact baseline optimized;
- actual current project pipeline;
- what ran overnight;
- what changed;
- what now works;
- what still fails;
- what new evidence changed conceptually;
- what is safe to claim;
- what remains PARTIAL/DESIGNED/EXTERNAL;
- which Corti areas are evidenced;
- best connected demo path;
- best fallback path;
- current timing/surface assumptions;
- single highest-value remaining frontier;
- next human action before submission.

Morning handoff must be both **operational and interpretive**.

---

## 11. Stop conditions

Set a non-`NONE` blocker and stop if:

- baseline is not frozen;
- required human/clinical decision is missing;
- credentials/account approval are required for the chosen target;
- external service availability prevents meaningful verification;
- action would require destructive cleanup;
- action would require inventing clinical content;
- repository/ownership state is ambiguous enough that modification risks contaminating teammate work;
- repeated attempts are no longer presentation-relevant;
- a decision belongs to Daniel/team rather than agent inference.

Examples:

`blocked: HUMAN_DECISION_REQUIRED`

`blocked: PIPELINE_BASELINE_NOT_FROZEN`

The PowerShell driver will detect the blocker and stop.

---

## 12. Current activation state

The PowerShell mechanism is proven.

The cumulative synthesis has been consolidated.

The exact executable presentation baseline is **not yet frozen**.

Therefore `.nightrun/STATE.md` must remain blocked.

When the baseline is genuinely ready, update STATE with:

- `blocked: NONE`
- exact baseline commit/reference(s)
- exact demo spine
- exact fallback
- exact case/surface/timing assumptions
- target or `AUTO_SELECT_FROM_BASELINE`

Only then begin unattended optimization.