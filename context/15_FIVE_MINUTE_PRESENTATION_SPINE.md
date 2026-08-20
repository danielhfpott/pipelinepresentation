# 15 — The five-minute spine

## Status

**Candidate spine, not a locked script.** Built by reconciling the verified implementation (`14_FRANK_BUILD_RUNTIME_VERIFICATION.md`) against the stated rubric (`08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`) and the clinician-described workflow (`09_CURRENT_PREHOSPITAL_WORKFLOW_SOURCE.md`).

**Requires Frank's approval on every clinical specific.** Per `07_CONTEXTUAL_CLINICAL_ASSISTANCE_CASE.md`, no medication, dose, or protocol detail in this file may be invented. Where a clinical value is needed below, it is marked `[FRANK]` and must come from him or from the VIP/Akut Barn corpus.

---

## 1. The constraint that changes everything

The format is **~5 minutes of demo, then questions from three judges** — not 15 minutes. Every team member must also introduce themselves. With four people, introductions alone can consume 10% of the slot.

This forces three decisions:

1. **No architecture slide.** There is no time to explain thirteen edge functions. The architecture must be *visible in the demo*, not narrated.
2. **One patient, one unbroken take.** The thesis is that context survives across time and boundaries. Cutting between features destroys the argument it is trying to make.
3. **Crowd voting is 20%.** A non-specialist has to understand the value without any clinical background.

---

## 2. Time budget (300 seconds)

| Beat | Seconds | Running |
|---|---|---|
| Four introductions | 25 | 0:25 |
| The problem, in one sentence and one example | 30 | 0:55 |
| **Demo — single continuous encounter** | **180** | **3:55** |
| What makes it more than a scribe | 45 | 4:40 |
| Close | 20 | 5:00 |

Introductions must be rehearsed to ~6 seconds each — name, role, one clause. This is the single easiest place to lose half a minute.

---

## 3. The problem beat (30s)

The strongest available framing comes from `07_…`, because it is a real observed failure, not a hypothetical:

> Ask a general assistant *"how much fentanyl for a 20-year-old?"* and it may start talking about the opioid epidemic — because it treats the sentence as the unit of meaning.
>
> A paramedic drawing up fentanyl is not asking that question. **Strip the context and you change what the question means.**

Then the one-sentence problem:

> In acute care, context is rebuilt from scratch at every boundary — dispatch to ambulance, ambulance to hospital. **We keep it.**

**Why this beat earns its 30 seconds:** it makes the crowd understand the problem before seeing the product, and it sets up every later beat as an answer.

---

## 4. The demo (180s) — one continuous encounter

**Preloaded audio is explicitly permitted** (`08_…` §6), and `viden/17` requires the played dictation to sound spoken, not written — disordered, one self-correction, details remembered late. Use that.

The encounter runs **once**, start to finish. Nothing is restarted.

| # | Beat | Sec | What the audience sees | Rubric hit |
|---|---|---|---|---|
| 1 | Ambient on | 30 | The encounter starts. Speech flows into a timestamped clinical event log — not a wall of transcript, a structured record forming in real time | ambient STT · prototype |
| 2 | Question, in context | 40 | Clinician says **"Forklar…"** / **"Explain…"** and asks a real treatment question. It is answered from *this encounter's* context and the guideline corpus — with its source shown | agentic · text gen · clinical relevance |
| 3 | **The safety moment** | 45 | A fact stated **early** in the encounter fires against a drug named **much later**. The alert appears *before* administration | **insight & ambition** |
| 4 | Stop → note | 30 | The event log becomes a structured MIST/ABCDE note across the 11 sections. The clinician did not type | text gen · prototype |
| 5 | Handoff | 35 | QR scanned by the receiving tablet. **The information arrives before the patient does** | clinical relevance · crowd |

### Beat 3 is the presentation

Everything else is a very good ambient scribe. Beat 3 is not. The rule engine's own comment states the mechanism:

> *"They compare facts with facts, so they fire regardless of how the clinician phrased things and regardless of how far apart in the encounter the two statements were — no keyword matching, no LLM call, free to run on every update."*

Say the consequence out loud, because the audience cannot see it:

> **"That allergy was mentioned four minutes ago. Nobody re-read it. The system never stopped holding it."**

And the sharper line, which answers Corti's "beyond a typical ambient scribe" directly:

> **"A scribe writes down what you said. This checks what you said against what you're about to do."**

Rule 1 fires on a **planned** drug, not only an administered one — so the warning precedes the action. That is the difference between documentation and assistance, and it is the whole pitch.

