# DEMO_SCRIPT.md

The stage runbook. `PRESENTATION_BUILD.md` is how the shell is built;
this is how it is run.

Rehearse from this file. Do not rehearse from memory of the slides —
the failure mode is knowing the content perfectly and losing thirty
seconds to a keypress nobody practised.

---

## 0. The slot — measured, from the briefing transcript

**~5 minutes total.** Demo, plus questions from three judges, plus every
team member introducing themselves. Source:
`08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`.

This supersedes the 15-minute assumption in doc 00. **Roughly two-thirds
of the earlier presentation architecture does not fit and is cut.**

### 0.1 What is cut

- FLOW navigation with openable boxes — no time to click through
- DETAIL annotation hotspots — no time budget at all
- Mode switching as a narrative device
- Any segment that is a feature tour
- The roadmap segment as a spoken beat (it becomes one clause)

### 0.2 What survives

- The phone frame
- The tier badges — they answer "running or designed" without a sentence
- **One unbroken encounter.** No cuts between features.

`[MEASURE]` still open: projector resolution, clicker or laptop, and
whether we control the machine. A house laptop means no local files and
no localhost — plan for a URL and nothing else.

---

## 1. Time budget — 5:00

| Segment | Target | Who |
|---|---|---|
| Intros — 4 people | 0:32 | all |
| The problem, one sentence | 0:15 | one voice |
| **The encounter, unbroken** | **2:15** | one voice + Frank |
| Close, one sentence | 0:15 | same voice |
| Judge questions ×3 | ~1:40 | Frank clinical, Daniel architecture |

Three consequences, all of them binding:

**Intros are eight seconds each.** Name, then one clause naming what you
did. "Frank, specialist physician — I wrote the clinical case." Nothing
else. Rehearse them verbatim; unrehearsed intros are where four people
lose forty seconds they cannot recover.

**One voice runs the demo.** Continuity is the argument. Frank takes the
clinical beat and nothing else. Two voices maximum, and the handover is
rehearsed.

**Judge answers are one or two sentences.** Roughly 30 seconds per
question including the answer. The drafted answers in §3 are too long as
written — cut each to its first sentence and stop talking.

**Rule: the encounter runs uninterrupted.** No talking over it about
roadmap, no cutting away to show a second feature. If it runs, it is the
strongest thing in the room.

---

## 1A. The encounter — beat structure

The load-bearing beat is the safety monitor firing on a fact stated
early against a drug named much later, so the warning precedes
administration. Everything else is setup for that.

| Beat | What happens |
|---|---|
| 1 | Encounter opens, ambient capture running, timestamp visible |
| 2 | **The early fact is stated.** Let it pass without comment — commenting on it gives away the ending |
| 3 | **Visible time skip** — see §1B |
| 4 | The drug is named as planned, not yet given |
| 5 | **The monitor fires.** Warning precedes administration |
| 5A | **The evidence.** Show the quote it fired on, timestamped from minutes earlier — see §1D |
| 6 | Stop talking. Let it sit for two seconds before the close |

### 1D. The evidence chain — conditional on measurement

Corti facts carry `evidence[].quote`: the utterance the fact was derived
from. If that survives to the surface, beat 5A costs two seconds and
converts the demo from *"the system caught something"* to *"here is
exactly where it got that — go check me."*

That is the throughline demonstrated rather than asserted, and at 2:15
it is the highest value per second available.

`[MEASURE]` — doctrine §12.6. If the quote is not rendered, **cut 5A
entirely.** Do not describe evidence you cannot show; that is the tier
discipline applied to a beat instead of a badge.

### 1B. The time skip — show the cut, never hide it

In 2:15 you cannot play the minutes that separate the early fact from
the drug. But if they are twenty seconds apart, the catch is
unimpressive — the whole point is that a human under load would have
dropped it.

**Skip forward visibly.** The timestamp jumps on screen and the narrator
says so: *"we're jumping ahead six minutes."*

A hidden skip would be exactly the silent derivation loss this project
exists to criticise. Showing the cut is honest, it solves the timing
problem, and it is on-thesis. Do not smooth it over.

### 1C. The sentence that carries the pitch

> "The rule engine checks facts against facts across the whole
> encounter — and it checks for what is **missing**, not just what is
> wrong."

