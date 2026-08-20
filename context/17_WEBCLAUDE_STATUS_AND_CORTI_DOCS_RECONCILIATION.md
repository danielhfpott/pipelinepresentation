# WebClaude Status + Corti Docs Reconciliation

## Status

**ACTIVE SYNTHESIS INPUT — runtime-backed where stated, docs-backed where stated, interpretive where stated.**

This file reconciles three converging evidence layers:

1. Daniel's latest WebClaude status/update;
2. Claude Code's merged runtime verification and five-minute candidate spine;
3. current official Corti documentation at `https://docs.corti.ai`.

The purpose is forward-moving synthesis: preserve what each source adds, correct stale assumptions, and turn the growing context into a stronger actual project/presentation pipeline.

---

## 1. Runtime reality now materially stronger

`context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md` records direct inspection and execution of Frank's private repository at commit `b1f816b` by Claude Code.

Measured there:

- 251 tracked files;
- 13 Supabase edge functions;
- 159/159 Vitest tests passing across 16 files;
- anonymisation pattern-net tests passing;
- `npx vite build` passing;
- `npx tsc -b` failing at the inspected commit for two TypeScript issues;
- a four-line local patch verified to restore `tsc -b` + full build while preserving 159/159 tests, deliberately not pushed because Frank owns that implementation lane.

Critical evidence boundary retained:

> No live Corti call was observed in that clone because the local verification environment lacked the Corti/Supabase deployment credentials.

Therefore:

`code-evidenced Corti integration != observed live Corti execution`.

That does not weaken the build; it simply keeps the evidence categories exact.

---

## 2. Corti product-area mapping from implementation evidence

Claude Code found code paths mapping to four stated Corti product areas:

1. dictation;
2. speech to text;
3. ambient speech to text;
4. text generation.

Medical coding is absent from Frank's inspected code tree.

Claude Code also found seven distinct agent-style usages through Corti context/message APIs in the inspected implementation.

These are **code-evidence findings**, not live-service observations.

The current candidate five-minute spine is preserved at:

`context/15_FIVE_MINUTE_PRESENTATION_SPINE.md`

It remains a candidate, not a locked script.

---

## 3. Official Corti docs — findings that deepen the project rather than merely police it

### 3.1 `/streams` is directly relevant to the project's context-continuity direction

Current Corti docs describe `/streams` as a real-time bidirectional WebSocket API for interaction streaming. It can return transcripts and fact updates and explicitly supports:

- real-time ambient documentation;
- clinical decision-support workflows;
- fact extraction alongside transcription;
- participant/channel configuration;
- retention controls;
- audio-health events;
- output replacements;
- **keyterms** for recognition bias.

This is highly aligned with the project's existing interest in preserving useful clinical context while the encounter is unfolding.

Official source:

`https://docs.corti.ai/api-reference/streams`

### 3.2 Keyterms are a native STT capability

The official `/streams` documentation includes a `keyterms` configuration object:

- terms are supplied at inference time;
- they bias recognition toward words/phrases Corti should recognize;
- the docs call out proper nouns and terms that are not recognized consistently;
- up to 1,000 items can be configured.

The docs index also exposes a dedicated guide:

`https://docs.corti.ai/stt/guides/dictation-keyterms`

Presentation/project implication:

The spoken-Danish -> clinical-terminology bridge that emerged from prior work does **not** have to exist only as a downstream retrieval patch. Some of that knowledge can potentially move earlier into the STT layer as a native Corti configuration.

That is a design opportunity, not a requirement to rebuild the current working path tonight.

### 3.3 Audio-health events are native

The `/streams` configuration can enable audio events for:

- speech-quality issue detected / recovered;
- long silence detected / recovered.

This is relevant to the real ambulance/noisy-environment context because the system can expose input-quality state rather than silently pretending bad audio is good input.

Official sources:

- `https://docs.corti.ai/api-reference/streams`
- `https://docs.corti.ai/stt/audio-events`

### 3.4 Corti's Agentic Framework language strongly overlaps the project's independently developed context philosophy

Current official Agentic Framework docs say the framework is intended for advanced agents performing complex tasks with trusted external sources, tool invocation, controlled action-taking, decision-support workflows, auditability, and memory/context management.

Especially relevant wording in the official docs concerns:

- grounding in validated reference sources and runtime system data rather than model guessing;
- controlled tool execution;
- auditability through replayable traces and structured logs;
- persistent, context-aware conversations;
- managing multiple active contexts **without losing information throughout the session**;
- run-time context passed with each query.

Official source:

`https://docs.corti.ai/agentic/overview`

This does **not** prove Corti independently validates our whole project thesis. It does mean the project's context-continuity direction has unusually direct conceptual resonance with Corti's documented platform design.

### 3.5 Agent SDK private-preview nuance

The official docs distinguish the broader Agentic Framework from the **Agent SDK**, whose current docs mark it as private preview.

Therefore:

- do not conflate "Agent SDK private preview" with "Agentic Framework unavailable";
- Frank's code-evidenced use of existing Corti context/message APIs is still meaningful;
- exact API generation/version should be described from the implementation, not from a generic SDK label.

