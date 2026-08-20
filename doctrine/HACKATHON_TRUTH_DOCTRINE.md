# HACKATHON_TRUTH_DOCTRINE.md

**Project:** Corti hackathon — acute / prehospital track
**Team:** Daniel, Frank, Mihai, +1
**Status:** LIVE. Presentation imminent.
**Purpose of this file:** stop contextual drift. Every agent, every teammate,
every Claude Code session reads this before touching the pipeline.

> This file contains `[MEASURE]` markers. A `[MEASURE]` marker is a HOLE.
> It is NOT an invitation to write plausible text. Filling a `[MEASURE]`
> with an estimate, a guess, or a nice-sounding sentence is the exact
> failure mode this file exists to prevent. Run the command, paste the
> output, then write the claim.

---

## 0. The one-sentence scope lock

We are building **one pipeline, one case, one demo spine.**

Anything that is not on the spine is roadmap. Roadmap is allowed on the
slide. Roadmap is never allowed to *sound* like the spine.

If someone proposes a feature and cannot say which tier it lands in
(§2), the answer is no. Not "later" — no. There is no later.

---

## 1. The truth tiers

Every sentence spoken on stage, every element on a slide, and every
README claim must be assignable to exactly one tier.

### T1 — RUNNING
Executes live, on our machine, in front of the judges, against Corti's
API. Reproducible right now. If the wifi dies we have a recorded run of
the *same* code.

**Language allowed:** "this is running", "watch it do X", "here's the
output".

### T2 — BUILT, NOT DEMOED
In the repo. Has a test. Works. Not shown live because of time.

**Language allowed:** "it's in the repo", "there's a test for it",
"happy to run it after".
**Language forbidden:** anything that implies it's part of the live run.

### T3 — DESIGNED / ROADMAP
Ceiling mic in the ambulance. EPIC integration. Edge inference. Shift
awareness. Real 112 audio ingest. Anything requiring hardware, a data
agreement, or a partner we don't have.

**Language allowed:** "this is where it goes", "the deployment shape is",
"next step is".
**Language forbidden:** present tense. Never "the app listens in the
ambulance." Always "the app is designed to listen in the ambulance."

> Corti told us not to let legal / administrative / bureaucratic barriers
> stop us from presenting an idea. That is permission to **imagine the
> deployment**. It is not permission to **fake the demo**. T3 is where the
> imagination goes, clearly labelled.

---

## 2. Tier assignment — FILL THIS IN

Frank / Daniel: assign every item. No blanks at presentation time.

| # | Capability | Tier | Evidence (file:line or test) |
|---|---|---|---|
| 1 | Audio in → transcript | `[MEASURE]` | |
| 2 | Transcript → Corti fact extraction | `[MEASURE]` | |
| 3 | Facts → guideline retrieval (RAG) | `[MEASURE]` | |
| 4 | Retrieval → covering / not-covered verdict | `[MEASURE]` | |
| 5 | Verdict → medication / dose surfacing | `[MEASURE]` | |
| 6 | Allergy / interaction check against history | `[MEASURE]` | |
| 7 | Event log with timestamps | `[MEASURE]` | |
| 8 | Pre-arrival brief generated for hospital | `[MEASURE]` | |
| 9 | CPR timing / audible prompts | `[MEASURE]` | |
| 10 | EHR background pull | `[MEASURE]` | |
| 11 | CPR-number keyed patient identity | `[MEASURE]` | |
| 12 | Human-in-the-loop confirm step | `[MEASURE]` | |

**Rule:** if fewer than four rows are T1, we do not have a demo, we have
a slide deck. Cut scope and make four rows real.

---

## 3. Claim ledger — things we might say, and whether we may

### 3.1 CORRECTED — response times

**Do not say:** "ambulance response times are 37 minutes, the target is 25."

That pair belongs to **B-kørsler** (urgent, not life-threatening), at the
**90th percentile**, not the median — the Region H service target is 90%
within 25 minutes, and actuals have run far above it.

For **A-kørsler** (the acute road we chose), the picture is the opposite:
- Political service target: 93% within 15 minutes.
- Actual: ~99% within 15 minutes.
- Median: ~6 minutes.

