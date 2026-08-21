# 15 — The five-minute spine

## Status

**Candidate spine, not a locked script.**

This version is reconciled through:

- `14_FRANK_BUILD_RUNTIME_VERIFICATION.md`;
- `16_DEMO_SURFACE_RECONCILIATION.md`;
- `17_RED_TEAM.md`, including the PR #7 medical-coding correction;
- `19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md`.

It is still a hypothesis until the exact case/runtime path is rehearsed with a stopwatch.

**Every clinical-specific demo value requires Frank's approval and must match implemented rule/data paths.** Do not invent medication, dose, allergy, contraindication, or protocol content for narrative neatness.

---

## 1. The constraint that changes everything

The supplied briefing says approximately **five minutes of presentation/demo, followed by questions from three judges**. Every team member must briefly introduce themselves.

This forces three decisions:

1. **No architecture tour.** Architecture should become visible through the encounter or one surgical explanatory layer.
2. **One patient, one unbroken take.** The project argument is continuity of context. Restarting separate feature demos weakens it.
3. **Crowd comprehension matters.** Crowd voting is 20%; a non-specialist must understand the value without decoding thirteen edge functions.

---

## 2. Time budget — primary 300-second version

| Beat | Seconds | Running |
|---|---:|---:|
| Four introductions | 25 | 0:25 |
| Problem / context framing | 30 | 0:55 |
| **Single continuous demo** | **180** | **3:55** |
| What makes it more than a scribe | 45 | 4:40 |
| Close | 20 | 5:00 |

Also rehearse a **135-second compressed demo cut**. Do not average the two timing interpretations. The shorter cut removes lower-priority retrieval/question material before it removes the safety, note, or handoff spine.

---

## 3. Problem beat — approximately 30 seconds

A strong observed example from the supplied project context is the general-assistant failure around an acute fentanyl question: the literal sentence was interpreted without the surrounding prehospital situation.

Presentation principle:

> **Strip away the context and you can change what the question means.**

Candidate one-sentence project problem:

> **In acute care, important context is easy to lose as the encounter evolves and crosses boundaries. We keep enough of it alive to remain useful later.**

Do not turn this into an unsupported claim that every dispatch/hospital boundary is technically integrated today.

---

## 4. Demo — primary 180-second continuous encounter

Preloaded/synthetic approved audio is currently the safest default because the Corti briefing explicitly permits it and the code has real microphone/sample-rate/secure-context failure surfaces.

The **application still runs**; only the input is stabilized.

| # | Beat | Approx. sec | Audience sees | Main value |
|---|---:|---:|---|---|
| 1 | Encounter begins | 30 | speech becomes an evolving timestamped clinical context/event log | ambient STT · working system |
| 2 | In-context question, if time | 35–40 | clinician asks via the implemented wake/query path; answer/relevant source appears | agentic/text generation · clinical relevance |
| 3 | **Safety/context moment** | 45 | an earlier fact becomes relevant when a later planned action/drug is mentioned; warning appears before action | **insight / beyond scribe** |
| 4 | Stop → structured note | 30 | encounter material becomes a structured MIST/ABCDE-style note | text generation · prototype |
| 5 | Handoff manifestation | 30–35 | QR/handoff artifact is generated/scanned in the demonstrated receiving-side flow | continuity · crowd comprehension |

### Important boundary on beat 5

The QR implementation is real. Do **not** claim production Epic/EHR integration unless new evidence establishes it.

Safe framing:

> **This is the handoff artifact we can show today; production hospital integration is the next deployment boundary.**

Frank's first-hand workflow evidence that information can reach the receiving team before physical arrival is separate clinical/workflow context; do not silently equate that with production integration of this exact QR implementation.

---

## 5. Beat 3 is currently load-bearing

Everything else can be interpreted as excellent ambient documentation. Beat 3 makes the continuity argument visible.

The verified rule-engine mechanism compares encounter facts across time rather than requiring the two statements to be adjacent.

Candidate consequence line:

> **That relevant fact was stated earlier. Nobody had to re-read it. The system was still holding it when the later action appeared.**

Sharper contrast:

> **A scribe records what you said. This can check what you said earlier against what you are about to do now.**

The specific clinical pairing is `[FRANK]`: select one that is guaranteed by the implemented rule/data tables.

### One X-ray moment

This is the one place where the presentation-only X-ray layer currently earns its time.

For <= ~20 seconds, the same product state may gain a judge-facing overlay showing:

`earlier fact -> retained encounter context -> later planned action -> rule/safety evaluation -> alert`

It must **replace narration**, not become a separate architecture excursion.

Then disappear back to the product.

---

## 6. Beyond a typical scribe — approximately 45 seconds

Use only what time earns.

### 1. It can stay silent

The project contains a negative-control/relevance-gating idea: irrelevant retrieval should not be forced merely to make the AI look active.

Use measured percentages only if their provenance/measurement is explicitly attributed and the team wants them on stage.

### 2. It checks what is missing, not just what is wrong

Use exactly:

> **The rule engine checks for what's missing, not just what's wrong.**

Do not claim this was intentionally derived from Daniel's broader context-architecture doctrine unless Frank confirms that implementation intent.

