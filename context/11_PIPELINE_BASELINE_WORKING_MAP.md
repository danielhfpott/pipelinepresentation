# Pipeline Baseline Working Map

## Status

**WORKING MAP — NOT FROZEN.**

This is the current focal surface for constructing the actual team/project pipeline that the overnight run will later optimize.

It is not pitch copy. It is not a final architecture. It is not permission to collapse uncertain or contradictory material into one neat story.

The purpose is to answer, from evidence:

> **What is the actual project our four-person team has created, where does each contribution live in the end-to-end care/workflow pipeline, what actually runs, and what should the judges see in approximately five minutes?**

Only when this map is sufficiently reconciled should `.nightrun/STATE.md` be unblocked and the baseline commit frozen.

---

## 1. The four evidence layers that must converge

The baseline is not allowed to come from only one of these layers.

### A. Real clinical workflow

Current clinician-described prehospital sequence is approximately:

`112 call -> operator/dispatch interpretation -> evolving text on ambulance screen -> physician pre-arrival preparation -> on-scene assessment/monitoring/treatment/stabilisation -> transport -> structured ABC-style dictation/documentation -> information reaches receiving side before arrival -> formal hospital handover -> continued care`

Important current-state details already grounded from Frank's first-hand description:

- the ambulance-side doctor does **not** hear the 112 call audio;
- evolving call context reaches the doctor as text on a screen;
- this context is used before arrival for mental/clinical preparation;
- the live encounter adds human/environmental context plus device measurements;
- Frank already uses dictation/structured output in practice;
- he reports that the receiving side can be partially pre-briefed before he physically arrives;
- the ambulance-side clinician has much less longitudinal patient-history access than the receiving hospital.

This layer describes the care reality the product must fit. It does not prove which hackathon features are implemented.

### B. Team work / contribution reality

Known team roles/workstreams currently include:

- **Daniel** — team-assigned context architecture/orchestration: reconcile clinical reality, teammate work, code, Corti requirements, evidence, uncertainty, and presentation into one truthful project;
- **Frank** — practicing physician; clinical workflow authority for the team plus substantial hackathon implementation/testing work;
- **Mihai** — UI/Lovable-side work and product/UX thinking; skepticism/clarity has been explicitly useful for preventing false urgency/certainty;
- **fourth teammate** — contribution exists but is not yet sufficiently grounded in this working map. Do not invent it.

The baseline is incomplete until every teammate's actual contribution can be located somewhere in the project/workflow picture.

### C. Implementation/runtime reality

Known implementation evidence must be reconciled separately from descriptions.

Current supplied Frank-repo material reports or shows a project including React/Vite/TypeScript, Supabase, Corti services, structured clinical output, anonymisation, guideline/RAG-like functionality, and handoff/QR concepts. Some of those claims are README-level or source-level evidence and still need runtime/traced confirmation before being presented as live behavior.

A particularly important implementation rule is:

`README / filename / class / folder / agent description != proof that the behavior runs.`

The working map must progressively classify every presentation-relevant capability as:

- RUNNING
- BUILT
- PARTIAL
- DESIGNED
- EXTERNAL
- UNKNOWN

### D. Corti assignment / judging reality

Source-reported spoken Corti briefing currently says:

- five equally weighted judging dimensions, including clinical relevance, Corti API use, working prototype, insight/ambition, and crowd voting;
- at least four of five named Corti product areas should be used;
- the work should go beyond a typical ambient scribe;
- the final presentation is approximately a **five-minute demo** plus judge Q&A;
- preloaded audio is allowed, but the team still needs to show the system actually works.

The baseline must make the team's real work legible against this rubric without reshaping the project into a fake rubric-optimized story.

---

## 2. Current candidate end-to-end project field

This is the broad field repeatedly supported by the team's notes, clinical conversation, and implementation material:

`dispatch / incoming context`
`-> clinician preparation`
`-> live encounter / speech / observations / measurements`
`-> context accumulation / structuring`
`-> clinically relevant support / guideline or other contextual assistance where actually implemented`
`-> treatment/event documentation`
`-> structured pre-arrival handoff`
`-> receiving team continuity`
`-> possible later reflection / longitudinal context / future integrations`

This is deliberately broader than the eventual five-minute demo.