**Therefore: drop the response-time framing.** Arrival speed in acute
care is not the problem, and claiming it is will be corrected from the
audience by anyone who works in Region H.

**Say instead — and this is stronger:**
> "The ambulance gets there in six minutes. That part is solved. What
> isn't solved is the next forty: what gets documented, whether the
> guideline was followed, and what the hospital knows before the patient
> arrives."

This is defensible, it is Frank's daily lived experience, and it points
straight at what we actually built.

### 3.2 Corti's capabilities

Only claim what our own API calls demonstrably returned.

- We may say: what we sent, what came back, on which endpoint.
- We may not say: that Corti "diagnoses", "decides", or "detects" beyond
  what our logged responses show.

`[MEASURE]` — list every Corti endpoint we actually call, with one real
request/response pair captured from a run today.

### 3.3 "Model" / "training" — FORBIDDEN WORD

We are **not training anything.** No fine-tuning, no weights, no
gradient step. Several agents composed is not a trained model.

- Say: retrieval, orchestration, prompting, agent workflow, inference.
- Never say: "we trained", "our model learned", "the model was trained on".

One judge asking "trained on what?" ends the pitch if the answer is
"nothing, that was the wrong word."

### 3.4 The clinical case

The anaphylaxis case / 8-year-old case is **synthetic, authored by Frank,
a specialist physician.**

Say exactly that. Out loud. Once, early.

- It is not a real patient.
- It is not de-identified real data.
- Clinician-authored synthetic is a *strength* — say why: we can show the
  full pipeline without touching patient data.

### 3.5 Guideline corpus

- Say: which guidelines, how many, who authored them, that they are
  regional VIP guidelines used under our access.
- Do not say: that we have rights to redistribute them.
- Do not: put them in a public GitHub repo. See §4.

### 3.6 Any number at all

Every number on a slide needs a command that regenerates it today.
If it can't be regenerated, it comes off the slide. No exceptions,
including numbers that were true last week.

`[MEASURE]` — enumerate every number we plan to show. One row each:
number / command / value today / on slide? y-n.

---

## 4. BLOCKING — repository exposure

The submission must be on GitHub. The corpus includes VIP guideline PDFs
under a rights agreement.

**Public repo + those PDFs = republishing Region H's copyrighted clinical
guidelines.**

Required before any push:
1. Enumerate every VIP-origin file in working tree AND git history.
2. Remove from tracking; add to `.gitignore`.
3. If already in history, history rewrite or fresh repo — a `.gitignore`
   does not remove what is already committed.
4. Ship a `corpus/README.md` describing how to obtain the guidelines,
   plus a small synthetic stand-in corpus so the repo is runnable by
   someone without VIP access.
5. Screen-share discipline: never show the project root, the file tree,
   or the terminal `ls` during the demo.

---

## 5. Demo audio — RESOLVED, do not reopen

Open question in the notes: *"can we have the audio call transcription?
Otherwise the whole idea falls, right?"*

**No, it does not fall.**

**Frank reads the dictation aloud. We record it. We commit the file.**

- Frank authors the dictation script for the chosen case.
- Frank records it — phone voice memo is fine.
- Committed, deterministic, replayable.
- Announced on stage as synthetic, clinician-authored.

A specialist physician's actual voice reading a case he wrote is better
demo material than any TTS render, removes a dependency, and raises no
rules question at all.

### 5.1 Do NOT use papalyd1 — superseded

An earlier version of this file recommended `papalyd1` (PySide6 +
ElevenLabs) as the audio source. **That recommendation is withdrawn.**
It is prewritten code. See §11.

### 5.2 Real 112 audio

Never. It is a liability, not an asset. T3 — "the deployment ingests the
dispatch audio stream" — and it stays there.

---

## 6. Human in the loop — answer it, don't hedge it

Judges will ask. The honest answer is also the good answer:

> "The doctor is the author. The system drafts and the doctor confirms.
> Nothing leaves the ambulance as fact until a human signs it. That's
> not a limitation we accepted — it's the design."

If there is a confirm step in the code, show it (T1). If there isn't,
say it's the next commit and mean it. Do not claim it exists.

`[MEASURE]` — does a confirm / sign-off gate exist in the running path?
file:line or NO.

---

## 7. The verdict gate

