# NIGHT_RUN.md

## Purpose

This is the exact root-level instruction file consumed by the proven PowerShell night-run driver.

The driver invokes Claude with:

`Read NIGHT_RUN.md and execute exactly one iteration. Issue git commands one at a time, never chained with &&. Then stop.`

Therefore this file defines what **one iteration** means.

The night run does **not** invent the project pipeline. It optimizes, verifies, repairs, and strengthens an already-created and explicitly frozen pipeline baseline.

A second purpose is equally important: every iteration must leave behind a more useful **compressed understanding of the whole current project** in `.nightrun/STATE.md`. The run is therefore not only an implementation loop; it is an implementation + evidence + synthesis loop.

---

## 0. Activation gate — read first

Before doing anything else, read:

- `.nightrun/STATE.md`
- `context/00_READ_ME_FIRST.md`
- `context/03_LIVING_SYNTHESIS.md`
- `context/05_SOURCE_OF_TRUTH_PROTOCOL.md`
- `context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`
- `context/09_CURRENT_PREHOSPITAL_WORKFLOW_SOURCE.md`
- `context/10_NIGHTRUN_DESIGN_CONTRACT.md`

If `.nightrun/STATE.md` contains any value other than:

`blocked: NONE`

then **do not modify product/presentation code**. Report the blocker, leave the workspace intact, and stop this iteration.

This gate exists because the night run must begin only after the team has created/reconciled the pipeline it is supposed to optimize.

---

## 1. Terminal objective

Every iteration must strengthen the final Corti hackathon delivery:

1. the complete public GitHub project/submission; and
2. the approximately five-minute working demo/presentation plus judge Q&A.

The controlling question is:

> **What have we actually done as work, what actually runs, what matters clinically, and how can we prove/show it clearly in approximately five minutes?**

Do not optimize code for its own sake.

---

## 2. One iteration means exactly one bounded improvement cycle

Perform the following sequence once, then stop.

### Step A — orient to current state

Read `.nightrun/STATE.md` first.

Treat it as the **current compressed project model**, not merely a log entry. It should tell you where the last iteration left the project, what is known, what remains uncertain, and which improvement frontier currently matters most.

Inspect the current git status and recent commits.

Read only the source/context/code necessary to understand the current highest-priority item. Do not re-derive the entire project from scratch each iteration unless the state itself identifies a contradiction requiring broader reconciliation.

### Step B — choose exactly one highest-value presentation-critical target

Choose one bounded target from the current state, prioritizing roughly in this order:

1. broken or unproven live-demo path;
2. missing evidence for a presentation-critical capability;
3. a Corti product-area requirement that is not yet demonstrated;
4. a runtime/code contradiction that could make the demo misleading;
5. silent fallback that makes failure look like success;
6. missing handoff/log/screenshot/backup artifact needed for the five-minute demo;
7. bounded reliability improvement to an already-established pipeline step;
8. evidence/status documentation that materially clarifies what is RUNNING / BUILT / DESIGNED.

Do not choose a target merely because it is technically interesting.

### Step C — record the problem before changing anything

Before modifying code, establish:

- observed problem;
- evidence that the problem exists;
- smallest proposed intervention;
- regression risk;
- exact success test.

If you cannot state these concretely, do not modify code.

### Step D — perform the smallest safe intervention

Prefer inspection, measurement, tests, tracing, and bounded repair.

Do not broadly refactor.

Do not redesign the project.

Do not introduce a new architecture because it looks cleaner.

Do not add unrelated features.

Do not invent clinical content.

### Step E — verify by execution where possible

Prefer evidence in this order:

1. reproducible runtime behavior;
2. passing test tied to the claimed behavior;
3. direct code-path evidence;
4. first-hand clinician/team workflow evidence;
5. official Corti / independently verified external evidence;
6. README/document claim;
7. AI-agent synthesis;
8. brainstorm/intended behavior.

Reading code is not equivalent to proving it runs.

If verification fails, record the failure plainly. Never make failure look like success.

### Step F — re-synthesize durable state

Update `.nightrun/STATE.md` after the bounded work.

This is **not just a last-action log**. Rewrite/update it so it becomes the best concise, evidence-grounded representation of the project **after this iteration**.

Preserve both:

1. **iteration delta** — what this iteration specifically attempted, changed, verified, failed, or learned; and
2. **cumulative synthesis** — what the total project/presentation state now appears to be when the new evidence is integrated with everything already known.

At minimum the state should maintain:

- machine-readable blocker status;
- iteration number and timestamp;
- exact baseline/current commit context;
- the currently frozen pipeline/demo spine;
- latest bounded target and result;
- commands/tests actually run;
- files changed;
- evidence produced, preferably with inspectable path/test/commit references;
- current capability truth map: RUNNING / BUILT / PARTIAL / DESIGNED / EXTERNAL / UNKNOWN;
- current Corti judging/API coverage, including which required product areas are actually evidenced;
- best known five-minute live-demo path, in execution order;
- fallback/backup path if the live path fails;
- presentation-safe claims;
- claims that must not be made yet;
- unresolved contradictions / uncertainty that could change the story;
- regression or demo risks introduced/discovered;
- highest-value remaining optimization frontier;
- exact next recommended bounded iteration;
- any human/team decision required.

### The all-encompassing-state rule

`STATE.md` should function as an **icing layer over the cake**, in the following precise sense:

- the code/runtime/evidence remain the underlying cake and stay authoritative;
- the state integrates those layers into one compact current understanding;
- the next agent iteration can reason from that synthesis instead of reconstructing context from terminal history;
- the morning team can understand the strongest current project and presentation shape without reading every overnight log;
- new evidence may revise the synthesis, but the synthesis must never overwrite or outrank contrary evidence.

