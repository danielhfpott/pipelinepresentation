# CLAUDE.md

Corti hackathon — acute / prehospital. Live build. Read this fully; it is short.

---

## First action of every session

```
tail -40 RUN_LOG.md
```

Do this before anything else. It tells you the current state, what broke
last, and what is next. Do not infer state from the code — the log is
authoritative for *intent*, the code is authoritative for *behaviour*,
and where they disagree, say so out loud instead of picking one.

## Last action of every session

Append an entry to `RUN_LOG.md` in the format defined at the top of that
file. A session that ends without a log entry has lost its work for the
next session.

---

## The throughline

> The patient is the source of truth. Everything the doctor sees is a
> derived artifact. Today the derivation chain is lossy and silent.
> We make each hop less lossy, and never silent.

Every feature must name which hop it de-lossifies. If it cannot, it is
not in scope. Full chain and scope test: `PRESENTATION_BUILD.md` §1.

---

## Standing doctrine

- **Run it, don't read it.** Reading code is not evidence it works.
- **Source stays authoritative.** Derived artifacts labelled as derived.
- **Loud failure.** No silent fallbacks. On stage, a silent fallback
  looks exactly like success until someone asks.
- **Per-item reporting, never aggregated.** "12/12 pass" hides which
  three are hardcoded.
- **No invented medical content.** Every synonym, dose, and guideline
  mapping is Frank-authored or it does not exist. Inventing clinical
  content is a patient-safety hazard, not a shortcut.
- **Measure, don't estimate.** `[MEASURE]` markers in any doc are holes,
  not prompts to write plausible text. Run the command, paste the output.

---

## Vocabulary — binding

| Use | Never use | Why |
|---|---|---|
| `cprnr` | bare `CPR` | Danish personal identifier — the lookup key |
| `hjertestop` | bare `CPR` | cardiopulmonary resuscitation |
| retrieval, orchestration, prompting, inference | "trained", "our model learned" | **we train nothing.** No fine-tuning, no weights. One judge asking "trained on what?" ends the pitch |
| synthetic, clinician-authored | "patient data", "real case" | the demo case is authored by Frank, not from a patient |
| hastegrad A / B | "priority", "urgency level" | the actual Danish operational term |

Bare `CPR` is ambiguous between two incompatible meanings and is banned
in all files, prompts, variable names, and slide copy. `scripts/preflight.sh`
enforces this.

---

## Ownership — do not cross these lines

| Area | Owner | Your role |
|---|---|---|
| Phone app UI | Mihai (Lovable) | render it, never reimplement it |
| Clinical case, dictation script, guideline mapping, all synonyms | Frank (specialist physician) | never author clinical content |
| Corti API pipeline internals | pipeline owner | integrate, don't rewrite |
| Presentation shell, context architecture | Daniel | build here |

Daniel orchestrates context architecture. He is **not** the implementer of
granular functionality in other people's areas. If a task requires
changing someone else's area, stop and say so rather than doing it.

---

## Hard rules

0. **BUILD FROM SCRATCH. Prewritten code is not allowed.** Corti's event
   rule. Nothing written before 19 August may enter the submission — not
   `hackprep`, not `papalyd1`, not the TypeScript module library, not any
   other repo. Architecture and design decisions are fine; code is not.
   Git history is the evidence. See `HACKATHON_TRUTH_DOCTRINE.md` §11.
   **If a task would import prewritten code, stop and say so.**
1. **Never push without explicit approval from Daniel.**
2. **Run `scripts/preflight.sh` before any push.** It must exit 0.
3. **VIP guideline PDFs must never reach a public repo.** They are under
   a rights agreement. See `HACKATHON_TRUTH_DOCTRINE.md` §4.
4. **No number appears anywhere without a command that regenerates it
   today.** Including numbers that were true last week.
5. **Nothing claims to run unless it ran.** Tier discipline:
   `HACKATHON_TRUTH_DOCTRINE.md` §1.

---

## Document map

| File | Read when |
|---|---|
| `RUN_LOG.md` | start and end of every session |
| `HACKATHON_TRUTH_DOCTRINE.md` | scope, tiers, or any claim is in play |
| `PRESENTATION_BUILD.md` | touching the presentation shell |
| `DEMO_SCRIPT.md` | rehearsal, stage, or fallback planning |
| `scripts/preflight.sh` | **run it** before every push and before stage |

Do not load documents you do not need. Context spent on orientation is
context not spent on the task.