There is a covering / not-covered verdict in `serve.py`. It has
previously been dropped before reaching the TypeScript surface.

**If it does not survive to what's on screen, we cannot claim it on stage.**

`[MEASURE]` — trace `verdict` end to end. Per hop: file, line, field
name, survives y/n. Name the hop where it dies.

---

## 8. Standing doctrine (carried from CLAUDE.md)

- **Run it, don't read it.** Reading code is not evidence it works.
- **Source stays authoritative.** Derived artifacts labelled as derived.
- **Loud failure.** No silent fallbacks. A silent fallback on stage looks
  exactly like success until someone asks.
- **Per-item reporting, never aggregated.** "12/12 pass" hides which
  three are hardcoded.
- **No invented medical content.** Every synonym, dose, and guideline
  mapping is Frank-authored or it does not exist. Inventing clinical
  content is a patient-safety hazard, not a shortcut.

---

## 9. Claude Code prompts — paste directly

### 9.1 Tier audit
```
Read HACKATHON_TRUTH_DOCTRINE.md section 2. For each of the 12
capability rows, determine its tier by measurement, not by reading:

- T1 requires: an entrypoint I can run right now that exercises it end
  to end. Run it. Paste real output.
- T2 requires: a passing test. Run the test. Paste real output.
- T3 = everything else.

Report one row per capability: number, tier, exact command run, exact
output (truncated to 5 lines), file:line of the implementation.

If a capability is partially implemented, it is T3 until the whole path
runs. Do not round up. Do not describe intent. If you cannot run it,
write CANNOT RUN and name what is missing.
```

### 9.2 Number reproduction
```
Find every numeric claim in our slides, README, and demo script. For
each, locate the code path that produces it and re-run it against the
data as it exists on disk right now.

Report per claim: claim / command / value now / value claimed /
MATCH or DRIFT or NOT REPRODUCIBLE.

Do not aggregate. Do not estimate. Never substitute a nearby number.
If a number cannot be reproduced, say exactly what is missing.
```

### 9.3 Verdict trace
```
Trace the `verdict` field from serve.py to whatever the demo surface
renders. Report per hop: file, line, field name at that hop, value
survives yes/no.

Name the exact hop where it is dropped, renamed, or defaulted.
Measure only — do not fix in this pass.
```

### 9.4 Repository exposure
```
List every version-controlled file that originates from vip.regionh.dk
or is a VIP guideline PDF. For each: path, present in working tree y/n,
present in git history y/n.

Then list anything else in this repo that becomes visible if I
screen-share the project root: credentials, .env files, API keys,
patient-shaped data, internal paths.

Paths only. No summary. No reassurance.
```

### 9.5 Silent-fallback sweep
```
Find every place in the live demo path where a failure is caught and
execution continues with a default, placeholder, cached, or hardcoded
value.

Report per site: file:line, what fails, what is substituted, whether
the user-visible output differs from the success case.

Flag any site where a failure would look like a success on screen.
These are the ones that kill us live.
```

---

## 11. EVENT RULES — from Corti, binding

> "For this hackathon, we would like you to build from scratch. You can
> read through our documentation (docs.corti.ai) before the event, but
> **prewritten code is not allowed.** We have sample datasets, but
> anything publicly available is allowed as well."

The rule separates **code** from **data**. Code must be written during
the event. Data is permissive — Corti's samples, or anything publicly
available.

### 11.1 What this forbids

Anything written before 19 August that ends up in the submission:

- `hackprep` retrieval pipeline — BM25, e5, RRF, `serve.py`
- The TypeScript module library
- `papalyd1`
- Any other repo, module, or utility carried in

**Git history is the evidence.** A mature system arriving in one bulk
commit is visible to anyone who scrolls the repo. Judges can scroll.

`[MEASURE]` — inspect the commit history of the submission repo. Report
any commit that introduces a large volume of mature code at once, with
file count and line count. If one exists, that code was not written here
and must come out.

### 11.2 What this permits

- **Architecture, doctrine, design decisions, the throughline.** Ideas
  are not code. This is most of what Daniel contributes and it is fine.
- **Reading Corti's docs beforehand.** Explicitly allowed.
- **Publicly available datasets.** Explicitly allowed.
- **Assets authored during the event** — including Frank's recorded
  dictation.

