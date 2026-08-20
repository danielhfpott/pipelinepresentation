# 17 — Red team: what breaks, ordered by severity

## Status

Adversarial pass over the demo and the submission, at `Clinlog/hackathon-ppj` commit `b1f816b`. Incorporates corrections relayed from the Claude web chat on 2026-08-21.

Ordered by **what ends the project**, then by what damages it, then by what merely costs points.

---

## 1. From-scratch rule compliance — CHECKED, AND THE REPOSITORY IS CLEAN

**The risk:** the hackathon rule states *"build from scratch… prewritten code is not allowed."* Prewritten code in the submission is disqualifying, and git history makes it visible to anyone who scrolls.

**Verified against the full unshallowed history of `Clinlog/hackathon-ppj`:**

| Window | Commits | Content |
|---|---|---|
| 08-18 → 08-19 | 12 | **59 `.md`, 32 `.pdf`, 1 `.gitignore` — nothing else** |
| 08-20 11:14 → 21:17 | 27 | all application code |

**No `.ts`, `.tsx`, `.mjs`, `.js`, `.py`, `.sql`, or `.json` file exists in any pre-hackathon commit.** The first commit is explicitly labelled *"provenance commit, no application code"* — Frank drew this line deliberately, before the event, and the history proves he held it.

**The application code begins at 08-20 11:14 and is continuous through 21:17.** This is the strongest possible answer to a provenance challenge: not a claim, a verifiable timeline.

### The one thing to be ready to explain

Three hackathon-day commits are large: 12,054 insertions (11:24), 6,911 (11:28), 6,850 (11:46). A judge scrolling could read bulk as suspicious.

The honest answer is straightforward and should be rehearsed rather than improvised:

- the two largest are **corpus data** — the Danish VIP corpus and English guideline chunks. **Data is explicitly permitted** by the rule, and public/provided datasets are allowed.
- the 6,850-line commit is the web client, **written on the day by Claude Code from the specification in `viden/16`** — and that specification was committed publicly *two days earlier, with no code in it.*

That structure — spec committed openly in advance, code written on the day — is more transparent than most teams will manage. **It is an asset, not a liability, provided nobody is caught improvising the explanation.**

### Residual risk, not yet checked
This verifies **Frank's** repository. If anything from `hackprep`, the earlier TypeScript library, or the RAG work is ever merged into the submission, this clean result is void. **Do not merge prewritten code into the submitted repo.**

---

## 2. The demo-length numbers disagree — resolve before rehearsal

Two figures are in circulation and they are not compatible:

| Source | Reading | Implied demo time |
|---|---|---|
| `08_CORTI_…` §5, quoting the briefing | *"a five-minute demo, followed by a few minutes of questions from three judges"* — Q&A is **after**, outside the five | ~180 s |
| Claude web chat | intros **and** judges' questions sit **inside** the five | ~135 s |

The transcript wording supports the first reading — *"followed by"* places questions outside. **But the difference is 45 seconds of demo, which is a whole beat.**

**Do not average these.** Build the run sheet at ~180 s and rehearse a **135-second cut** that drops beat 2 (the in-context question) and keeps beats 1, 3, 4, 5. Then the answer to "which is it?" stops mattering, because both are rehearsed.

The spine already degrades in the right order: `15_…` §5 says keep "it can stay silent" and drop the two-retrieval-architectures point first.

---

## 3. Medical coding — closed, drop it

Doc `14_…` §3 flagged that coverage sits at exactly 4 of 5. **That question is now resolved as a non-action**, on two independent grounds:

1. **It may not be reachable.** Corti's documentation reportedly states the coding endpoint is available per-customer and requires customer-specific tuning. A hackathon tenant probably cannot call it. *(Relayed claim — worth 60 seconds with an on-site Corti engineer, not worth an implementation attempt.)*
2. **Even if reachable, it costs demo time you do not have** (§2), to satisfy a minimum already met.

**Revised recommendation: present four areas confidently. Do not build the fifth.** If a judge raises it, the answer is that coding is a per-customer tuned capability outside a hackathon tenant's reach — which demonstrates knowing the platform rather than a gap.

This supersedes `14_…` §3 and `15_…` §10 item 1.

### The collapse risk from doc 14 §3 is smaller than I stated

I flagged that dictation and batch speech-to-text both resolve to `/v2/interactions/` and could be read as one area. Closer inspection shows **three genuinely distinct transcription surfaces** in the code:

| Mode | Endpoint |
|---|---|
| batch / pre-recorded | `/v2/interactions/{id}/transcripts/` |
| stateful conversational (ambient) | `/v2/interactions/{id}/streams` |
| stateless real-time dictation | `wss://api.{env}.corti.app/audio-bridge/v2/transcribe` |

