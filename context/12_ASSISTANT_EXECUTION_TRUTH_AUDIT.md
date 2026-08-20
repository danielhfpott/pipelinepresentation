# Assistant Execution Truth Audit

## Purpose

This file audits substantive commitments made by ChatGPT during the presentation-context build against what **actually exists or has actually been verified**.

The purpose is not to defend prior wording. The purpose is to prevent an assistant statement such as “I’m doing X now” or “I pushed Y” from silently becoming project truth when the action was partial, interrupted, stale, or never completed.

## Audit boundary

ChatGPT cannot export the entire conversation UI transcript byte-for-byte from inaccessible/hidden history on demand. This audit therefore covers:

- substantive commitments available in the current conversation context;
- preserved conversation handoff/context;
- user-supplied files and screenshots;
- GitHub commits/files/PR state;
- tool/runtime evidence generated during this effort.

If an older message later surfaces, add it to this audit rather than assuming it was covered.

Status vocabulary:

- **DONE** — the claimed action can be directly evidenced now.
- **PARTIAL** — meaningful work occurred, but the wording implied more completeness than actuality.
- **CORRECTED** — an earlier statement became stale/incorrect and has since been fixed.
- **NOT YET DONE** — promised/intended work remains outstanding.
- **ONGOING** — a standing process rule rather than a finite action.

---

## 1. Establish a GitHub source-of-truth layer

**Assistant commitment:** preserve stable synthesis in `danielhfpott/pipelinepresentation` rather than leaving it only in chat.

**Status: DONE / ONGOING.**

Evidence includes:

- `context/00_READ_ME_FIRST.md`
- `context/02_CONTEXT_ARCHITECTURE_INFERENCE_RULES.md`
- `context/03_LIVING_SYNTHESIS.md`
- `context/04_INCOMING_SOURCE_MANIFEST.md`
- `context/05_SOURCE_OF_TRUTH_PROTOCOL.md`
- later source/reconciliation files.

Important current limitation: newer work is on `presentation-context-20260820` and is not yet merged into `main` at the time of this audit. Therefore an agent reading only local/remote `main` may still have stale context.

PR #2 exists to synchronize the latest layer and is now mergeable, but it is **not merged yet**.

---

## 2. Preserve anti-scope-creep / inference discipline

**Assistant commitment:** filenames, headings, repo names, class/function names, and polished AI prose must not be treated as semantic or implementation truth by themselves.

**Status: DONE.**

Evidence:

- `context/02_CONTEXT_ARCHITECTURE_INFERENCE_RULES.md`
- `context/05_SOURCE_OF_TRUTH_PROTOCOL.md`
- the same distinction is propagated into `NIGHT_RUN.md` and working-map material.

---

## 3. Preserve the living project/presentation synthesis

**Assistant commitment:** maintain a broad working synthesis instead of prematurely locking a pitch.

**Status: DONE / ONGOING.**

Evidence:

- `context/03_LIVING_SYNTHESIS.md`
- `context/11_PIPELINE_BASELINE_WORKING_MAP.md`

The baseline remains intentionally **NOT FROZEN**.

---

## 4. Inspect Claude archive and Frank code archive, reconcile claims against code/runtime

**Assistant commitment:** “inspect both archives by contents, map claims -> code evidence -> likely demoability, then push only stable synthesis.”

**Status: PARTIAL.**

What actually happened:

- `claudechatcontent.zip` was inspected structurally and its four files were identified.
- `hackathon-ppj-main.zip` was inspected structurally and a large portion of its tree was enumerated.
- README-level claims and several code-structure observations were preserved cautiously.
- `context/05_TEAM_IMPLEMENTATION_EVIDENCE_FRANK.md` and `context/06_CLAUDE_BUILD_MATERIAL_RECONCILIATION.md` were created.

What has **not** yet been completed:

- complete source-level trace of the presentation-critical Frank pipeline;
- end-to-end runtime execution of that pipeline by this presentation effort;
- complete claims -> code -> runtime -> demoability matrix;
- final verification of every Corti endpoint/product-area claim;
- full reconciliation of silent fallback behavior and all Claude doctrine claims.

Therefore any earlier wording implying the archive/code reconciliation was “done” would be too strong.

---

## 5. Reconcile the Claude presentation-build material without making it canonical

**Assistant commitment:** preserve strong truth-discipline ideas but keep Claude’s polished presentation thesis/scope decisions provisional.

**Status: DONE / ONGOING.**

Evidence:

- `context/06_CLAUDE_BUILD_MATERIAL_RECONCILIATION.md`

Byte-level duplicate check of the two `HACKATHON_TRUTH_DOCTRINE` files was actually performed and their duplicate status/hash preserved.

