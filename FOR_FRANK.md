# For Frank — read this one file

Daniel's repo, written to be readable without navigating anything. Everything below is checked against your code at `1721a00`, not remembered.

---

## 1. The slide you asked for

> *"beskrive ultrakort hvilke corti elementer indgår i hele pipelinen"* · *"Måske én slide"* · *"ikke overcrowded, kun nævne de experter/agents"*

Open **`presentation/continuum.html`** in Chrome and press **`S`**, then **`→`** four times. That frame *is* the slide — projector-ready, nothing to build.

Its content, if you would rather rebuild it in your own tool:

| | |
|---|---|
| **Speech → text** | `/transcripts` · `/streams` · `/transcribe` |
| **Text → document** | Guided Documents — 11-section PPJ template |
| **Corti experts** | `pubmed` · `clinical-trials` · `medical-calculator` · `memory` |
| **7 agents** | anonymise · guideline router · RAG gate · reflect · section correct · ambient query · ambient safety |

Every name is taken from your own scripts. `reflect-agent` carries `pubmed-expert` + `clinical-trials-expert`, `safety-agent` carries `medical-calculator-expert`, `memory-query-agent` carries `memory-expert`.

---

## 2. Two things that need you, and only you

### 2a. `npm run build` is broken — twelve hours now

```
src/lib/akutBarn/labels.ts(84,32): error TS7053
src/lib/backend/serialQueue.test.ts(19,11): error TS6133
```

`npm run dev` and `vite build` are fine, so the app runs — but the documented build command fails. Fix verified against `1721a00`: `tsc -b` exits 0, **all 175 tests still pass**.

### 2b. The demo build could have shipped the real pipeline to a public page

`vite.config.ts` handles `--mode demo`, but `VITE_DEMO_ONLY` came from `.env.demo`, which is **gitignored**. On any machine without that file, `--mode demo` silently produced a *full-pipeline* bundle in `dist-demo/` — one that reaches the real Supabase from a password-protected public site.

Measured: with the flag forced, 567,699 bytes. Without, 573,496 — essentially the normal build. The patch makes `--mode demo` imply the flag so it cannot be un-demoed by accident, and adds the `build:demo` script your own `demoOnly.ts` comment already refers to.

**Both fixes are in `patches/frank-tsc-and-demo-build.patch`.** Four files, eight lines:

```bash
git apply patches/frank-tsc-and-demo-build.patch
npm run build        # exits 0
npm run build:demo   # -> dist-demo/
```

---

## 3. One number to check with Corti before it goes on a slide

You wrote **3 of 5** product areas. Daniel's transcript of the briefing says **at least 4 of 5**. Nothing in the repo settles it, and you are on site — sixty seconds with an organiser closes it.

It does not change what you have either way: **four are covered** — dictation, speech-to-text, ambient speech-to-text, text generation. Medical coding is the absent one. So the slide should show *what is used* and not assert the requirement number.

If you want the fifth: `POST /v2/tools/coding/` is documented with no access restriction, and `cortiHeaders()` already returns exactly the auth it needs. Roughly one edge function, no demo time. **Only if everything else is done** — and abandon it the moment the tenant refuses.

---

## 4. What your morning's work changed

`43887db` — **alerts retract when no longer valid.** Say this out loud on stage. A system that withdraws a warning it no longer stands behind is claiming more discipline than one that only fires.

`8344fab` — auto-structure on stop. The note now appears by itself; the run sheet reflects that.

`c7601d9` — safety agent no longer duplicates rule-engine alerts.

**Tests: 175 across 17 files, all passing** (was 159/16 yesterday).

---

## 5. The role-play changes the presentation, for the better

You wrote: *"Vi har forskellige roller, f.eks. far til patient, paramedic, doctor. Det fungerer sindsyg godt."*

That is stronger than anything on a slide, and it is the answer to crowd voting — 20% of the score, decided by non-specialists who respond to a scene, not an architecture.

Two staging notes, both easy to lose under nerves:

1. **Let the allergy pass without comment when it is first said.** Remarking on it gives away the ending.
2. **After the monitor fires, stop talking for two seconds.** The silence is what makes the room register it. Filling it is the most likely unforced error.

And show the time skip rather than hiding it — *"we're jumping ahead six minutes"*. Hiding the cut would be the same silent loss the project exists to criticise, and twenty seconds apart is not impressive.

---

## 6. What must not be said

- **Not** "integrated with Epic." The QR is real; the receiving tablet is an assumption.
- **Not** that 112 audio is ingested. You do not hear the call; that hop is roadmap, future tense only.
- **Not** "we trained a model." Nothing was trained — retrieval, agents, prompting.
- **Not** that CPR timing or audible compression prompts exist. They do not; only spoken alarms.
- **Not** that the `missing` check encodes anyone's doctrine. Say instead: *"the rule engine checks for what's missing, not just what's wrong."*

---

## 7. Provenance, if a judge asks

Your history answers it with a timeline rather than a claim: pre-hackathon commits contain **only** `.md` and `.pdf` — 59 and 32 of them, zero code of any kind. Application code begins **08-20 11:14** and runs continuously to now.

The three large day-one commits are corpus **data** (permitted) plus the web client written that morning from a spec you had committed publicly two days earlier *with no code in it*.

**Caveat:** this verifies your repo as it was. If the other participants' code has now merged in, that clean result no longer covers the merged tree.