The night run should eventually optimize the **chosen demonstrable spine through this field**, not every possible branch.

---

## 3. The likely central product distinction — candidate, not frozen

A recurring distinction across the source material is:

`ordinary scribe: speech -> transcript / note`

versus a more contextual system:

`continuous encounter context + patient state + prior actions + clinical sources + workflow position -> structured situational understanding -> relevant assistance / handoff / continuity`

The fentanyl transcript case is useful because it demonstrates why isolated sentence interpretation can fail: the same utterance can be misread when the surrounding clinical situation is stripped away.

This may become an explanatory principle, but it must not become the final project thesis unless the implemented system and team intent support it.

---

## 4. What appears already valuable before any new overnight optimization

Potentially presentation-relevant work already present in the evidence field includes:

1. a real clinician-described acute workflow rather than a fabricated startup scenario;
2. an existing dictation/structured-documentation behavior used by Frank in practice;
3. a reported pre-arrival information/handoff benefit;
4. current hackathon code integrating Corti-related functions beyond a plain static mock-up;
5. UI/product work from Mihai's lane;
6. clinical/context-support ideas such as relevant guideline retrieval and accumulated situational context;
7. deliberate human-in-the-loop / provenance / truth-discipline thinking;
8. Daniel's integration/context-architecture work connecting separate build lanes into one project and presentation.

Each item above still needs its exact evidence tier established before stage claims are written.

---

## 5. Major gaps that must be closed before baseline freeze

### Gap 1 — full teammate contribution map

The fourth teammate's work is not yet integrated, and Mihai's actual current artifact/functionality needs direct evidence mapping rather than only role-level description.

### Gap 2 — actual runtime path

We need the exact executable path through the hackathon build:

`input -> Corti/API calls -> transformations -> UI/output -> handoff/demo result`

and which parts can run reliably in front of judges.

### Gap 3 — Corti product-area proof

Need to identify which four-or-more required Corti product areas are genuinely exercised and how to show that in evidence, not just naming services in a README.

### Gap 4 — exact five-minute demo spine

Need one patient/case, one start state, one sequence of visible transformations/actions, and one terminal outcome the audience immediately understands.

### Gap 5 — implemented vs designed boundary

Need to keep future ideas such as direct 112 audio ingest, richer EHR/Epic access, edge inference, hardware capture, and other deployment ideas visibly separate unless implementation changes.

### Gap 6 — presentation evidence package

Need screenshots, logs, recorded fallback, tests, code-path references, and/or reproducible outputs sufficient to support the claims we choose.

---

## 6. Working method from here

For each incoming artifact, conversation, code path, teammate output, or runtime result:

1. identify the literal source/behavior;
2. classify its evidence strength;
3. locate where it belongs in the clinical/project pipeline;
4. identify which teammate/workstream it represents;
5. determine whether it changes the candidate demo spine;
6. determine whether it changes Corti-rubric coverage;
7. preserve contradictions rather than smoothing them away;
8. update this working map only when the new relationship is stable enough to be useful.

The map should become **more structurally correct**, not merely larger.

---

## 7. Baseline-freeze test

Do **not** activate the night run merely because time is passing.

Freeze the baseline when we can answer all of the following with evidence sufficient for overnight optimization:

- What is the project's actual end-to-end pipeline?
- What did each teammate actually contribute?
- Which path actually runs today?
- What is the strongest five-minute demo sequence?
- What is the exact Corti/API usage on that sequence?
- What is RUNNING vs BUILT vs PARTIAL vs DESIGNED vs EXTERNAL?
- Which remaining weaknesses can an autonomous overnight iteration safely optimize without redefining the project?

At that point:

1. record the exact baseline commit in `.nightrun/STATE.md`;
2. write the frozen pipeline/demo spine there;
3. set `blocked: NONE`;
4. run the proven PowerShell sequence from `4.txt`;
5. let each iteration improve the same baseline while updating cumulative state.

---

## 8. Immediate next focus

**Do not optimize yet. Reconcile the team picture.**

The next highest-value work is to map the remaining teammate artifacts and the actual runtime/code path onto this clinical continuum until a five-minute demonstrable spine becomes obvious from the evidence rather than chosen by narrative preference.
