# Night Run State

blocked: PIPELINE_BASELINE_NOT_FROZEN

iteration: 0
last_updated: 2026-08-20T23:47:00+02:00
baseline_commit: NOT_FROZEN
target: NONE
result: WAITING_FOR_PIPELINE_BASELINE
files_changed: NONE
evidence_produced: NONE
best_demo_path_impact: NONE
next_priority: Finish/reconcile the actual project pipeline and explicitly freeze the baseline before activating overnight optimization.

## Activation note

The PowerShell driver is structurally ready to consume root-level `NIGHT_RUN.md`, but the night run must not begin optimizing product/presentation code until the current pipeline has been created/reconciled and the baseline commit is recorded here.

When ready, update:

- `blocked: NONE`
- `baseline_commit: <exact commit SHA>`
- `target: <current highest-priority presentation-critical target or AUTO_SELECT_FROM_BASELINE>`

Then the proven PowerShell driver can start invoking exactly one bounded iteration at a time.
