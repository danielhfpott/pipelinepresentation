# 16 — Demo surface reconciliation: answering the phone-path questions with code evidence

## Status

Reconciles `14_PRESENTATION_ACTUALIZATION_PHONE_DEMO_PATH.md` and `15_PRESENTATION_XRAY_OVERLAY_MODE.md` against the verified implementation in `14_FRANK_BUILD_RUNTIME_VERIFICATION.md`.

**Evidence class:** code-evidenced, from `Clinlog/hackathon-ppj` at `b1f816b`. Executed locally where stated. **No live Corti call was observed** — that limit from doc 14 §6 still holds.

Both candidate documents ask to be updated "as soon as the actual phone/UI/runtime evidence is known." This is that evidence.

---

## 1. Premise correction: there is no phone application to mirror

`14_PRESENTATION_…_PHONE_DEMO_PATH.md` is built on `the real phone/application state -> screen pixels transported to laptop`. The implementation does not have that shape.

Verified at `b1f816b`:

- **no PWA manifest**, no service worker;
- **no Capacitor, Cordova, or React Native wrapper** anywhere in the tree;
- `index.html` is a plain Vite entry — `lang="da"`, `viewport-fit=cover`, one module script;
- `package.json` scripts are only `dev`, `build`, `lint`, `preview`, `test`.

**It is a mobile-format web application.** There is no installable artifact and no handset-resident runtime.

This does not weaken the phone doc's *core* principle — it settles it. That doc's §1 asks whether mirroring changes application meaning, and answers "no." The stronger answer is that **the question dissolves**: a browser on the presentation laptop runs the identical bundle against the identical backend. There is no fidelity gap to argue about, because there is no second implementation.

So a physical phone becomes a **credibility and framing choice**, not a functional-fidelity requirement:

| | Physical phone + scrcpy | Laptop browser |
|---|---|---|
| Same app, same pipeline | yes | yes |
| "This is what a paramedic holds" | **strong** | weak |
| Moving parts on stage | USB, mirroring, permissions, orientation, timeout | none |
| Microphone risk | device-dependent — see §3 | controllable |

**Recommendation: decide this on rehearsed reliability, not on fidelity.** The phone doc's §9 ranks mirroring as "primary" on the belief that it preserves functional truth. That belief is not what makes it primary — nothing is lost functionally by using the laptop. If the phone survives rehearsal, its framing value is real and worth having. If it does not, dropping it costs the demo nothing technically.

---

## 2. Answers to the phone doc's §12 verification questions

| # | Question | Answer | Basis |
|---|---|---|---|
| 1 | Which teammate build is the phone/UI surface? | Frank's `Clinlog/hackathon-ppj` — 9 screens, mobile format | code |
| 2 | Can it run on an Android phone today? | Yes, **in the phone's browser**. There is nothing to install | code |
| 3 | Web app / PWA / native wrapper? | **Plain web app.** No manifest, no service worker, no wrapper | code |
| 4 | Which live pipeline steps work right now? | See doc 14 §1 and §6 — logic layers verified; live Corti unobserved | executed |
| 5 | On-phone vs backend? | **On-device:** mic capture, 16 kHz PCM/WAV encode, CP437 QR, the deterministic safety rules. **Backend:** all Corti and Supabase calls, via 13 edge functions | code |
| 6 | Does the phone need network? | **Yes**, for everything Corti/Supabase. Two exceptions: the QR is pure client-side, and the demo-only build needs no backend at all (§4) | code |
| 7 | Where does audio enter? | `getUserMedia` → `AudioContext({sampleRate: 16000})` → AudioWorklet → PCM frames → WebSocket (live) or WAV → `transcribe-batch` (batch) | code |
| 8 | Can scrcpy provide display **and** control reliably? | Untested here, and **not required for functional equivalence** — see §1 | — |
| 9 | Can the phone stay alive while the audience view switches? | Browser tab, so yes in principle. **But see §3** — an ambient session holds a live WebSocket, and a backgrounded mobile tab is the classic place that dies | code + risk |
| 10–13 | Compositor, scene switching, venue output, backup | Stage logistics, not code questions. But §4 changes the backup answer materially | — |

---

## 3. The actual fragile point is the microphone, not the mirroring

Both candidate docs treat stage plumbing as the risk. The code says otherwise. `pcmRecorder.ts` opens an `AudioContext` at exactly 16 kHz and **throws** if it cannot:

```ts
// Safari and older Chrome can hand back a context that is not actually at
// the requested rate. Surface it rather than silently sending audio at the
// wrong speed, which Corti would transcribe as gibberish.
if (Math.abs(ctx.sampleRate - TARGET_RATE) > 1) { … throw … }
```

Three consequences for device choice:

1. **Frank's own comment names Safari.** Every browser on iOS is WebKit underneath, so **an iPhone is the higher-risk device for live capture.** Android Chrome is the safer bet. This must be tested on the exact handset, not assumed.
2. **`getUserMedia` requires a secure context** — HTTPS or localhost. A phone pointed at a laptop dev server over LAN by IP address will be **refused microphone access** by the browser. If a physical phone is used with live audio, it needs the deployed HTTPS site, not `npm run dev`.
3. `viden/11` §G7 already records that embedded editor browsers cannot decode audio — Chrome/Edge only, never a VS Code Simple Browser.

