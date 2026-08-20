# PRESENTATION_BUILD.md

**Companion to:** `HACKATHON_TRUTH_DOCTRINE.md` (read that first)
**Owner:** Daniel (context architecture / orchestration)
**Implemented by:** Claude Code in VS Code
**Status:** build now

---

## 1. The throughline — everything derives from this

> **The patient is the source of truth.**
> **Everything the doctor sees is a derived artifact.**
> **Today the derivation chain is lossy and silent.**
> **We make each hop less lossy, and never silent.**

### 1.1 The chain, named

```
patient's actual state
  ↓  caller describes it under stress
caller's account
  ↓  112 operator interprets
operator's mental model
  ↓  checkbox triage collapses it
hastegrad + category
  ↓  rendered as text in a field under the call number
what the ambulance crew sees on screen
  ↓  doctor observes, integrates, decides
treatment
  ↓  reconstructed after the fact, from memory
documentation
```

Every arrow loses information. **Every arrow currently loses it silently.**
Silent loss is the enemy — not loss itself. Loss you can see is a
clinical judgement. Loss you cannot see is a hazard.

### 1.2 The scope test — use this to kill features

For any proposed capability, answer in one sentence:

> **Which arrow does this de-lossify, and how do we show the remaining loss?**

No answer → not on the spine. Not "later." Not on the spine.

Worked examples:

| Capability | Arrow | On spine? |
|---|---|---|
| Transcription of the doctor's speech | treatment → documentation | YES |
| Fact extraction from transcript | makes the derived facts inspectable | YES |
| Guideline retrieval + **covering / not-covered verdict** | checks derivation against authority, *and says loudly when authority does not cover this* | YES |
| Doctor confirm / sign-off | a human attests the derivation | YES |
| Pre-arrival brief to hospital | ambulance → hospital hop | YES |
| `cprnr`-keyed history / allergies | recovers truth the chain never carried | YES |
| Ceiling microphone in the ambulance | hardware, not a hop we can improve today | NO — roadmap |
| EPIC integration | no access, cannot demonstrate | NO — roadmap |
| Shift / crew availability awareness | improves dispatch, not derivation fidelity | NO — roadmap |
| QR / linked-system ideas | does not name a hop | NO — cut |
| PubMed reflection | educational, post-hoc, not in the acute path | NO — roadmap |

### 1.3 "Why this doctor" — the question from the notes, answered

The doctor is the only node in the chain with the authority to **attest.**
The system derives; only a clinician can sign. We are not replacing
judgement — we are producing a derivation that is *worth* signing, and
making visible what it is built from.

That is also the human-in-the-loop answer. Same sentence, both questions.

---

## 2. BLOCKING — naming collision, fix before any file is written

The notes use **CPR** in two incompatible senses:

1. **CPR-nummer** — the Danish personal identifier. Identity key that
   unlocks history, allergies, medications.
2. **CPR** — cardiopulmonary resuscitation. `hjertestop`.

Both meanings are currently circulating in notes going to three
separate Claude Code sessions. This will contaminate retrieval, variable
names, prompts, and slide copy.

**Mandatory vocabulary, effective immediately:**

| Use | Never use |
|---|---|
| `cprnr` — identity / lookup key | `CPR` alone, anywhere |
| `hjertestop` — resuscitation, arrest protocol | `CPR` alone, anywhere |

Add to every `CLAUDE.md` in every repo. Grep existing files for bare
`CPR` and disambiguate each hit by hand — do not bulk-replace, the two
meanings are genuinely mixed.

---

## 3. Pre-fetch architecture — "CPR inference on beforehand"

### 3.1 The move

Retrieval latency is unacceptable at the acute moment. So do not retrieve
at the acute moment. **Warm the cache at dispatch.**

At dispatch time we already have: hastegrad, dispatch category/keyword,
location, and — where resolved — `cprnr`. From these, speculatively
pre-load before the crew arrives:

- Patient context keyed on `cprnr`: allergies, current medications,
  relevant history
- Candidate guideline set keyed on dispatch category
- Where arrest is suspected: the `hjertestop` protocol resident and ready

At the moment of need, retrieval becomes a lookup against a warm cache.

### 3.2 The hazard — read this before implementing

**The dispatch hypothesis is the same lossy checkbox output the whole
project exists to criticise** (§1.1). Pre-fetching on it and then
presenting the result confidently does not reduce loss — it *amplifies*
the original error and hides it behind low latency.

This is precisely the Roskilde failure in the notes: context collapsed
early onto "neck pain → meningitis," and the actual condition gets
brushed past. Premature convergence is worse than slow retrieval,
because it is confident.

