# 20 — Wake-up delta

## What this is

`.nightrun/STATE.md` recorded a final pre-sleep checkpoint at `main` = `bce42c1`. **`main` moved after that**, so this file is the delta and the morning order. It is deliberately short.

Read this, then `19_CANONICAL_CONSOLIDATED_CURRENT_STATE.md` only for anything below that surprises you.

---

## 1. What landed after the checkpoint

**PR #11 — `presentation/` and `doctrine/`.** Neither is mentioned in doc 19 or `CONTEXT_ENTRYPOINT.md`, because both were written before it merged. That is now repaired in this PR.

### `presentation/continuum.html`
One page, three modes, three audiences. Open it in any browser — no build, no dependencies.

| Mode | Key | For |
|---|---|---|
| Map | `M` | the team — nine-hop continuum, every hop tier-badged |
| Run sheet | `M` | the presenter — cues, phone handoffs, **rehearsal timer** |
| **Stage** | `S` | **the room** — near-wordless |

Stage mode is almost empty on purpose. Judges reading our paragraphs is the *"idea and some Markdown"* failure doc 00 names. The phone holds the room; this page appears twice, briefly. Frame 3 says only `→ PHONE`, so landing there by accident tells the presenter the room is on the wrong window.

Two timing profiles, per doc 17 §2 — rehearse both rather than average:
- **Wide** — transcript's *"followed by questions"* → Q&A outside the five. Demo 3:00.
- **Tight** — `doctrine/DEMO_SCRIPT.md` → Q&A inside, 2:15 for one unbroken encounter, wake-word beat cut.

### `doctrine/`
Six files that existed **only on Daniel's disk** and were invisible to every other agent: `DEMO_SCRIPT.md`, `HACKATHON_TRUTH_DOCTRINE.md`, `PRESENTATION_BUILD.md`, `RUN_LOG.md`, `preflight.sh`, and `CLAUDE_PROPOSED_WEBCLAUDE.md`.

**Unresolved and left for Daniel:** `CLAUDE_PROPOSED_WEBCLAUDE.md` is a 114-line replacement for the 11-line root router — a different governance model (self-contained, RUN_LOG-driven) versus the current one (minimal router into `CONTEXT_ENTRYPOINT.md`). It was **not** merged over the root file. Two agents proposing different constitutions is a human decision.

---

## 2. The morning order

### First — resolve the deadline. The sources disagree.
`00_READ_ME_FIRST.md` says submission closes **~14:00**, user-reported. The web-chat relay says the event ends **17:00 CEST** with submissions, presentations and prizes. **These are three hours apart and nothing in the repo settles it.** Everything below is scheduled against the wrong clock until this is confirmed. Also still unknown: the actual presentation slot time.

### Then, in order

1. **Send Frank the two patches.** Both verified, neither pushed, both in his lane:
   - the four-line `tsc -b` fix — `main` build is broken without it (doc 14 §4)
   - the missing `build:demo` script — `demoOnly.ts` documents a command that does not exist (doc 16 §4). Working form today: `VITE_DEMO_ONLY=1 npx vite build`
2. **`[FRANK]` — the allergy/drug pairing.** The safety beat's clinical content must come from the implemented `INTERACTIONS`/`CONTRAINDICATIONS` tables so it cannot fail live. This blocks rehearsal.
3. **Rehearse the demo-mode switch.** It is the only fallback that keeps an interactive demo, and it has **never been practised** (`viden/15` step 66 has said so for two days).
4. **Run the timer, both profiles.** Every duration in every doc — mine included — is an estimate until a stopwatch has run. This is the single cheapest way to find out the plan does not fit.
5. **The fourth teammate.** No longer a documentation gap; at five minutes it is dead stage time plus judge exposure, and crowd voting is 20%. A person has to fix this.
6. **Optional, only if 1–5 are done: medical coding.** `POST /v2/tools/coding/`, auth already provided by `cortiHeaders()`, roughly one edge function, needs no demo time. Takes coverage from 4/5 to 5/5. **Abandon immediately if the tenant is not entitled** — it must not become a submission-morning debugging session.

---

## 3. What is still true and should not be relitigated

Reconciled, with evidence, and listed here so no cold session reopens them:

- the presentation is **~5 minutes**, not 15;
- **the from-scratch rule is satisfied** — pre-hackathon commits contain only `.md`/`.pdf`/`.gitignore`; application code begins 08-20 11:14 and runs continuously. Answerable with a timeline, not a claim;
- medical coding **is** reachable; the "per-customer" wording applies to legacy endpoints;
- mirroring is **not** required for fidelity — it is a plain web app, so the laptop browser runs the identical bundle. The phone is a credibility choice, and a good one;
- the fallback is **not** a video — the demo-only build is fully interactive with zero backend;
- the `missing` tier must **not** be presented as our doctrine encoded into Frank's engine. Say: *"the rule engine checks for what's missing, not just what's wrong."*

## 4. The social and commercial dimension — currently unclaimed

Crowd voting is **20% of the score**, and *"best commercial idea"* is a named bonus carrying founder mentorship and investor introductions (`08_…` §4). The spine as written optimises for truth and mechanism and says nothing to either. That is a gap, not a virtue.

It does **not** get closed with marketing language — `00_…` forbids turning *saving lives* into a pitch. It gets closed by saying out loud things that are already true and currently unsaid:

- **There is already a user.** Frank is a practising physician who uses this in real work, and pre-arrival information already reaches his receiving team. That is not a projection; it is the strongest commercial sentence available and it costs four seconds.
- **The content is the moat.** Thirty-one Region H prehospital instructions are already ingested, in Danish, with an agent that knows when *not* to answer. Anyone can call an API; regulated regional clinical content with a refusal behaviour is the part that is hard to copy.
- **The buyer is a regional health service**, not a hospital department — which is also why EHR access is a data-agreement problem rather than an engineering one. Naming that correctly reads as knowing the market.
- **The unit of value is the boundary**, not the note: what it costs when context is rebuilt from scratch at every hop.

### On performance, since the room is part of the score

The demo is a performance and should be staged as one. Two instructions already in `doctrine/DEMO_SCRIPT.md` do most of the work and are the easiest things to lose under nerves:

1. **Let the early fact pass without comment.** Remarking on it gives away the ending.
2. **After the monitor fires, stop talking for two seconds.** Silence is what makes the room register that something happened. Filling it is the single most likely unforced error.

A judge who is *told* the system is careful evaluates a claim. A judge who *watches* it stay silent on the negative control, and then fire before a drug, forms an impression — and impressions are what get voted for.

---

## 5. What was never verified

No live Corti call was ever observed from this side — no `.env.corti`, no deployed project. Every "Built" claim is code-evidenced only. The latency and accuracy figures are Frank's own measurements, credible and specific, and not independently reproduced. Mihai's stream has still never been inspected.
