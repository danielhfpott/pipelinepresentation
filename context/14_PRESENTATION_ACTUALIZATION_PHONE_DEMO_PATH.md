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

## 4. Why this matters to the five-minute demo

The audience should experience:

`clinical problem / context`
`-> real phone application begins`
`-> presenter controls that same phone through the laptop`
`-> something real happens live`
`-> normal phone/backend/Corti pipeline executes`
`-> visible clinically meaningful result appears in the same phone state`

Then the presenter can briefly zoom out to show the Corti/API/context architecture that made the visible behavior possible.

This is stronger than:

`slides describing architecture -> screenshots of what might happen`.

It is also stronger than building a special desktop demo purely for projection, because the presentation surface remains the actual intended user-facing object.

The goal is:

> **show the real product first; explain the machinery underneath only as much as needed.**

## 5. Candidate presentation choreography

A possible choreography, pending runtime verification:

1. **Hook / clinical reality** — 20–40 seconds.
   - establish the real prehospital problem and why context matters.
2. **Phone becomes the stage** — reveal the mirrored live phone application.
3. **Input** — live or preloaded/synthetic clinician speech as permitted by the hackathon rules.
4. **Visible transformation** — transcription/structured clinical information or other actually verified Corti-backed behavior.
5. **Contextual support / next action** — only if the implemented path can be demonstrated truthfully.
6. **Handoff / output** — show the useful terminal result in the same live phone/UI state.
7. **Zoom out** — 30–60 seconds to expose which Corti product areas were used and what is RUNNING vs future/roadmap.
8. **Close on impact** — what changed for the clinician/receiving team, not a list of features.

The exact steps must be replaced by the actual verified runtime spine before baseline freeze.

## 6. Reliability hierarchy

### Primary

**Actual phone -> USB -> full mirror/control on laptop -> venue display.**

This is not a functional fallback. It is simply a presentation transport for the real phone.

### Backup A

If technically necessary, run the same web/mobile application directly in the laptop browser **only if** runtime verification establishes that this is the same application/pipeline semantics and not a materially different demo path.

### Backup B

Have a short screen recording of the verified live path available as fallback evidence. This is not a substitute for the required working demonstration, but can protect against display/cable/venue failure.

### Optional

Direct phone -> TV wireless casting only after exact venue compatibility is tested.

## 7. Stage-safety checklist

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
- test the entire choreography against the actual five-minute limit.

## 8. Important scope guard

This presentation decision must **not** force the product architecture to become "a phone-only app" if the actual project is broader.

The distinction is:

- **system/project architecture:** may span ambient audio, APIs, backend agents, guideline retrieval, handoff systems, external integrations, future hardware, or computation occurring away from the handset;
- **user-facing application state:** the phone is the clinician-facing control/display surface;
- **presentation transport:** laptop mirroring simply relocates access to that same phone state for visibility and control on stage.

A ceiling microphone or other ambulance hardware can therefore feed the wider system while the phone remains the clinician-facing window. That does not create two products.

## 9. Immediate verification questions

Before freezing this path, establish:

1. Which teammate build is the current real phone/UI surface?
2. Can it run on the actual Android phone today?
3. Is it a web app/PWA/native wrapper/other, and does that distinction change any demonstrated functionality?
4. Which exact live pipeline steps work from that phone state right now?
5. Which computations occur on-phone versus backend/API, purely as implementation truth rather than presentation assumption?
6. Does the phone need network access during the demo?
7. Where does audio enter the pipeline?
8. Can scrcpy provide both display **and full input control** reliably on the presentation laptop without disrupting the app/audio path?
9. Does venue output support normal laptop HDMI/USB-C?
10. What is the backup if display mirroring fails?

## 10. Presentation optimization principle

The danger to avoid is:

`context architecture expands -> implementation remains fragmented -> presentation explains possibilities -> judges never see the project actually happen`.

The desired direction is:

`huge context underneath -> one verified live spine -> real phone state -> functionality-neutral mirror/control layer -> venue display -> visible result -> brief proof of architecture/Corti use`.

The mirroring layer should disappear conceptually from the product story. It is only stage plumbing.

This file should be updated as soon as the actual phone/UI/runtime evidence is known.