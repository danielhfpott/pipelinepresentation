# presentation/

`continuum.html` — the presentation surface. Open it in a browser; no build, no
dependencies, no network beyond a webfont. Also published as an Artifact.

## Three modes, three audiences

| Mode | Key | Who it is for |
|---|---|---|
| **Map** | `M` | The team. The whole nine-hop continuum, every hop tier-badged. |
| **Run sheet** | `M` | The presenter. Timings, phone-handoff cues, rehearsal timer. |
| **Stage** | `S` | **The room.** Near-wordless. This is what a projector shows. |

Other keys: `X` reveal the mechanism · `D` failure drills · `←/→` step stage
frames · `Esc` leave stage · `Space` start/pause the timer · `→` next beat.

## Why Stage mode is nearly empty

Judges seeing paragraphs of our text is the failure doc 00 warns about — *"they
have an idea and some Markdown."* The phone holds the room; this page appears
only at the two crossover moments. Frame 3 says `→ PHONE` precisely so that
landing on it by accident tells the presenter the room is on the wrong window.

## Two timing profiles, because the sources disagree

Toggle in the transport bar. Doc 17 §2 says rehearse both rather than average
them.

- **Wide** — the briefing transcript says *"a five-minute demo, **followed by**
  questions"*, so Q&A sits outside the five. Demo 3:00.
- **Tight** — `doctrine/DEMO_SCRIPT.md` puts intros and three judges' questions
  inside the five, leaving 2:15 for one unbroken encounter. The wake-word beat
  is cut here: anything that is not setup for the safety moment goes.

## The rehearsal timer exists because every duration was a guess

Start, then `→` at each beat. It reports target versus actual per beat. Until
that has been run with a stopwatch, every number in the context docs — mine
included — is an estimate.

## Still owed

- `[FRANK]` the allergy/drug pairing on the safety beat must come from the
  implemented `INTERACTIONS`/`CONTRAINDICATIONS` tables so it cannot fail live.
- The evidence-quote beat is `[MEASURE]` — cut it if `evidence[].quote` does not
  render.
- The fourth teammate has no speaking slot.