New provenance clarification: surrounding Claude-web chats are part of the same contextual source cluster and should not be counted as independent corroboration of documents they helped produce.

---

## 6. Preserve the fentanyl/contextual-assistance case as a design requirement, not implementation proof

**Assistant commitment:** store the case as evidence that isolated utterance interpretation can fail while not claiming the current system already solves it.

**Status: DONE.**

Evidence:

- `context/07_CONTEXTUAL_CLINICAL_ASSISTANCE_CASE.md`

---

## 7. Preserve Corti’s spoken assignment/judging briefing and correct presentation duration

**Assistant commitment:** record the judging/API requirement and replace the older ~15-minute assumption with the supplied ~5-minute demo + Q&A format.

**Status: DONE.**

Evidence:

- `context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`
- `context/00_READ_ME_FIRST.md` corrected
- `context/03_LIVING_SYNTHESIS.md` corrected
- repository search at audit time found no remaining `15-minute` string in the current branch context.

The briefing remains **source-reported spoken Corti guidance** unless/until an official written hackathon source is added.

---

## 8. Preserve Frank’s clinician-described current workflow and provenance

**Assistant commitment:** separate current workflow from possible extensions and correctly attribute the surrounding synthesis to Claude web chat when Daniel corrected the provenance.

**Status: DONE.**

Evidence:

- `context/09_CURRENT_PREHOSPITAL_WORKFLOW_SOURCE.md`

The file now explicitly distinguishes Daniel/Frank clinical statements from Claude’s secondary interpretation.

---

## 9. Create a night-run design contract before creating the executable loop

**Assistant commitment:** pipeline first, night-run optimization second; use the previously successful PowerShell pattern rather than inventing a new orchestration model.

**Status: DONE.**

Evidence:

- `context/10_NIGHTRUN_DESIGN_CONTRACT.md`

---

## 10. Create root-level `NIGHT_RUN.md` and `.nightrun/STATE.md` required by the proven PowerShell loop

**Assistant commitment:** create the exact filenames/paths expected by the launcher and block activation until the pipeline baseline is frozen.

**Status: DONE.**

Evidence:

- root `NIGHT_RUN.md`
- `.nightrun/STATE.md`
- blocker currently remains `PIPELINE_BASELINE_NOT_FROZEN`.

This is structurally consistent with the supplied `4.txt` driver, which explicitly reads `NIGHT_RUN.md` and checks `.nightrun\STATE.md` for `blocked: (?!NONE)`.

---

## 11. Make `STATE.md` the all-encompassing cumulative synthesis layer

**Assistant commitment:** “tighten `.nightrun/STATE.md` so it carries the whole picture.”

**Status: CORRECTED.**

What actually happened first:

- commit `a436d2e...` expanded **`NIGHT_RUN.md` instructions** telling future iterations how to synthesize state;
- the current `.nightrun/STATE.md` file itself remained a small activation placeholder.

Therefore the assistant’s wording at that moment overstated the completed action.

Correction:

- `.nightrun/STATE.md` was subsequently expanded in commit `c608423...` into the actual cumulative state template, while preserving the machine-readable blocker line.

---

## 12. Preserve the exact known-good `4.txt` PowerShell driver

**Assistant commitment:** use the exact previously successful driver as the operational baseline rather than a remembered paraphrase.

**Status: DONE.**

The uploaded file was read directly from `/mnt/data/4.txt`.

Verified original metadata:

- size: `3172` bytes
- SHA-256: `731033334d93d3dae7bb72991725a89494431d6f5aa8c4e2ee801143843d79d1`

Preserved at:

`context/sources/KNOWN_GOOD_NIGHTRUN_DRIVER_4.txt`

Important: its old voice-project working-directory path is source evidence, **not** the current hackathon path.

---

## 13. Build a working pipeline baseline map before night-run activation

**Assistant commitment:** stop optimizing the night-run machinery and create the thing that the night run will later optimize.

**Status: DONE / ONGOING.**

Evidence:

- `context/11_PIPELINE_BASELINE_WORKING_MAP.md`

The map is intentionally not frozen because full teammate/runtime/Corti coverage is still incomplete.

---

## 14. Treat GitHub as active agent context + judged artifact, not passive storage

**Assistant commitment:** make substantive project state durable so Codex/Claude Code can inherit it from the repo even after a minimal prompt.

**Status: DONE / ONGOING.**

Evidence:

- expanded `context/05_SOURCE_OF_TRUTH_PROTOCOL.md`

Current reality caveat: this only works for agents reading the **current branch state**. Until PR #2 is merged and local clones pull/update, `main` remains behind the latest context branch.

---