All three modes are implemented. That is a stronger position than doc 14 §3 recorded, and it should be stated in one clause if the coverage question is ever raised.

---

## 4. Stage failure drills — no recovery time exists

At 135–180 seconds, **there is no room to recover from anything**. Every failure must have a pre-decided, one-action response.

| Failure | Response | Pre-verified? |
|---|---|---|
| Wifi / Corti down | Demo-only build — fully interactive, **zero backend**, QR still genuinely encodes (`16_…` §4) | build verified; **switch not rehearsed** |
| Microphone refuses | Preloaded audio — explicitly permitted (`08_…` §6) | must be the default, not the fallback |
| Mic returns wrong sample rate | App throws in Danish. **No recovery mid-demo** — go to preloaded | `16_…` §3 |
| Ambient WebSocket drops | App surfaces it (commit `8f623a3`) rather than ticking dead — say it out loud, it is a *feature* | code-evidenced |
| Laptop/venue display fails | Screen recording of the verified path | **does not exist yet** |

**The single highest-value rehearsal tonight is the demo-mode switch** (`viden/15` step 66 already says this). It is the only fallback that preserves an interactive demo, and it has never been practised.

**Recommendation: run the demo off preloaded audio by default**, not as a fallback. Live microphone capture on stage buys authenticity worth less than the risk it carries, and the rules already permit preloading.

---

## 5. Claim hygiene — one sentence to change

`15_…` §5 currently frames the `"missing"` finding category as doc `03_…` §6's *"did I do everything I reasonably could?"* encoded as a rule.

**That is an intent claim, and it may simply be false.** If Frank built the omission check independently — which is likely, since it is ordinary clinical-documentation practice — then "we encoded our doctrine into the rule engine" is a story imposed on the code after the fact. It is exactly the inference-becoming-fact failure `02_…` exists to prevent.

**Use this instead, which is true either way and lands harder:**

> **"The rule engine checks for what's missing, not just what's wrong."**

Keep the doctrine connection in the context documents as reconciliation. Keep it off the stage.

---

## 6. The fourth teammate is now blocking

`00_…` warns against inventing this person's stream, and `15_…` §7 left their slot unassigned. At five minutes, that is no longer a documentation gap — it is **live exposure**:

- every member introduces themselves, so an ungrounded member is dead stage time;
- a judge may direct a question at them;
- crowd voting is 20%, and a visibly disconnected team member costs exactly there.

**This is a people problem, not a code problem, and it cannot be solved by any agent overnight.** It needs Daniel or Frank to resolve it with the team before rehearsal.

---

## 7. Unclaimed upside: keyterms are not being used

Corti's transcription reportedly supports **keyterms** — a caller-supplied vocabulary list that biases recognition toward supplied terms, for proper nouns and unreliable general terms.

**Verified: no keyterm, vocabulary, or biasing parameter appears anywhere in the repository.**

Why this matters more than it sounds: the spoken-Danish-to-clinical-terminology gap is the problem the earlier retrieval work spent weeks on. Corti may close it at the speech layer instead. And a keyterm list is **data, not code** — permissible under the from-scratch rule with no provenance question at all.

**Cost/benefit:** if the demo runs off preloaded audio (§4), a keyterm list directly improves the transcript the judges read on screen. It is a small, targeted, low-risk win — **but it is Frank's lane and it needs a live test**, so it belongs in the morning only if the demo-mode rehearsal (§4) is already done.

Either result is honest and interesting to say on stage: either Corti's Danish medical STT closes the gap, or it does not and the retrieval-layer reasoning still stands.

---

## 8. Bank the agents, do not demo them

Seven Corti agents run, and *"best use of the agentic framework"* is a named bonus superlative (`08_…` §4). But seven agents cannot be shown in ~2–3 minutes without becoming the feature tour `15_…` deliberately rejects.

**Capture the superlative at zero demo cost:** one clause in the close, visible in the README, and a prepared answer for the judge who asks which agents and what each does.

This also settles a separate open question: the Agent SDK was flagged as private-preview and access-unconfirmed. **Seven agents running against the tenant is the confirmation.**

---

## 9. What this pass did not test

- No live Corti call was made (no `.env.corti`); doc `14_…` §6 still bounds every runtime claim.
- The deployed Supabase project was not exercised.
- No timing has been measured with a stopwatch. **Every duration in this document and in `15_…` is an estimate until someone runs it.**
- Mihai's stream remains uninspected.
