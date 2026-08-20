# Presentation Actualization — Phone-First Demo Path

## Status

**CANDIDATE PRESENTATION ACTUALIZATION PATH — NOT YET FROZEN.**

This file exists because the project risks becoming over-described while under-demonstrated. The final judged experience must show something real and understandable, not merely explain a sophisticated architecture.

## 1. Core functional-equivalence principle

The phone-mirroring layer must **not** be conceptualized as a different application, a presentation-only clone, a simulated frontend, or a changed implementation.

The intended relationship is:

`the real phone/application state`
`-> screen pixels transported to laptop`
`-> laptop mouse/keyboard/control events transported back to phone`
`-> same phone/application state continues`

Mirroring/control is therefore **orthogonal to the application pipeline**.

Whatever normally executes on the phone, backend, Corti API, Supabase, remote service, or other system continues to execute in its normal location. The laptop does not become a new application runtime merely because it displays the phone and forwards input.

The mirroring layer changes **where the user sees and controls the phone**, not what the application means or which capabilities it has.

For presentation reasoning, treat this as approximately:

> **using the actual phone through the laptop rather than using a laptop version of the phone app.**

If the same phone action produces the same application/network/backend behavior whether the user taps the physical touchscreen or clicks the mirrored representation, then the extra laptop layer says essentially nothing about the product functionality itself.

This distinction is presentation-critical: a judge should understand that the mirrored window is the **real live phone state**, not a mock-up.

## 2. Product surface assumption to test

The current working product concept is primarily experienced as a **phone application** for the clinician/user, while the larger system may involve remote APIs/backend processing, ambient hardware, ceiling microphones, dispatch/hospital integrations, or other infrastructure.

The presentation should therefore strongly consider using the **actual phone UX as the primary live surface** rather than demoting it to a screenshot or creating a separate desktop presentation frontend.

Do not infer that every computation must run locally on the handset. The important claim is narrower and more accurate:

> **the phone is the real user-facing application state being controlled; mirroring does not change the app's functional pipeline.**

## 3. Recommended stage topology

Preferred reliable topology:

`actual phone running/hosting the user-facing app state`
`-> USB connection to presentation laptop`
`-> low-latency full phone-screen + input mirroring/control`
`-> laptop connected to Corti display / TV / projector via HDMI or USB-C`

For Android, `scrcpy` over USB is a strong candidate because it can:

- mirror the real phone screen with low latency;
- forward laptop-side mouse/keyboard control to the real phone;
- avoid dependence on venue Wi-Fi for the mirror itself;
- avoid pairing directly with an unknown TV;
- keep the presentation output under the laptop's normal display pipeline;
- let the presenter interact with the phone without physically handling a tiny device while speaking.

Direct wireless phone -> venue-TV casting may remain a backup/optional path, but should not be the primary plan unless the exact venue hardware/protocol has been tested.

## 4. Persistent-live-state presentation model

The phone should not be understood as a temporary 30-second demo insert that is then abandoned.

A stronger presentation architecture is:

> **the real phone/application state remains alive for the whole presentation, while the laptop controls which explanatory surface the audience sees at each moment.**

The phone continues running even when it is temporarily not the full-screen projected surface.

This permits presentation **scene switching without product-state switching**.

Candidate scene types:

### Scene A — LIVE PHONE

Full-screen real mirrored phone.

Use when the audience should watch or interact with the product itself.

### Scene B — EXPLAIN / DETAIL

Temporarily show a different surface when something genuinely needs explanation: a pipeline step, Corti request/response, provenance distinction, clinical source, architecture diagram, before/after state, implementation evidence, or other detail earned by the narrative.

The real phone remains alive underneath and is not reset merely because the audience is looking elsewhere.

### Scene C — RETURN TO LIVE PHONE

Return immediately to the **same ongoing phone/application state**.

This creates continuity: explanation is a temporary lens over the product, not a departure into a different presentation reality.

### Scene D — PHONE + CONTEXT