### 11.3 The gray zone — do not argue it on stage

Using a pre-existing personal tool to *generate an asset* is ambiguous.
Nobody would call using ElevenLabs' own interface a violation, and a
wrapper around it is arguably the same thing — but "arguably" is not
where you want to be during judging.

**Resolution: don't enter the gray zone.** Frank records the audio (§5).

`[MEASURE]` — Corti engineers are on site. Ask one about asset
provenance. Sixty seconds. Log the answer in `RUN_LOG.md`.

---

## 12. Corti platform — what actually exists

From docs.corti.ai and corti.ai. Only claim capabilities we have called
and logged. Corti's own published numbers may be cited **as Corti's
claims**, never as our measurements.

### 12.1 The ordbro is a Corti feature — use it

Corti's STT supports **keyterms supplied at inference time** to bias
recognition toward your vocabulary, so proper nouns and terms unknown to
the model are recognised reliably.

**This is the term bridge, natively.** Everything worked out about the
spoken-Danish / clinical-terminology gap transfers as *knowledge*:

- Frank authors the keyterm list. Same authority model. Same
  patient-safety argument. Still no invented medical content.
- It is **data, not code** — the event rules treat data permissively
  (§11.2). Nothing is carried in.
- It closes the gap at the **STT layer**, not by patching retrieval.

`[MEASURE]` — build the keyterm list with Frank today. Run the demo audio
with and without it. Report the per-term difference. That A/B is one of
the strongest honest slides available: *here is the gap, here is what
closing it at the recognition layer does.*

### 12.2 Endpoints — and which one goes on stage

| Endpoint | Shape | Use |
|---|---|---|
| `/transcribe` | stateless WebSocket | real-time dictation, command-and-control |
| `/stream` | stateful WebSocket | conversational, tied to an ongoing interaction |
| `/transcripts` | async REST | batch, pre-recorded audio |