The state should become **more informative, not merely longer**. Remove stale interpretations by correcting them in place; preserve important contradictions explicitly; do not accumulate 300 repetitive mini-reports.

Do not place an unevidenced conclusion in the state as fact merely because it helps the pitch. If inference is useful but not proven, mark it as inference/uncertain.

### Step G — commit exactly the verified iteration

If the iteration changed files or state, commit the bounded iteration with a specific message.

Issue git commands one at a time.

Never chain commands with `&&`.

Do not merge branches.

Do not push to `main` unless Daniel has explicitly changed that rule.

Then stop. The PowerShell driver will invoke the next iteration.

---

## 3. Hard non-destructive rules

Do **not** delete, overwrite unrelated material, move, rename, reset, clean, force-checkout, force-push, rewrite history, or perform destructive cleanup unless Daniel explicitly requested that exact action.

If material appears stale, conflicting, duplicated, or confusing: classify/report it instead of deleting it.

Never use destructive cleanup as a shortcut to a cleaner workspace.

---

## 4. The pipeline baseline is authoritative for the night run

Once the baseline is frozen, this run optimizes **that pipeline**.

Do not wake up mid-run and replace the project with a different AI-generated thesis.

If new evidence reveals a fundamental contradiction:

1. document it;
2. determine whether a small evidence-supported correction is safe;
3. if not, set an explicit blocker or downgrade the affected presentation claim;
4. do not fabricate coherence.

The presentation must fit reality. Reality is never rewritten to fit the presentation.

---

## 5. Evidence/status discipline

Use these distinctions where relevant:

- RUNNING — executed end-to-end in the relevant path;
- BUILT — implemented and supported by a passing test or equivalent bounded evidence, but not part of the demonstrated live path;
- DESIGNED — intended/architected/roadmap, not proven as running;
- PARTIAL — implementation exists but the claimed end-to-end behavior is incomplete;
- EXTERNAL — depends on unavailable external system, permission, data, hardware, network, or partner;
- UNKNOWN — not yet established.

Never round PARTIAL up to RUNNING.

Never let a filename, class name, README title, folder name, or polished description substitute for runtime evidence.

---

## 6. Corti assignment constraints to keep visible

The final judging source currently says:

- clinical relevance matters;
- actual use of Corti's API matters;
- at least four of the five named product areas are required;
- a working prototype matters;
- insight/ambition should go beyond a typical ambient scribe;
- crowd comprehension/voting matters;
- presentation is approximately a five-minute demo plus judge questions.

An iteration should prefer work that strengthens one or more of these criteria **without distorting the project**.

The state should make rubric coverage visible so overnight optimization can target the **weakest evidence-backed judging dimension**, not merely whatever code area is easiest to change.

---

## 7. Clinical-content boundary

Do not invent:

- medication doses;
- contraindications;
- guideline rules;
- synonyms/mappings that alter clinical meaning;
- patient facts;
- synthetic case facts not already clinician-approved;
- authoritative medical conclusions.

Clinical content must come from Frank/clinician-approved material or intentionally incorporated authoritative sources.

The agent may test/trace implementation of clinical logic. It may not author new clinical truth to make the demo work.

---

## 8. Silent-fallback rule

Treat any path where failure continues with default, placeholder, cached, raw, hardcoded, or stale content as presentation-critical until understood.

For each such site, determine:

- what failed;
- what substituted value is used;
- whether the user-visible output looks like success;
- whether the final presentation could accidentally misrepresent the result.

Prefer loud truthful failure over a deceptive green path.

---

## 9. Morning usefulness rule

Do not spend multiple iterations generating internal prose that does not improve the morning handoff.

By morning, `.nightrun/STATE.md` should let the team immediately understand:

- what baseline was optimized;
- what the actual project pipeline currently is;
- what was actually run overnight;
- what changed;
- what now works;
- what still fails;
- what the latest evidence changed about the understanding of the project;
- what is safe to claim;
- what must remain DESIGNED / PARTIAL / EXTERNAL;
- which Corti product areas are demonstrably used;
- how the project currently maps against the judging criteria;
- the best known live-demo path;
- the best available fallback/backup evidence;
- the single highest-value remaining optimization frontier;
- the next human action before submission.

The morning handoff should therefore be both **operational** and **interpretive**: what happened, and what it now means for the final presentation.

---

## 10. Stop conditions

Set `.nightrun/STATE.md` to a non-`NONE` blocker and stop if any of these is true:

- pipeline baseline has not yet been frozen;
- required human/clinical decision is missing;
- credentials/account approval are required;
- external service availability prevents meaningful progress;
- the next action would require destructive cleanup;
- the next action would require inventing clinical content;
- repository state is ambiguous enough that modification risks contaminating teammate work;
- repeated attempts are no longer producing presentation-relevant progress;
- a decision must be made by Daniel/the team rather than inferred by the agent.

Use a short machine-detectable line such as:

`blocked: HUMAN_DECISION_REQUIRED`

or

`blocked: PIPELINE_BASELINE_NOT_FROZEN`

The PowerShell driver will detect this and stop the loop.

---

## 11. Current activation state

The exact PowerShell mechanism is proven, but the current hackathon pipeline is still being reconciled.

Until the pipeline baseline is explicitly frozen, `.nightrun/STATE.md` must remain blocked.

When the baseline is ready, Daniel/ChatGPT can update the state to:

`blocked: NONE`

and record the exact baseline commit / pipeline target before the first overnight iteration.