### 3.6 Medical coding — important correction to the latest WebClaude assumption

WebClaude's latest status says medical coding may be unavailable because Corti coding is per-customer / requires customer-specific tuning.

Current official docs require a finer distinction:

- **legacy interaction-based Codes endpoints** are explicitly marked limited-access/specific-tenant in the docs index;
- the current **stateless `Predict Codes`** API is separately documented at:
  `POST /v2/tools/coding/`;
- Corti publishes a normal current quickstart showing requests using tenant + bearer credentials;
- the docs include Danish SKS/ICD-10-DK among supported coding-system documentation.

Official sources:

- `https://docs.corti.ai/api-reference/codes/predict-codes`
- `https://docs.corti.ai/coding/quickstart`
- `https://docs.corti.ai/coding/icd-10-dk`

Reconciled truth:

> Medical coding is absent from the current Frank code. The current Corti API does expose a documented stateless coding surface. Whether the hackathon credentials/tenant can invoke it successfully is an **environment/entitlement fact to test**, not something to infer from legacy limited-access documentation.

This does **not** mean medical coding should become tonight's priority. It simply removes an unnecessary false constraint from the option space.

---

## 4. Latest WebClaude presentation compression — keep the insight, not the overcorrection

WebClaude recommends:

- red-team the compressed live story rather than expand features;
- keep one continuous encounter rather than a feature tour;
- make the ambient safety-monitor moment a load-bearing beat;
- avoid claiming a direct intent lineage between Daniel's earlier philosophical wording and Frank's rule-engine implementation unless that provenance is established;
- say the stronger and safer observable truth: **the rule engine checks for what is missing, not only what is wrong**;
- bank the seven-agent breadth in a concise clause/Q&A instead of trying to demonstrate seven agents individually;
- resolve the fourth teammate's actual contribution/speaking role before rehearsal.

These are **presentation recommendations**, not new implementation facts.

### Reconciliation with the phone + X-ray architecture

Do **not** read "cut exploration" as "discard the phone/X-ray presentation architecture."

The stronger synthesis is:

`persistent real phone state`
`+ one continuous clinical story`
`+ presentation-only X-ray layer used only when it earns seconds`

The rich X-ray system becomes **selective rather than exploratory**.

Instead of opening many boxes, the presentation might use one or two extremely high-value reveals, for example:

- during the safety-monitor beat, momentarily reveal the earlier fact and later planned action that the system is correlating across time;
- at the close, briefly reveal the Corti-backed layers underneath the same phone state without leaving the product story.

Then remove the overlay and continue with the same live phone session.

This preserves Daniel's central presentation insight:

> the clinician UX remains clean, while the judges can temporarily gain X-ray vision into the complexity underneath it.

---

## 5. Candidate live spine after reconciliation

Still **not frozen**, but increasingly concrete:

`real phone encounter starts`
`-> ambient speech/context accumulates`
`-> useful facts / structured context persist`
`-> contextual question or assistance uses that encounter state`
`-> safety monitor catches a relationship across time before action`
`-> encounter resolves into structured documentation / handoff output`

Presentation-only overlay may expose why the strongest beat matters without modifying the clinician-facing app itself.

The important conceptual shift is:

> The demo and the explanation should increasingly be the same object.

The audience should see the product doing the thing that the words are claiming.

---

## 6. From-scratch rule surfaced by WebClaude

The supplied WebClaude update quotes a hackathon rule stating that code should be built from scratch during the event while documentation may be read beforehand and prewritten code is not allowed.

Current status:

- treat this as **important supplied-rule evidence**;
- Frank's runtime-verification record reports 39 commits by Frank on hackathon day in the inspected repository, which is useful provenance evidence;
- do not infer compliance/non-compliance for every asset merely from a filename or conceptual ancestry;
- architecture, design reasoning, prior knowledge, research, clinical knowledge, and context synthesis are not automatically equivalent to prewritten code;
- if presentation-relevant asset provenance remains ambiguous, verify the asset rather than letting the ambiguity dominate the project story.

The project's forward motion should remain centered on what the team actually built and can show.

---

## 7. Current synthesis priority

The next highest-value work is no longer broad brainstorming.

It is to converge:

`verified Frank runtime/code path`
`+ actual phone/UI runtime`
`+ presentation-only X-ray mechanism`
`+ one continuous clinical scenario`
`+ Corti API truth from docs`
`+ teammate contributions`

into one demonstrable presentation pipeline.

The night run should still wait until that baseline is concrete enough that autonomous optimization strengthens the same object rather than redefining it.

---

## 8. Evidence hierarchy for this update

For claims in this file:

1. direct runtime/test evidence in `14_FRANK_BUILD_RUNTIME_VERIFICATION.md`;
2. current official Corti docs at `docs.corti.ai`;
3. direct clinician/team statements preserved elsewhere;
4. WebClaude presentation interpretation;
5. this synthesis.

This ordering is deliberate.
