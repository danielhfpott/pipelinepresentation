# Presentation X-Ray Overlay Mode

## Status

**CANDIDATE PRESENTATION ARCHITECTURE — NOT YET FROZEN.**

This file defines a presentation-only explanatory layer that preserves the real phone application UX without contaminating it with judge-facing explanation.

## 1. Core distinction

The product and the presentation must remain separate layers.

### Product mode

The clinician sees only the actual application experience appropriate to the acute workflow.

No explanatory onboarding boxes should be added merely so judges can understand:

- implementation detail;
- system architecture;
- Corti interconnectedness;
- research background;
- design philosophy;
- provenance/evidence;
- why a particular transformation matters;
- what is implemented vs future.

Those explanations would be inappropriate clutter inside the real acute-care UX.

### Presentation / X-ray mode

The audience sees the **same phone screen / same app state / same visual object**, but an external presentation layer may add:

- expandable boxes;
- hotspots;
- arrows/callouts;
- evidence/provenance snippets;
- implementation-state labels;
- Corti/API explanation;
- clinical/research rationale;
- system-boundary explanation;
- deeper technical or philosophical context.

The explanatory layer belongs to the presentation system, not to the phone product.

## 2. Same-screen continuity rule

The audience should not feel that the presenter has abandoned the product and opened an unrelated slide.

Preferred continuity:

`LIVE PHONE`
`-> same phone composition enters X-RAY/DETAIL mode`
`-> one or more explanatory boxes become available`
`-> presenter expands only what is relevant`
`-> X-RAY layer closes`
`-> return to the same live phone state`

The phone remains the anchor object.

Where technically useful, the presentation may freeze/capture the exact current phone frame during a detail explanation, provided the transition makes clear that it is the same state being examined rather than a fabricated alternate UI.

## 3. Expand-on-demand principle

Do not put every explanation on screen at once.

The presentation layer should support progressive disclosure:

- default = clean phone/application view;
- first click/key = reveal one small explanation affordance;
- second click/key = expand the relevant box;
- optional deeper level = architecture/evidence/source detail;
- close = restore clean view.

This lets the project contain enormous depth while the judged experience remains simple.

## 4. What belongs in an expandable explanation

Only information that helps the audience understand something they just saw or are about to see.

Candidate classes:

1. **What just happened?**
   - literal transformation or system action.
2. **Why does it matter clinically?**
   - connection to Frank/team workflow and current problem.
3. **What is underneath?**
   - Corti endpoint/product area, backend, retrieval, agent, structured output, etc., only where actually evidenced.
4. **Why was it designed this way?**
   - context integrity, human-in-the-loop, provenance, non-silent failure, source-of-truth logic.
5. **Evidence / truth status**
   - RUNNING / BUILT / PARTIAL / DESIGNED / EXTERNAL / UNKNOWN as appropriate.
6. **Research/context**
   - presentation-relevant external evidence or broader system context, clearly separated from implementation proof.

## 5. Presentation compositor model

The phone can remain continuously alive underneath the presentation while the audience view switches among scenes/lenses.

Candidate scene family:

- `LIVE_PHONE` — clean real phone state.
- `PHONE_XRAY` — same phone composition + expandable presentation-only overlays.
- `PHONE_CONTEXT` — phone plus one adjacent evidence/context panel.
- `SYSTEM_VIEW` — architecture/Corti/dataflow view when the phone alone cannot explain the mechanism.
- `RETURN_LIVE` — immediate return to the same phone session.

Do not freeze the exact implementation technology yet. Possible implementations include a presentation shell, compositor, browser layer, OBS-like scene system, or another reliable stage-control mechanism.

The conceptual requirement matters more than the specific software:

> **the product state persists; only the audience lens changes.**

## 6. Timing philosophy

The presentation can be strictly timed internally without feeling mechanically segmented to the audience.

Example:

- an X-ray explanation may have an internal maximum of ~20–30 seconds;
- the phone may remain the anchor for most or nearly all of the five-minute presentation;
- scene changes should happen because the story requires another lens, not because a slide counter says so.

Internal timing should protect the five-minute constraint while preserving a natural continuous experience.

Do not lock exact per-scene seconds until the verified runtime spine and script exist.

## 7. Corti judging framework as lens, not blocker

Corti's rubric is important and should be used deliberately before finalization, but it must not prematurely define or shrink the project.

Current operating principle:

`build/reconcile the strongest truthful project`
`-> actualize one clear live experience`
`-> then test whether the presentation makes Corti-relevant dimensions legible`

The rubric can sharpen:

- clinical relevance;
- actual Corti use;
- working prototype evidence;
- insight/ambition beyond an ordinary ambient scribe;
- audience comprehension / UX.

It should not cause the team to invent, bias, pre-empt, or discard truthful project context merely to satisfy an assumed judge preference.

## 8. Anti-contamination rule

Never implement a judge-facing explanatory box inside the production/clinician UX merely because it is convenient for the demo.

If a box exists only to explain the product to judges, it belongs in the presentation layer.

Likewise, presentation overlays must not be cited as evidence that the underlying application implements a capability.

Use:

`real app behavior -> presentation overlay explains it`

not:

`presentation overlay says it -> therefore app behavior exists`.

## 9. Immediate implementation questions

Before freezing this architecture, establish:

1. Can the real phone mirror/control feed remain active while another presentation layer is shown?
2. Can a scene switch preserve the phone state without reload/reset?
3. Can the same phone geometry be reused exactly in clean and X-ray modes?
4. Which explanations genuinely need expandable depth?
5. Which explanations should instead be spoken in one sentence and never become UI?
6. What control mechanism lets the presenter switch modes reliably in one action?
7. Can the entire scene sequence be rehearsed and restored quickly if something fails?

## 10. Desired audience effect

The judges should experience one coherent object:

> first they see what the doctor sees; then, when necessary, we temporarily give them X-ray vision into why that same screen matters and what is happening underneath it.

The complexity exists beneath the product, not inside the doctor's acute workflow.