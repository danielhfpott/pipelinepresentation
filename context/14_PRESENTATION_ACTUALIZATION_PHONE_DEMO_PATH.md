# Presentation Actualization — Phone-First Demo Path

## Status

**CANDIDATE PRESENTATION ACTUALIZATION PATH — NOT YET FROZEN.**

This file exists because the project risks becoming over-described while under-demonstrated. The final judged experience must show something real and understandable, not merely explain a sophisticated architecture.

## 1. Product surface assumption to test

The current working product concept is primarily experienced as a **phone application** for the clinician/user, while some broader future/system concepts may involve ambient hardware, ceiling microphones, dispatch/hospital integrations, or other infrastructure.

The presentation should therefore strongly consider using the **actual phone UX as the primary live surface** rather than demoting it to a screenshot or side note.

This is not yet a claim that every product capability runs natively on the phone. The phone is the proposed **user-experience surface** through which the project is shown.

## 2. Recommended stage topology

Preferred reliable topology:

`phone running the app`
`-> USB connection to presentation laptop`
`-> low-latency phone-screen mirroring on laptop`
`-> laptop connected to Corti display / TV / projector via HDMI or USB-C`

For Android, `scrcpy` over USB is a strong candidate because it:

- mirrors the real phone screen with low latency;
- avoids dependence on venue Wi-Fi;
- avoids pairing directly with an unknown TV;
- allows laptop-side control of the phone when useful;
- keeps the presentation output under the laptop's normal display pipeline.

Direct wireless phone -> venue-TV casting may remain a backup/optional path, but should not be the primary plan unless the exact venue hardware/protocol has been tested.

## 3. Why this matters to the five-minute demo

The audience should experience:

`clinical problem / context`
`-> phone interaction begins`
`-> something real happens live`
`-> system transforms/understands/acts`
`-> visible clinically meaningful result`

Then the presenter can briefly zoom out to show the Corti/API/context architecture that made the visible phone behavior possible.

This is stronger than:

`slides describing architecture -> screenshots of what might happen`.

The goal is:

> **show the project first; explain the machinery underneath only as much as needed.**

## 4. Candidate presentation choreography

A possible choreography, pending runtime verification:

1. **Hook / clinical reality** — 20–40 seconds.
   - establish the real prehospital problem and why context matters.
2. **Phone becomes the stage** — start mirrored live phone application.
3. **Input** — live or preloaded/synthetic clinician speech as permitted by the hackathon rules.
4. **Visible transformation** — transcription/structured clinical information or other actually verified Corti-backed behavior.
5. **Contextual support / next action** — only if the implemented path can be demonstrated truthfully.
6. **Handoff / output** — show the useful terminal result on the phone/UI.
7. **Zoom out** — 30–60 seconds to expose which Corti product areas were used and what is RUNNING vs future/roadmap.
8. **Close on impact** — what changed for the clinician/receiving team, not a list of features.

The exact steps must be replaced by the actual verified runtime spine before baseline freeze.

## 5. Reliability hierarchy

### Primary

**Phone -> USB -> laptop mirror -> venue display.**

### Backup A

Run the same web/mobile application directly in the laptop browser if the application is available as a web URL and the behavior is equivalent enough to prove the same pipeline.

### Backup B

Have a short screen recording of the verified live path available as fallback evidence. This is not a substitute for the required working demonstration, but can protect against display/cable/venue failure.

### Optional

Direct phone -> TV wireless casting only after exact venue compatibility is tested.

## 6. Stage-safety checklist

Before presentation:

- enable Do Not Disturb / disable notification previews on the phone;
- prevent screen timeout during the demo;
- lock expected orientation where useful;
- keep phone charged / connected to power if possible;
- use a known data-capable USB cable;
- verify USB debugging / mirroring permission ahead of time if using scrcpy;
- verify laptop -> venue-display adapter/cable;
- test audio routing separately if phone audio matters;
- pre-open the exact app state/case needed;
- remove unrelated personal apps/content from the visible recent-app/task-switcher path;
- test the entire choreography against the actual five-minute limit.

## 7. Important scope guard

This presentation decision must **not** force the product architecture to become "a phone-only app" if the actual project is broader.

The distinction is:

- **system/project architecture:** may span ambient audio, APIs, backend agents, guideline retrieval, handoff systems, external integrations, and future hardware;
- **presentation/user surface:** the phone can be the simplest human-facing window through which the audience experiences the project.

A ceiling microphone or other ambulance hardware can be shown as a future/ambient input layer while the phone remains the clinician-facing interaction/control/display surface.

## 8. Immediate verification questions

Before freezing this path, establish:

1. Which teammate build is the current phone/UI surface?
2. Can it run on the actual Android phone today?
3. Is it a web app/PWA/native wrapper/other?
4. Which exact live pipeline steps work from that UI right now?
5. Does the phone need network access during the demo?
6. Where does audio enter the pipeline?
7. Can scrcpy be used reliably on the presentation laptop without disrupting the app/audio path?
8. Does venue output support normal laptop HDMI/USB-C?
9. What is the backup if mirroring fails?

## 9. Presentation optimization principle

The danger to avoid is:

`context architecture expands -> implementation remains fragmented -> presentation explains possibilities -> judges never see the project actually happen`.

The desired direction is:

`huge context underneath -> one verified live spine -> simple phone experience on top -> visible result -> brief proof of architecture/Corti use`.

This file should be updated as soon as the actual phone/UI/runtime evidence is known.