**All three share the same underlying pipeline, with no performance
difference between modes** (Corti's own statement).

**Stage decision: use `/transcripts` with Frank's recording.** It is the
reliable path, and because the pipeline is identical we can say the
real-time route is the same without hedging. Cite it as Corti's claim.

Also available: **speaker diarization** (segments transcript by doctor
and patient automatically) and **audio health events** (surface input
quality problems in real time, before the encounter ends).

Audio health events are **native loud failure** in a noisy ambulance —
our doctrine already implemented by the platform. Worth a slide.

### 12.3 Capability map

| Corti capability | Our hop | Status |
|---|---|---|
| **Speech to Text** — Danish supported, recently updated models; keyterm biasing | treatment → documentation | Core of the demo. §12.1, §12.2. |
| **Text Generation** — structured documents, fact extraction | makes derived facts inspectable | Our fact-extraction hop, named by them. |
| **Agentic Framework** | orchestration | `[MEASURE]` **Agent SDK is private preview, access on request.** Confirm before any slide says "agents." |
| **Medical Coding** | documentation fidelity | ⚠️ **Per-customer basis, requires customer-specific tuning.** Probably unavailable to us. Confirm before sliding it. |
| **Corti Models** — sovereign EU cluster, GDPR by default | deployment credibility | Patient data never leaves EU infrastructure. Why the roadmap is plausible in Region H. |
| **Embedded Assistant** — ambient scribing | — | Overlaps our documentation hop. Know it exists so we can say how we differ. |

### 12.4 Corti's published benchmarks — attribution rules

Corti publishes MedDictate figures against Dragon Medical One (WER and
false discovery rate).

If cited, they are **Corti's published numbers about Corti's model.**
Never "our benchmark," never "we measured." Attribution in the sentence
itself: *"Corti publishes..."* This is the same discipline as §3.6 —
a number we did not generate is not ours to assert.

### 12.6 FactsR — the derivation chain is already instrumented

**This is the strongest alignment between our thesis and Corti's
platform. Read it before finalising the demo beat.**

`GET /facts` returns, per fact:

| Field | Why it matters to us |
|---|---|
| `text` | the derived claim |
| `evidence[]` — `type`, `reference`, **`quote`** | **the utterance it was derived from.** The derivation is traceable back to the words. |
| `source` | machine-extracted vs. added — **derived artifacts labelled, natively** |
| `isDiscarded` | a clinician can reject a fact without it vanishing — append-only, not deletion |
| `group` / `groupId` | facts are categorised; the monitor compares across groups |
| `createdAt` / `updatedAt` | when it entered, when it changed |

Our throughline says the derivation chain is **lossy and silent.** Corti's
fact object answers the silent half in its schema. We did not have to
build this; we have to *show* it.

#### The demo consequence

Current beat: monitor fires, warning precedes administration.

**With evidence rendered:** monitor fires **and shows the exact spoken
words it fired on, from minutes earlier, with the timestamp.**

That is the difference between *"the system caught something"* and
*"here is precisely where it got that — go check me."* The second is the
entire pitch in one interaction, and it fits in two seconds.

`[MEASURE]` — is `evidence[].quote` captured and rendered, or dropped at
the surface? Same trace shape as `verdict` (§7). Report per hop: file,
line, field present y/n, name where it dies.

**This is a measurement, not a build order.** `src/` is Frank's (§ownership).
If it is already there it is free. If it is not, it is his call whether
a render change fits in the time left.

### 12.7 The published agent library — use it for positioning

Corti publishes named agents including: **Note Completeness**,
**Medication Reconciliation**, **Triage and Initial Assessment**,
**Compliance Guardrail**, **Rule Explainer**, ICD-10 Index Navigator,
Code Validation, Procedure and Diagnostic Entity Extractors, Surgical
Registry Intelligence, ICU Admission Summary.

Two consequences:

**1. The "missing" category has external backing.** Checking for omission
rather than error is a named concern in Corti's own framework — a
*Note Completeness Agent* exists.

This replaces the doc 03 §6 lineage claim, which was an assertion about
our intent and unverifiable. "Corti names this concern too, and our rule
engine implements it" is checkable, and stronger.

**2. Positioning for the agentic superlative.** Name our seven agents
against their published library. Where we do something they do not
publish, that is the differentiator, and it is the answer to the bonus
category rather than a claim about volume.

### 12.8 Gated endpoints — the answer to "why did you build your own"

**Contextual retrieval** (knowledge bases and guidelines at point of
care, returning a summary plus sources) and **explainability**
(identifying pertinent mentions of defined content within reference
texts) both exist — and both are marked *contact us*.

If asked why we built our own guideline retrieval: Corti's is
access-gated. Not that we did not look.

### 12.9 FactsR framing — Corti's words, attributed

Corti describes FactsR as breaking conversations into structured
clinical facts and validating each through **recursive reasoning**, as
against traditional ambient tools that pipe raw transcripts through
generic models after the consultation ends.

They publish a figure for time clinicians spend correcting those
summaries. If cited: **"Corti publishes..."** Never ours. §12.4 applies.

Corti's own words for this event: **"Build something a real care team
could use on Monday."**

That is the judging spirit and it matches our throughline. Every scope
decision resolves toward Monday, not toward the demo.

---

## 13. Schedule — hard

- **Fri 21 Aug** — final submissions, presentations to judges, prizes.
- **Event ends 17:00 CEST.**

`[MEASURE]` — exact presentation slot time and length, from the Notion
schedule. Everything in `DEMO_SCRIPT.md` §1 depends on it.

`[MEASURE]` — **the challenge text released Wednesday.** We do not have
it in any file. The presentation must answer the actual challenge. Find
it and paste it in here before finalising the spine.

---

## 10. Pre-stage checklist

- [ ] Every slide sentence assigned a tier (§1)
- [ ] Four or more T1 rows in §2
- [ ] Response-time claim removed (§3.1)
- [ ] Word "trained" absent from all material (§3.3)
- [ ] Case announced as synthetic, clinician-authored (§3.4)
- [ ] Every number regenerated today (§3.6)
- [ ] VIP PDFs out of tracking AND history (§4)
- [ ] Repo runnable by someone without VIP access (§4)
- [ ] Demo audio is committed synthetic, plays deterministically (§5)
- [ ] Human-in-loop answer rehearsed (§6)
- [ ] Verdict traced to screen or claim dropped (§7)
- [ ] Recorded backup run of the *same* code exists
- [ ] Screen-share shows only the app — never the file tree
