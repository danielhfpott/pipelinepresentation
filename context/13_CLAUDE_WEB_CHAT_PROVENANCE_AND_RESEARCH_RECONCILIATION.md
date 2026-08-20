# Claude Web Chat Provenance + Acute-System Research Reconciliation

## Why this file exists

Daniel has been supplying context in many forms exactly as intended: raw speech/transcripts, screenshots, code/archive material, prior ChatGPT conversations, Claude web-chat conversations, generated documents, and research fragments.

Some of the previously supplied polished Markdown documents were developed **inside or around Claude web-chat conversations**. Those surrounding chats are therefore valuable provenance/context for understanding why the documents say what they say.

They are **not independent corroboration** of the documents they helped produce.

The correct relationship is:

`raw team context / research question -> Claude web conversation -> generated synthesis/document -> later code/runtime/team verification -> reconciled GitHub truth`

A document and the Claude chat that formed it may count as two artifacts, but not two independent factual authorities.

---

## 1. Relationship to previously supplied Claude build documents

Relevant previously supplied artifacts include:

- `PRESENTATION_BUILD.md`
- `HACKATHON_TRUTH_DOCTRINE.md`
- duplicate `HACKATHON_TRUTH_DOCTRINE (1).md`
- `presentation_date200826time1402(1).txt`
- Claude archive material such as `CLAUDE.md`, `RUN_LOG.md`, `DEMO_SCRIPT.md`, and `preflight.sh`

The reconciliation record remains:

`context/06_CLAUDE_BUILD_MATERIAL_RECONCILIATION.md`

New provenance clarification:

> Claude web-chat conversations surrounding these artifacts are part of the **contextual formation/source cluster**. They can reveal assumptions, questions, intended scope, and the path by which Claude reached the document. They must not be counted as independent proof that the document’s implementation claims are true.

---

## 2. Newly supplied Claude-web acute-system research — source status

Daniel supplied another Claude web-chat thread exploring the wider Copenhagen/Region H acute/prehospital pipeline, including:

- emergency-call recognition;
- stroke/OHCA recognition;
- 1813/112 entry points;
- Dansk Indeks / hastegrad classification;
- ambulance disposition and response times;
- PPJ documentation;
- handoff;
- post-scene 24-hour return indicators;
- the coming Region Østdanmark merger;
- possible “software-shaped seams” in the overall pipeline.

This is useful **research/context generation**, not automatically project scope.

Claude also proposed interpretive wedges such as:

- “Corti owns the call; ClinLog owns the note; the seam is unowned”;
- “the vocabulary gap” as a common cause across dispatch and RAG;
- “Region H is fastest but worst on classification documentation quality” as a pitch;
- the 2027 merger as a forcing function for the product.

Those are **interpretations/hypotheses**, not facts merely because supporting numbers exist.

---

## 3. Public claims checked against stronger/current sources

### A. Region H B-response service target

**Claude-web claim:** B target 90% within 25 minutes, with an approximately 37-minute 90th-percentile framing.

**Reconciled status: STALE / NOT CURRENT.**

Current Region H material in 2026 states:

- B-response indicator = share arriving within **30 minutes**;
- administrative service target = **93% within 30 minutes**.

A Region H Power BI appendix generated in February 2026 explicitly states the 30-minute / 93% target.

Therefore:

> Do **not** use `90% within 25 minutes` or `~37 minutes at the 90th percentile` as the current Region H service target.

Older numbers can be used only when clearly labelled as historical planning/reporting.

Primary/current source used in reconciliation:

- Region Hovedstaden, `Responstid på B-kørsler` Power BI appendix, 2026, `edagsorden.regionh.dk/cms/HtmlPublication-10406/enclosures/25.pdf`.

---

### B. Stroke recognition: 66.2%

**Claude-web claim:** Region H/Copenhagen EMS dispatcher stroke detection = 66.2%.

**Reconciled status: VERIFIED AS HISTORICAL STUDY RESULT, NOT CURRENT 2026 RATE.**

Published research reports a 66.2% stroke-recognition sensitivity in Copenhagen EMS data from an earlier study period.

Use safely as:

> Historical Copenhagen research found 66.2% dispatcher recognition in the studied stroke cohort.

Do **not** say:

> Region H dispatchers currently miss exactly one third of strokes in 2026.

Source:

- `Artificial intelligence in Emergency Medical Services dispatching: assessing the potential impact of an automatic speech recognition software on stroke detection taking the Capital Region of Denmark as case in point`, PMC9097123.

---

### C. OHCA machine-learning retrospective study

**Claude-web claim:** Copenhagen 2014 study; 108,607 calls; 918 eligible OHCA; ML sensitivity 84.1% vs dispatcher 72.5%; ML PPV 20.9%; shorter recognition time.

**Reconciled status: VERIFIED, WITH IMPORTANT NUANCE.**

The retrospective study reports:

- 108,607 emergency calls;
- 918 eligible OHCA calls;
- sensitivity: dispatcher 72.5% vs ML 84.1%;
- specificity: dispatcher 98.8% vs ML 97.3%;
- PPV: dispatcher 33.0% vs ML 20.9%;
- median recognition: dispatcher 54s vs ML 44s.

Source:

- Blomberg et al., `Machine learning as a supportive tool to recognize cardiac arrest in emergency calls`, Resuscitation 2019, PubMed 30664917, DOI 10.1016/j.resuscitation.2019.01.015.

### Critical later evidence

A later randomized clinical trial in live Copenhagen EMS use found that the ML decision-support system **did not significantly increase the dispatchers’ correct OHCA recognition or change recognition time**, despite the model itself maintaining high sensitivity.

Therefore the safe conclusion is not “AI solved recognition.”

The stronger lesson is:

> retrospective model performance and actual human-in-the-loop clinical effect are different evidence layers.

Source:

- `Effect of Machine Learning on Dispatcher Recognition of Out-of-Hospital Cardiac Arrest During Calls to Emergency Medical Services: A Randomized Clinical Trial`, PMC7788469.

This distinction fits the project’s broader truth doctrine: **run/evaluate the real workflow, not merely the model metric.**

---

### D. Dansk Indeks registration quality — Præhospitalsdatabasen 2023

**Claude-web claim:**

- A-C national 92.5%; Region H 82.3%; Region Sjælland 97.9%.
- D-F national 82.2%; Region H 61.5%; Region Midtjylland 98.7%.

**Reconciled status: VERIFIED.**

The Præhospitalsdatabasen annual report states those values.

Important semantic guardrail:

The indicator concerns **whether a valid Dansk Indeks code (hastegrad + four-digit symptom/incident code) was registered in accordance with the coding requirements**. Do not silently rewrite this as proof that clinical triage/classification itself was wrong in 38.5% of Region H D-F cases.

That difference is presentation-critical.

Source:

- SundK / Præhospitalsdatabasen, Årsrapport 2023, lines/section around supplementary indicator 1 analyses.

---

### E. 24-hour renewed-contact indicator

**Claude-web claim:** the prehospital quality database already tracks a loop where patients closed on scene later reappear within 24 hours with a high-priority response.

**Reconciled status: VERIFIED WITH WORDING CORRECTION.**

Præhospitalsdatabasen includes:

`Indikator 3: Genhenvendelse efter skadestedsafslutning`

It measures patients completed on scene who have renewed AMK/112 contact within 24 hours where the subsequent response is A or B and leads to hospital transport.

This is a real outcome/quality indicator.

Do not paraphrase it too broadly as “we classified this wrong the first time” without qualification. A return does not by itself prove the original decision was erroneous.

Source:

- SundK / Præhospitalsdatabasen indicator overview and 2023 report.

---

### F. Region Østdanmark date

**Claude-web claim:** Region Hovedstaden and Region Sjælland merge on 1 January 2027.

**Reconciled status: VERIFIED.**

Official Region H material states that Region Østdanmark comes into effect **1 January 2027** as the merger of Region Hovedstaden and Region Sjælland.

Source:

- Region Hovedstaden, `Om Region Østdanmark` / `About the Region of Eastern Denmark`, updated February 2026.

### But:

The stronger Claude inference that the merger necessarily forces the exact two triage instruments/workflows described in the chat to merge in a specific manner remains **UNVERIFIED**.

---

## 4. Claims from the Claude acute-pipeline chat that remain open

The following should **not** enter presentation truth yet without stronger evidence:

- exact 1813 weekly/yearly call volumes and abandonment percentages;
- the assertion that nothing is measured before the 112/1813 call;
- exact current transfer path from police 112 to AMK in all relevant scenarios;
- exact current Dansk Indeks operational sequence as described by Claude;
- Logis “under a second / ~60% of A-runs” as a current factual number;
- `unclear problem = 28.8%` and especially the causal interpretation that this proves a vocabulary gap;
- “the free-text note is unsolved” as a system-wide factual conclusion;
- “the note loses the race to the patient” as a current Region H-wide statement;
- “the seam between dispatcher hearing and record is unowned”;
- “Region H is fastest in Denmark” in the exact metric/time period relevant to the pitch;
- any interpretation that the Dansk Indeks documentation-quality indicator directly equals wrong patient classification;
- the idea that the project should pivot toward dispatch/stroke recognition merely because those public gaps exist.

All remain useful **context for asking better questions**, not automatic project scope.

---

## 5. Relationship to the team’s actual project

This research expands the field in which the project sits.

It can help answer:

- where context is lost before the physician receives the case;
- where classification/documentation quality is formally measured;
- where software already performs well;
- where human-in-the-loop model performance differs from retrospective model accuracy;
- what gaps are actually documented by authoritative sources;
- which “imminence” arguments are real versus pitch inventions.

But the project must still be derived from:

`team intent + clinician workflow + actual code/runtime + Corti assignment + verified external context`

not:

`interesting public problem -> force current project to become that problem`.

---

## 6. Provenance rule going forward

For every additional Claude/ChatGPT/Codex/web-research source:

1. preserve where it came from;
2. distinguish source transcript from agent analysis;
3. identify whether a generated document is downstream of the same chat;
4. avoid double-counting correlated sources;
5. verify public quantitative claims when presentation-relevant;
6. keep interpretive wedges labelled as inference;
7. promote only reconciled project-relevant truth into the baseline/demo spine.

This is how the growing context becomes more accurate instead of merely larger.