Show the real phone together with a second explanatory surface when simultaneous comparison materially improves comprehension.

Examples, only if actually useful:

- phone output beside the exact structured facts that produced it;
- phone beside an enlarged Corti/API/provenance view;
- phone beside a simple clinical workflow/pipeline location;
- phone beside a RUNNING / PARTIAL / FUTURE evidence marker.

### Scene E — TEAM / SYSTEM VIEW

Briefly zoom outward from the live phone to the larger system or team contribution picture when the judges need to understand why the visible experience is more than one isolated mobile screen.

Then return to the live product.

## 5. Presentation compositor principle

Under this model, the **laptop is simultaneously two things**:

1. a functionality-neutral control/display proxy for the real phone;
2. a presentation compositor that decides what the room sees.

These roles must not be confused.

Switching the projector from the mirrored phone to a diagram, detail surface, evidence view, or other presentation scene does **not** imply that the application stopped or changed runtime.

The conceptual stack is:

`real phone/application continues`
`+ explanatory surfaces remain ready`
`-> presentation compositor selects audience view`
`-> venue display`

The audience-facing presentation may therefore be dynamic without the underlying product becoming fragmented.

The exact compositor technology is **not frozen yet**. Possible implementations may include dedicated scene software, a carefully controlled browser/presentation shell, or simple reliable window switching. Choose based on what can be proven stable on the actual laptop before stage time.

Do not build a sophisticated scene engine merely because it is conceptually attractive. Reliability and rehearsal outrank visual cleverness.

## 6. Why this matters to the five-minute demo

The audience should experience:

`clinical problem / context`
`-> real phone application begins`
`-> presenter controls that same phone through the laptop`
`-> something real happens live`
`-> normal phone/backend/Corti pipeline executes`
`-> visible clinically meaningful result appears in the same phone state`

When something requires explanation:

`live phone state persists`
`-> audience view temporarily switches to the minimum useful explanatory layer`
`-> explanation happens`
`-> audience returns to the same live phone state`

This is stronger than:

`slides describing architecture -> screenshots of what might happen`.

It is also stronger than building a special desktop demo purely for projection, because the presentation surface remains anchored in the actual intended user-facing object.

The goal is:

> **show the real product first; expose deeper context only when the audience needs it; then return to the real product.**

## 7. Timing: strict enough to protect the demo, flexible enough to feel alive

The presentation should probably have a **rehearsed timing architecture**, but not necessarily feel like a visibly rigid sequence of isolated 30-second boxes.

Useful distinction:

- **internal timing:** precise enough that the team knows where it must be at important time boundaries and cannot accidentally spend four minutes explaining background;
- **audience experience:** continuous and natural, with the phone potentially remaining active through most or nearly all of the presentation.

A 30-second explanation can therefore be a **timed segment inside one continuous live state**, not a separate slide chapter.

Possible timing model, pending the actual verified five-minute spine:

- define a few hard checkpoints rather than scripting every sentence to the second;
- assign maximum duration to explanatory detours;
- preserve a protected block for the actual visible working path;
- make scene transitions one action/hotkey wherever possible;
- rehearse a short version if something runs slowly;
- never let contextual explanation consume the time required to show the result.

The strict timing system should protect actualization rather than making the presentation robotic.

## 8. Candidate presentation choreography

A possible choreography, pending runtime verification:

1. **Hook / clinical reality** — establish the real prehospital problem and why context matters.
2. **Phone becomes the persistent anchor** — reveal the mirrored real application.
3. **Input** — live or preloaded/synthetic clinician speech as permitted by the hackathon rules.
4. **Visible transformation** — transcription/structured clinical information or other actually verified Corti-backed behavior.
5. **Optional detail scene** — only if the audience genuinely needs a deeper explanation of what just happened.
6. **Return to the same phone state.**
7. **Contextual support / next action** — only if the implemented path can be demonstrated truthfully.
8. **Handoff / output** — show the useful terminal result in the same live phone/UI state.
9. **Brief system/evidence zoom-out** — expose which Corti product areas were used and what is RUNNING vs future/roadmap.
10. **Return/close on the product and clinical impact.**