**Clinical content for beat 3 is `[FRANK]`.** The mechanism is verified; the specific allergy/drug pairing must be his, drawn from the implemented `INTERACTIONS`/`CONTRAINDICATIONS` tables so the demo cannot fail live.

---

## 5. Beyond a scribe (45s)

Three claims, each defensible, in descending order of strength:

1. **It can stay silent.** `viden/17` calls the negative control the strongest and least-shown result: 96–100% correct refusal versus 63% for search. *"An incorrect guideline suggestion is more dangerous than none."* If beat time exists, **show** it; if not, say it.
2. **It watches for what is missing**, not only what is wrong. `FindingCategory` is `"keyword" | "contradiction" | "missing"` — the *missing* tier is the clinician's own retrospective question, *did I do everything I reasonably could?*, encoded as a rule.
3. **Two languages, two different retrieval architectures**, chosen deliberately by corpus shape — many small Danish instructions means an agent picks the document *for* you; one large English guideline means you search *inside* it.

If the 45 seconds must shrink, keep #1 and drop #3.

---

## 6. Rubric coverage check

| Criterion (20% each) | Covered by | Confidence |
|---|---|---|
| Clinical relevance | Beats 3 + 5; a practising physician on the team **already uses this in real work** (`09_…` §4) | strong |
| Use of Corti API | Beats 1, 2, 4 — **4 of 5 product areas**; see risk below | adequate, no margin |
| Working prototype | The unbroken take is itself the proof | strong |
| Insight & ambition | Beat 3 + §5 | strong |
| Crowd voting | One patient, one story, no architecture slide | strong |

### The one open risk
Medical coding is **absent**, so coverage is exactly the stated minimum of four. Because dictation and batch speech-to-text both resolve to `/v2/interactions/`, a judge who collapses them reads coverage as three. See `14_…` §3. This is a decision to take deliberately, not to discover on stage.

### Under-claimed asset
**Seven distinct Corti agents** are running. "Best use of the agentic framework" is a named bonus superlative. Beat 2 should say the word *agents* out loud — currently the deck would leave the team's strongest rubric-specific asset invisible.

---

## 7. Speaking allocation (four people, ~5 minutes)

Deliberately uneven. Four equal quarters would fragment a story whose entire point is continuity.

| Person | Owns | Why |
|---|---|---|
| **Frank** | The problem beat + narrating the demo | He is the clinician and he uses it in practice. His credibility is the team's scarcest asset — spend it where judges are deciding whether to believe the work is real. |
| **Daniel** | The "beyond a scribe" beat + close | Context architecture is exactly the argument in §5. |
| **Mihai** | Driving the demo machine | Frees Frank to speak. Also the natural voice for any UX point, given the Lovable/UI stream. |
| **Fourth teammate** | *unassigned — stream still ungrounded* | `00_…` warns against inventing this. Must be resolved with the team. |

Everyone introduces themselves; only two people carry narration. **Unresolved: whether Corti requires more equal speaking time.**

---

## 8. Failure plan

`viden/17` already specifies it: if the hall's wifi or Corti dies, **Demo mode** runs the whole flow, and **the QR is genuine** — it is pure client-side CP437 and works offline. `viden/15` step 66 says rehearse the switch once so it is not first attempted on stage.

Two additions from this verification:

- **`npm run build` was broken** at `b1f816b`; a verified four-line fix is held in `fix-tsc-build.patch` (`14_…` §4). Apply it before building any demo bundle.
- **The English template ships unvalidated** by Frank's own note. If the demo runs Danish, this never surfaces. **Recommend demoing in Danish** and mentioning English as breadth rather than showing it.

---

## 9. What must NOT be claimed

Directly from `14_…` §6 — none of this was observed:

- **the hospital EPJ integration.** The QR is real; the receiving tablet is an integration assumption. Say *"scans into the receiving system"*, never *"integrated with Epic."*
- Latency or accuracy figures as independently verified — they are Frank's own measurements. Attribute them: *"we measured…"*
- Dispatch/112 ingestion. Frank does **not** have audio contact with the 112 call (`09_…` §1). It is future scope.
- Longitudinal patient history. Explicitly blocked by data access today (`09_…` §7).

The honest and stronger framing for all four: **"here is the boundary we close today, and here is the next one."**

---

## 10. Open decisions

1. **Medical coding** — build it for margin, or present four areas confidently?
2. **The fourth teammate** — name, stream, and speaking role.
3. **Who submits**, and what the submitted repository actually contains.
4. **Frank's sign-off** on every `[FRANK]` clinical specific in beat 3.
5. **Rehearsed timing.** Five minutes is short enough that this spine is a hypothesis until it has been run with a stopwatch.