### 3.3 The constraint that makes it safe

> **Pre-fetch may WARM. Pre-fetch may never NARROW.**

Enforced as four rules:

1. **Provenance on every item.** Each cached item carries
   `source: speculative | observed`. Rendered differently. Always.
2. **No suppression.** A speculative hypothesis never removes, reorders,
   or down-ranks anything from what the doctor can see. It may only make
   things faster to reach.
3. **Loud invalidation.** When an observed fact contradicts the
   speculative basis, the cache is invalidated *visibly* — the doctor
   sees that the pre-loaded assumption was wrong. Never a silent swap.
4. **Promotion is explicit.** `speculative → observed` happens only on
   confirmed clinical observation, never on a confidence threshold.

### 3.4 Why this wins on stage

Most teams will do naive retrieval. This is the "above and beyond"
answer, and it is honest: it says *we made it fast, and here is exactly
what we did to stop fast from becoming wrong.*

`[MEASURE]` — is any pre-fetch implemented today? If no, this is a T3
architecture slide, presented as design. Do not imply it runs.

---

## 4. The presentation shell

### 4.1 What it is

A single self-contained HTML file. No build step, no framework, no CDN,
no network at render time. Conference wifi is a hazard, not a dependency.

Runs fullscreen in a browser on the projector. Keyboard-driven — clicking
on stage under pressure is how demos die.

### 4.2 Three modes

**FLOW** *(default, and the spine of the talk)*
The derivation chain from §1.1 as a horizontal flow of boxes. Each box is
one hop. Clicking (or number key) expands a box in place to show: what
this hop does, what it de-lossifies, tier badge, and evidence.

**LIVE**
The phone frame fills with the real running app. This is the demo.

**DETAIL**
The same phone frame, same screen, but a **static replica** — a captured
screenshot with annotation hotspots. Clicking a hotspot explains what
that element is and why it is less obvious than it looks. This is where
you say the clever thing without the live app moving under you.

LIVE and DETAIL share the identical phone frame and identical screen, so
switching between them reads as one continuous object. That is the whole
trick: the audience never loses the thread, and you get to annotate a
frozen surface without pretending it is frozen.

### 4.3 How the phone actually gets on screen

Mihai's build is a Lovable app → it has a deployed URL → **it is a web app.**

Therefore: **do not cast a physical phone.** Embed the deployed URL in a
phone-shaped iframe. No mirror window, no cable, no device battery, no
screen timeout, no notification popping up mid-demo.

`[MEASURE]` — before committing to this: check the deployment's
`X-Frame-Options` / `Content-Security-Policy: frame-ancestors`. If
framing is blocked, either configure the deployment to allow it or fall
back to DETAIL for everything and run LIVE in a separate browser window.

Keep the DETAIL screenshots current regardless. **The fallback is also a
feature** — you wanted the annotated copy anyway.

If the team insists on a physical device (touch interaction does read as
more real): run OBS with the presentation shell as one scene and the
mirror as another, and bind a hotkey. Do not attempt to embed a native
window in a browser; it does not work.

### 4.4 Tier badges are rendered, not remembered

Every box in FLOW carries a badge driven by a data field: **RUNNING /
BUILT / DESIGNED** (T1 / T2 / T3 from the doctrine).

This is the structural enforcement of the truth doctrine. You physically
cannot stand in front of a box marked DESIGNED and describe it in present
tense — the room is reading the badge. Truth becomes a property of the
artifact rather than of your discipline under stress.

DESIGNED boxes must be visually unmistakable — not a subtle grey, an
obvious different treatment. If a judge screenshots one slide, the tier
must survive the screenshot.

### 4.5 Content lives in data, not markup

All stage content in one `PIPELINE` array at the top of the file:

```js
const PIPELINE = [
  {
    id: 'dispatch',
    hop: '112 → ambulance screen',
    label: 'Dispatch',
    tier: 'DESIGNED',           // RUNNING | BUILT | DESIGNED
    loses: 'Checkbox triage collapses the caller account to a category.',
    weDo: 'Pre-warm context on the dispatch hypothesis. Warm, never narrow.',
    evidence: '',               // file:line or test name. Empty = no claim.
  },
  // ...
];
```

Rule: **`evidence: ''` forces `tier` to render as DESIGNED.** Encode that
in the render function. An unevidenced claim cannot present itself as
running, even if someone edits the tier field in a hurry at 3am.

### 4.6 Design direction