## 15. Open PR #2 to synchronize latest context into `main`

**Assistant commitment:** open a PR rather than directly moving `main`.

**Status: DONE.**

PR:

`#2 Sync latest presentation context and night-run state`

A branch-history divergence initially caused GitHub to report it as not mergeable. The assistant created a content-preserving merge ancestry commit `fe0e229...` bringing current `main` history into the context branch.

GitHub later recalculated PR #2 as **mergeable: true**.

The PR remains **open and unmerged** at the time of this audit.

---

## 16. “Everything substantive goes to GitHub” standing rule

**Assistant commitment:** substantive synthesis/corrections/project-state changes should not remain only in chat.

**Status: ONGOING, not complete by definition.**

The rule is now documented in GitHub, but not every raw chat is or should be copied verbatim into the repository.

What must be durable is the project-relevant state, provenance, contradiction, evidence, or decision that future humans/agents need.

New Claude-web chat material supplied after the rule is being reconciled into separate source/research records rather than treated as chat-only context.

---

## 17. Verify newly supplied Claude-web acute-system research before promotion

**Assistant commitment:** verify public/quantitative claims against current/primary sources rather than copying Claude’s synthesis.

**Status: PARTIAL / ACTIVE.**

Verified so far:

- **Current Region H B-response service target:** 93% within **30 minutes**, supported by current 2026 Region H material. Therefore older `90% / 25 minutes` and `~37-minute 90th percentile` framing must not be presented as the current target.
- **Stroke dispatcher recognition 66.2%:** supported by published Copenhagen/Region H research, but it is a historical study result, not a current 2026 rate.
- **OHCA retrospective ML study:** 108,607 calls, 918 eligible OHCA calls; ML sensitivity 84.1% vs dispatcher 72.5%; ML PPV 20.9% vs dispatcher 33.0%; faster median recognition 44s vs 54s. This is historical retrospective evidence, not proof of present production performance.
- **Important later nuance:** a randomized clinical trial found that live ML decision support did not significantly increase correct dispatcher OHCA recognition or change recognition time, despite the underlying model maintaining high sensitivity. This weakens any simplistic “AI already solved dispatch recognition” claim.
- **Præhospitalsdatabasen 2023 Dansk Indeks registration quality:** A-C national 92.5%, Region H 82.3%, Region Sjælland 97.9%; D-F national 82.2%, Region H 61.5%, Region Midtjylland 98.7% — verified from the report.
- **24-hour return indicator after scene discharge:** exists in Præhospitalsdatabasen and measures renewed 112 contact within 24h with A/B response leading to hospital transport — verified.
- **Region Østdanmark:** Region Hovedstaden and Region Sjælland merge 1 January 2027 — verified from official Region H/Region Østdanmark material.

Still unverified or insufficiently reconciled from the newly pasted Claude chat:

- exact current 1813 call volumes/wait/abandonment figures;
- the claim that the citizen pre-112/1813 decision is literally “nothing is measured here at all”;
- all details of the exact Dansk Indeks serial-scan workflow as described in the Claude prose;
- current Logis coverage percentage and its presentation significance;
- `unclear problem` 28.8% interpretation and Claude’s stronger claim that this equals a vocabulary gap;
- PPJ/ED handoff timing claims and the phrase “the note loses the race to the patient”;
- the claim that the call-to-note seam is institutionally “unowned”;
- the claim that Region H is “fastest in the country” in the exact comparison relevant to the pitch;
- any claim that the 2027 merger necessarily forces two particular triage instruments to merge in the exact way Claude stated.

These remain source hypotheses until verified.

---

## 18. Final presentation/deck creation

**Assistant commitment/goal:** eventually create the actual polished presentation artifact, not only Markdown.

**Status: NOT YET DONE.**

No final presentation/PPTX has been created in this effort yet.

That is intentional so far because the baseline/project truth is still being reconciled, but time pressure means the transition from evidence gathering to presentation construction will soon need to be explicit.

---

## 19. Complete implementation/runtime proof package

**Assistant commitment/goal:** map what actually runs and attach presentation claims to evidence.

**Status: NOT YET DONE.**

This remains one of the most important unfinished tasks before baseline freeze/night-run activation.

---

## Current audit conclusion

The GitHub/context architecture and night-run infrastructure are substantially real and inspectable.

The biggest area where assistant wording previously ran ahead of actuality was **completion of the code/runtime reconciliation** and, briefly, the claim that `STATE.md` itself had already been expanded when only its future instructions had been expanded.

Those distinctions are now explicit.

The project should continue from the rule:

`assistant statement != completion evidence`

Use:

`statement -> GitHub/file/commit/runtime check -> status -> correction if needed`.