The exact steps must be replaced by the actual verified runtime spine before baseline freeze.

## 9. Reliability hierarchy

### Primary

**Actual phone -> USB -> full mirror/control on laptop -> presentation compositor -> venue display.**

This is not a functional fallback. It is simply presentation transport/control around the real phone.

### Backup A

If technically necessary, run the same web/mobile application directly in the laptop browser **only if** runtime verification establishes that this is the same application/pipeline semantics and not a materially different demo path.

### Backup B

Have a short screen recording of the verified live path available as fallback evidence. This is not a substitute for the required working demonstration, but can protect against display/cable/venue failure.

### Optional

Direct phone -> TV wireless casting only after exact venue compatibility is tested.

## 10. Stage-safety checklist

Before presentation:

- enable Do Not Disturb / disable notification previews on the phone;
- prevent screen timeout during the demo;
- lock expected orientation where useful;
- keep phone charged / connected to power if possible;
- use a known data-capable USB cable;
- verify USB debugging / mirroring permission ahead of time if using scrcpy;
- verify that laptop-side control genuinely manipulates the real phone, not a duplicate session;
- verify laptop -> venue-display adapter/cable;
- test audio routing separately if phone audio matters;
- pre-open the exact app state/case needed;
- remove unrelated personal apps/content from the visible recent-app/task-switcher path;
- rehearse every scene transition;
- verify that switching audience scenes does not stop/suspend/reset the phone application unexpectedly;
- make the transition back to the phone deterministic;
- test the whole choreography against the actual five-minute limit.

## 11. Important scope guard

This presentation decision must **not** force the product architecture to become "a phone-only app" if the actual project is broader.

The distinction is:

- **system/project architecture:** may span ambient audio, APIs, backend agents, guideline retrieval, handoff systems, external integrations, future hardware, or computation occurring away from the handset;
- **user-facing application state:** the phone is the clinician-facing control/display surface;
- **presentation transport:** laptop mirroring relocates access to that same phone state for visibility and control;
- **presentation compositor:** temporarily chooses which view best explains the same project reality.

A ceiling microphone or other ambulance hardware can therefore feed the wider system while the phone remains the clinician-facing window. That does not create two products.

## 12. Immediate verification questions

Before freezing this path, establish:

1. Which teammate build is the current real phone/UI surface?
2. Can it run on the actual Android phone today?
3. Is it a web app/PWA/native wrapper/other, and does that distinction change any demonstrated functionality?
4. Which exact live pipeline steps work from that phone state right now?
5. Which computations occur on-phone versus backend/API, purely as implementation truth rather than presentation assumption?
6. Does the phone need network access during the demo?
7. Where does audio enter the pipeline?
8. Can scrcpy provide both display **and full input control** reliably on the presentation laptop without disrupting the app/audio path?
9. Can the phone remain alive while the audience display switches to another presentation surface?
10. What is the simplest reliable method for switching scenes on the actual laptop?
11. Can scene switches be reduced to one deterministic key/action?
12. Does venue output support normal laptop HDMI/USB-C?
13. What is the backup if mirroring or scene switching fails?

## 13. Presentation optimization principle

The danger to avoid is:

`context architecture expands -> implementation remains fragmented -> presentation explains possibilities -> judges never see the project actually happen`.

The desired direction is:

`huge context underneath -> one verified live spine -> persistent real phone state -> functionality-neutral mirror/control layer -> smart audience-view switching only when useful -> visible result -> brief proof of architecture/Corti use`.

The mirroring layer should disappear conceptually from the product story. The scene-switching layer should disappear operationally when it works. Both are stage plumbing in service of the same project reality.

This file should be updated as soon as the actual phone/UI/runtime and presentation-switching evidence is known.