### 3. Different retrieval shapes can be chosen for different corpora

If time remains, explain the deliberate difference between document-selection and passage-search architectures. Drop this before cutting the safety/context point.

---

## 7. Corti coverage — current reconciled state

The supplied briefing names five areas and asks teams to use at least four:

1. dictation;
2. speech-to-text;
3. ambient speech-to-text;
4. text generation;
5. medical coding.

### Current build

The verified implementation maps the first four.

Closer inspection found three distinct transcription surfaces:

- batch/pre-recorded transcript path;
- stateful ambient `/streams`;
- stateless real-time audio-bridge `/transcribe`.

That makes the four-area story stronger than the earliest endpoint-only mapping suggested.

### Medical coding — optional fifth, not a blocker

Coding is **absent from the currently verified Frank build**.

However PR #7 corrected the earlier availability assumption using direct current Corti documentation. The current stateless surface is documented at:

`POST https://api.${ENVIRONMENT}.corti.app/v2/tools/coding/`

The existing auth helper already follows the required bearer-token + tenant-header pattern.

Current rule:

> **Test tenant entitlement once. If it works and implementation remains tiny, codes can appear on the already-produced note or be mentioned in the close with essentially no new demo beat. If it fails or expands, drop it immediately.**

Four areas already satisfy the stated minimum.

For Danish coding, current corrected documentation evidence supports **SNOMED CT-DK**; do not improvise ICD-10-DK as a documented Corti system.

### Agentic-framework depth

Code inspection indicates seven Corti-agent integrations/uses.

Do not show seven agents individually. Mention agentic depth concisely and bank the exact architecture for Q&A/X-ray evidence.

---

## 8. Rubric coverage check

| Criterion | Current demonstration strategy | Confidence before rehearsal |
|---|---|---|
| Clinical relevance | safety/context beat + handoff/clinical workflow grounding | strong conceptually; case requires Frank sign-off |
| Corti API | four mapped product areas; optional bounded fifth-area coding test | strong code mapping; final live path still to verify |
| Working prototype | one unbroken application flow | substantial build evidence; stage path not yet rehearsed |
| Insight / ambition | context survives across encounter; action-aware safety beat; selective silence/missing checks | strong |
| Crowd voting | one patient, one story, minimal architecture narration | strong hypothesis; rehearsal needed |

---

## 9. Speaking allocation — still not fully grounded

Earlier candidate allocation:

- Frank: clinical/problem credibility + possibly demo narration;
- Daniel: context/beyond-scribe synthesis + close;
- Mihai: possible demo-driving/UX role;
- fourth teammate: **still ungrounded in the shared evidence**.

Do not freeze this table by inference.

Every person needs a ~5–6 second introduction, but narration can remain deliberately uneven to preserve one continuous story.

Resolve with the actual team before baseline freeze.

---

## 10. Failure plan

### Preferred input

**Preloaded/synthetic approved audio** unless live microphone rehearsal proves safer/better.

### Connected path fails

Use the verified **interactive zero-backend demo-only mode**.

Current working build invocation at the last inspected Frank commit:

`VITE_DEMO_ONLY=1 npx vite build`

Known issue: documentation names `npm run build:demo`, but that script does not exist at the inspected commit.

### Display/application catastrophe

Have a short recording of the already-verified intended path as last resort.

### Critical rehearsal requirement

The fallback switch is not a fallback until someone has rehearsed it.

---

## 11. Presentation surface — phone is optional embodiment

The implementation is a **mobile-format web app**, not a native/PWA phone package.

Therefore:

- laptop browser can run the real application;
- phone browser can run the real application;
- scrcpy can still create a compelling "this is what the clinician holds" stage experience;
- but phone mirroring adds moving parts without adding functional fidelity.

Choose after rehearsal.

If phone is used with microphone capture, test the exact handset/HTTPS path because the implementation has a hard 16 kHz guard and browser secure-context requirements.

---

## 12. What must NOT be claimed

Without new evidence, do not claim:

- production Epic/EHR integration;
- production 112/dispatch ingestion;
- complete dispatch-to-hospital technical integration;
- longitudinal patient-history integration;
- independently reproduced live Corti latency/accuracy figures;
- medical coding already implemented;
- keyterms already implemented;
- phone mirroring is required for authenticity/fidelity;
- the final case/timing/speaking flow is already frozen.

Use the stronger boundary language:

> **Here is the boundary we can close and demonstrate today; here is the next boundary this architecture can reach.**

---

## 13. Remaining decisions before this becomes the baseline

1. Check current Frank repository HEAD against last directly verified `b1f816b`.
2. Run the exact intended connected path on the intended presentation environment.
3. Rehearse the interactive demo-only fallback switch.
4. Choose laptop browser vs phone browser/mirroring from rehearsal evidence.
5. Lock exact synthetic case + Frank sign-off.
6. Resolve Mihai/fourth teammate + speaker/driver roles.
7. Stopwatch-rehearse both ~180s and ~135s demo cuts.
8. Optionally make one medical-coding entitlement test; implement only if it stays tiny.
9. Record exact baseline commit/reference(s).
10. Only then freeze the spine and unblock `NIGHT_RUN.md` optimization.