Ground it in the subject's own world, not in deck conventions. The
vernacular here is the dispatch surface: terse, timestamped, coded,
monospaced, high contrast, built to be read at a glance in a moving
vehicle. Hastegrad letters. Elapsed time. Fields under a call number.

That is a real aesthetic with real constraints, and it is honest — the
presentation looks like the instrument it is about.

Spend boldness in one place: the flow itself, with the lossiness of each
hop made visible in the transition between boxes. Everything else quiet.

Quality floor without announcing it: readable from the back of a room,
keyboard focus visible, no animation that can stall, reduced-motion
respected, works if the projector is washed out.

### 4.7 Controls

| Key | Action |
|---|---|
| `→` / `←` | next / previous hop |
| `1`–`9` | jump to hop N |
| `Space` | expand / collapse current box |
| `L` | toggle LIVE |
| `D` | toggle DETAIL |
| `Esc` | back to FLOW |
| `T` | start / stop the timer |

Timer visible but small. Hackathon slots are hard-stopped.

---

## 5. Claude Code prompts — paste directly

### 5.1 Build the shell
```
Build a single self-contained presentation HTML file at
presentation/index.html.

Hard constraints:
- One file. No build step, no framework, no CDN, no network requests at
  render time. It must work fully offline.
- Keyboard-driven. Mouse optional everywhere.
- All stage content in a single PIPELINE array at the top of the file,
  separate from render logic.

Three modes:
- FLOW (default): the PIPELINE array rendered as a horizontal sequence of
  hop boxes. Expanding a box shows hop, loses, weDo, tier badge, evidence.
- LIVE: a phone-shaped frame filled with an iframe of PHONE_URL.
- DETAIL: the same phone frame, same dimensions, same position, filled
  with a static screenshot plus positioned annotation hotspots. Clicking a
  hotspot reveals its explanation.

LIVE and DETAIL must share identical frame geometry so switching reads as
one continuous object.

Tier badge rule, enforced in the render function, not by convention:
if evidence is an empty string, render tier as DESIGNED regardless of the
tier field value. DESIGNED must be visually unmistakable at projector
distance, and must survive a screenshot.

Controls: arrows = prev/next hop, 1-9 = jump, Space = expand/collapse,
L = LIVE, D = DETAIL, Esc = FLOW, T = timer.

Design direction: the visual language of a dispatch/monitoring surface —
terse, timestamped, monospaced for data, high contrast, legible at a
glance. Not a slide-deck aesthetic. Ground every choice in that.

Do not invent PIPELINE content. Populate it with the ids and hop names
from PRESENTATION_BUILD.md section 1.1 and leave tier as DESIGNED and
evidence as empty string for every entry. I will fill them from
measurement.
```

### 5.2 Verify the iframe path
```
Check whether the deployed phone app URL can be embedded in an iframe.

Fetch the URL and report the exact values of the X-Frame-Options header
and the Content-Security-Policy frame-ancestors directive. State plainly
whether framing from a local file:// or localhost origin will be blocked.

If blocked, list the concrete options for allowing it on this deployment
platform. Do not attempt a workaround. Report only.
```

### 5.3 Populate tiers from measurement
```
For each entry in the PIPELINE array in presentation/index.html,
determine its true tier by running it, not by reading it:

- RUNNING: an entrypoint exists that exercises this hop end to end. Run
  it. Paste the real output.
- BUILT: a passing test covers it. Run the test. Paste the real output.
- DESIGNED: everything else.

Then update each entry's tier and evidence fields. evidence must be a
file:line reference or a test name that I can check. If you cannot
produce one, leave evidence empty and tier DESIGNED.

Partial implementations are DESIGNED. Do not round up. Report per entry:
id, tier assigned, command run, output.
```

### 5.4 Capture DETAIL screenshots
```
Capture screenshots of the phone app at the exact viewport size used by
the phone frame in presentation/index.html, for each screen referenced in
DETAIL mode. Save to presentation/assets/.

Report the viewport dimensions used and the file path per screen. Do not
retouch, crop, or composite the screenshots — DETAIL must be a faithful
copy of what LIVE shows, or the two modes contradict each other on stage.
```

---

## 6. What stays out of this build

Respecting the division of labour — these are not Daniel's to build and
not the presentation's to absorb:

- The phone app UI itself → Mihai / Lovable
- The clinical case content, dictation script, guideline mapping → Frank
- Corti API integration internals → whoever owns the pipeline code

The presentation shell **renders** their work. It does not reimplement
any of it, and it does not fill in for anything that is missing. A hop
with no implementation renders as DESIGNED and that is the correct
outcome, not a gap to paper over.