Say it once, after the monitor fires.

**Do not** say "we encoded our doctrine into the rule engine." That is a
claim about intent, and if the omission check was built independently it
is not true. The sentence above is true either way, and it is the more
striking one.

If a judge presses on the omission check, the backing is external:
Corti's own published agent library includes a **Note Completeness
Agent**. Checking for what is absent is a named concern in their
framework, not our idiosyncrasy. Doctrine §12.7.

---

## 2. The spine

### Opening — do not bury this

Open on the chain, not on the technology. The audience is a clinical AI
company; they already believe in the technology and do not yet know what
you think is broken.

> "An ambulance in Region H reaches a hastegrad A call in about six
> minutes. That part is solved. What the crew arrives knowing is a few
> words in a text field under a call number — the output of someone
> clicking boxes under time pressure. The patient is the source of
> truth. Everything after that is a copy of a copy, and every copy loses
> something silently."

Then: "We made each hop lose less, and never silently."

**Do not** open with response-time statistics. See
`HACKATHON_TRUTH_DOCTRINE.md` §3.1 — the numbers do not support the
framing and there are people in the room who know it.

### The case — say this out loud, early, once

> "The case you are about to see is synthetic. My father wrote it — he
> is a specialist physician. No patient data touches this system, which
> is exactly why we can show you the whole pipeline."

Announcing it is a strength, not a disclaimer. Deliver it as a design
decision, because it is one.

### Frank's segment

`[MEASURE]` — what Frank says, in his words, not drafted for him. He is
the clinical authority in the room and the only person on stage who has
done this at three in the morning. His credibility is the asset; a
script would spend it.

One thing to make sure he covers: what he currently does *instead*, and
how long it takes.

### The live run

Keys: `L` to enter, `Esc` to leave.

`[MEASURE]` — the exact sequence, one line per action, with what should
appear after each. Written so someone else could run it if you are the
one talking.

### The clever part

Keys: `D`, then hotspots.

This is where the pre-fetch constraint goes — warm, never narrow
(`PRESENTATION_BUILD.md` §3.3). It is the strongest idea in the project
and it needs a frozen surface to explain against.

> "We pre-load context at dispatch so retrieval is not happening at the
> worst possible moment. But the dispatch guess comes from the same
> lossy chain we just criticised. So pre-loading is allowed to make
> things faster to reach — it is never allowed to narrow what the doctor
> sees. And when the pre-load turns out to be wrong, the doctor watches
> it be wrong. Silently correcting would make us the problem again."

### The close

Return to FLOW, whole chain visible, tier badges readable.

> "Everything marked RUNNING ran on this machine just now. Everything
> marked DESIGNED is where it goes next. We would rather show you the
> difference than blur it."

That sentence is worth more than one extra feature. It is also the
answer to half the questions they will ask.

---

## 3. Questions to have answers ready for

Draft the answer, do not improvise it. **~30 seconds per question
including the answer.** Every answer below is too long as written — cut
to the first sentence and stop.

### 3.0 The two that are ours to raise, not theirs

**Agentic framework — bank it, do not demo it.**
Seven distinct Corti agents are running. "Best use of the agentic
framework" is a named bonus superlative, and right now the deck leaves
our strongest rubric-specific asset invisible.

Seven agents cannot be shown in 2:15 without becoming the feature tour
we cut. So: **one clause in the close, visible in the README, and a
prepared answer.**

> "Seven Corti agents, composed — the encounter is orchestrated, not a
> single call."

**Corti coverage — four of five, stated plainly.**
Medical coding is absent. `[MEASURE]` — the coding endpoint is
per-customer and requires customer-specific tuning; confirm with an
on-site engineer whether it is reachable at all before spending any
effort on it.

Risk: dictation and batch STT both resolve to `/v2/interactions/`, so a
judge who collapses them counts three, not four. **Name the four
distinctly** wherever they appear — in the close, the README, and the
answer — so the count cannot be read down.

> "Four of the five: speech to text, text generation, agents, and the
> embedded assistant. Coding needs per-customer tuning, so we did not
> claim it."

Volunteering the gap is stronger than being caught at it, and it is the
same discipline as the tier badges.