**This is the single highest-value thing to rehearse tonight**, and it is device- and URL-specific in a way no amount of presentation architecture can compensate for.

---

## 4. The demo-only build is a real fallback, and it is better than the doc assumes

`14_PRESENTATION_…` §9 ranks "Backup B" as *a short screen recording*. The implementation has something considerably stronger.

`src/lib/demoOnly.ts` defines a compile-time flag, `VITE_DEMO_ONLY=1`. In that build:

- the login gate is skipped entirely;
- demo mode is forced on and **cannot be toggled off**;
- the controls that would reach the real pipeline are not rendered;
- note persistence and cross-backend capture short-circuit instead of firing doomed unauthenticated requests.

And per its own header comment, everything the demo shows is bundled — the note, the dictation, the VIP corpus, the retrieved passages, the references:

> *"So the page works with no backend at all."*

**Verified: `VITE_DEMO_ONLY=1 npx vite build` succeeds at `b1f816b`.**

That is a **fully interactive fallback requiring no wifi, no Corti, and no Supabase** — categorically better than a video, because the presenter still drives it and the QR still genuinely encodes. It deserves to be promoted in the reliability hierarchy above "screen recording."

### Defect: the documented command does not exist

`demoOnly.ts` tells the reader to use `npm run build:demo`. **There is no `build:demo` script in `package.json`** — only `dev`, `build`, `lint`, `preview`, `test`. Anyone following the comment under stage pressure gets an npm error.

The working invocation today is:

```bash
VITE_DEMO_ONLY=1 npx vite build
```

Note it must be `vite build`, not `npm run build`, until the typecheck fix from doc 14 §4 is applied — `npm run build` still runs `tsc -b` first.

**Suggested one-line addition to `package.json` (Frank's lane, not pushed):**

```json
"build:demo": "tsc -b && VITE_DEMO_ONLY=1 vite build"
```

On Windows that env-var syntax needs `cross-env` or a PowerShell equivalent; the safest cross-platform form should be Frank's call.

---

## 5. Reconciling the X-ray overlay with the five-minute spine

`15_PRESENTATION_XRAY_OVERLAY_MODE.md` and `15_FIVE_MINUTE_PRESENTATION_SPINE.md` are **compatible in principle and in tension on time.** Both should be preserved; neither should silently absorb the other.

**Where they agree, strongly:**

- the product surface stays the anchor; explanation is a temporary lens;
- no judge-facing explanation may be built into the clinician UX (the X-ray doc's §8 anti-contamination rule is exactly the spine's "no architecture slide");
- overlays must never be cited as evidence that a capability exists.

**Where they collide:**

The X-ray doc suggests explanations of ~20–30 seconds each. The spine allocates **180 seconds** to the demo across five beats. Two X-ray detours at 25 seconds consume **28% of the entire demo budget** — roughly one full beat.

That is affordable only if X-ray moments *replace* narration rather than adding to it. Concretely:

- **Beat 3, the safety moment, is the one place an X-ray genuinely earns its cost.** The audience sees an alert appear; they cannot see that it fired on a fact stated four minutes earlier. That is invisible mechanism, which is exactly what the X-ray lens is for.
- **Beats 1, 4, and 5 are self-evident on screen.** Speech becomes a structured note; a QR is scanned. Overlaying those explains what the audience already understood, and spends the budget twice.

**Recommendation: exactly one X-ray moment, on beat 3, capped at 20 seconds.** Everything else stays live. This keeps the X-ray concept's best property — depth on demand — without letting progressive disclosure eat the demonstration it is disclosing.

The X-ray doc's §7 warns against letting the rubric shrink the project; doc 15's §6 uses the rubric only as a post-hoc coverage check, which is what `08_…` §9 itself prescribes. **No conflict** — but worth stating so a later agent does not manufacture one.

---

## 6. Housekeeping that is actively causing drift

### The entrypoint no longer routes agents to the runtime evidence

`CONTEXT_ENTRYPOINT.md` was updated in `6d41a69` to insert the two candidate presentation docs into the read order. That commit was authored in parallel with PR #3, so the read order **omits both**:

- `context/14_FRANK_BUILD_RUNTIME_VERIFICATION.md`
- `context/15_FIVE_MINUTE_PRESENTATION_SPINE.md`

The first is currently the **only document containing executed-code evidence**, and the entrypoint's own truth rule ranks runtime evidence above synthesis. A cold agent following the read order today will reach the candidate presentation architecture without ever seeing what was verified to exist — the precise failure the entrypoint exists to prevent.

### Filename number collisions

Three pairs now share a number: `05` ×2, `14` ×2, `15` ×2. Numbers no longer identify documents, and `viden/`-style cross-references such as "doc 14 §3" are ambiguous.

**Both fixes are proposed, not applied** — renaming files touches other agents' work, and `CLAUDE.md` forbids unilateral renaming/normalisation of the workspace.

---

## 7. Open items

1. **Phone or laptop** — decide on rehearsed reliability (§1), and if phone, test the microphone on the actual handset over HTTPS (§3).
2. **Apply the `build:demo` script** and the doc 14 §4 typecheck patch — both Frank's lane.
3. **Cap X-ray to one moment on beat 3** (§5), or consciously overrule with a stopwatch.
4. **Repair the entrypoint read order** (§6) so verified evidence is inherited rather than re-derived.
5. Still unresolved from doc 15: medical coding, the fourth teammate, who submits.