- **"Is a human in the loop?"** → The doctor is the only node with
  authority to attest. The system derives; the clinician signs. Nothing
  leaves as fact unsigned. (doctrine §6)
- **"What did you train it on?"** → Nothing. We train nothing. Retrieval
  and orchestration over Corti's API. Never let the word "trained" into
  the answer, including to deny it awkwardly.
- **"What if the retrieval is wrong?"** → Covering / not-covered verdict.
  We say when the guideline does not cover the situation instead of
  returning the nearest thing. `[MEASURE]` — only claim this if `verdict`
  survives to the screen (doctrine §7).
- **"Where does the guideline corpus come from?"** → Regional VIP
  guidelines, used under our access. Not redistributed. The repo ships a
  synthetic stand-in so anyone can run it.
- **"How would this get deployed?"** → Name it as roadmap. Ceiling mic,
  EPIC, edge inference. Present tense is forbidden here.
- **"What is actually running versus designed?"** → Point at the badges.
  This question is a gift; the shell already answers it.
- `[MEASURE]` — the question we are most afraid of. Write it down. Draft
  the honest answer. The honest answer is almost always fine; the
  improvised one is not.

---

## 4. Failure drills — rehearse each once

| If | Then | Rehearsed |
|---|---|---|
| Wifi is down | DETAIL for everything. Shell is offline by design. | ☐ |
| Phone app iframe blocked or blank | `Esc`, `D`, carry on. Say "here it is captured" — do not apologise or debug on stage. | ☐ |
| Corti API errors mid-run | Recorded backup run of the **same code**. Say it is a recording. | ☐ |
| Audio does not play | Read the dictation aloud. Frank can do this from memory. | ☐ |
| Projector rescales badly | Known-good fallback resolution, tested. | ☐ |
| We are over time | Cut the roadmap segment. Never cut the live run. | ☐ |
| Someone asks a clinical question mid-demo | Frank takes it. Do not answer clinical questions yourself. | ☐ |

**Debugging on stage is the single worst outcome.** Every row above ends
in "keep going," never in "let me just check something." The audience
forgives a fallback instantly and remembers a person hunched over a
terminal for two minutes.

### 4.1 At 2:15 there is no recovery time

This is the difference the short slot makes. In a fifteen-minute slot a
thirty-second stumble is survivable. Here it is a fifth of the demo.

- **Every fallback must be one keypress**, already bound, already
  rehearsed. If a fallback requires opening anything, it is not a
  fallback.
- **Decide the abort point in advance.** If the encounter has not
  reached the early fact by 0:40, switch to the recorded run and say so
  in four words. Do not wait to see if it recovers.
- **The recorded backup is not a last resort.** At this length it is a
  legitimate primary if the venue network is unreliable. A recording of
  the same code, announced as a recording, costs almost nothing and
  removes every live failure mode at once.
- **Nobody touches the laptop during judge questions.** The demo is
  over; leave it on the closing frame.

### 4.2 Blocking before rehearsal

- `[MEASURE]` **Fourth teammate — ungrounded, including their speaking
  slot.** Every member introduces themselves inside five minutes. This
  is now ten seconds of dead stage time and exposure if a judge directs
  a question at them. Resolve before rehearsing, not after.
- `[MEASURE]` **Mihai's stream is unmapped.** If it is in the demo path,
  it is a stage risk nobody has measured.

---

## 5. Pre-stage, T-minus 30

- [ ] `scripts/preflight.sh` exits 0
- [ ] Recorded backup run exists, of the code currently on disk
- [ ] Phone app loads from the actual venue network
- [ ] DETAIL screenshots match what LIVE currently shows
- [ ] Audio plays through the venue system at the right volume
- [ ] Laptop: notifications off, sleep off, battery in, second display
      arrangement fixed
- [ ] Browser: one window, one tab, bookmarks bar hidden, zoom at 100%
- [ ] Every terminal window closed — nothing showing the file tree
- [ ] Every tier badge reflects a measurement made today
- [ ] Timer tested (`T`)
- [ ] One full run-through, start to finish, without stopping to fix
      anything

That last one is the only rehearsal that counts. A run-through where you
pause to fix things has not tested the thing you actually need, which is
whether you can keep going when something is wrong.
