# Current Prehospital Workflow — Clinician-Described Source

## Status

**Source:** user-supplied transcript of an in-hackathon conversation with Frank, a practicing physician on the team, together with analysis/synthesis produced in a **Claude web chat**.

**Provenance distinction:** the clinical/workflow statements originate from Daniel and Frank's recorded/spoken conversation. Claude's surrounding response is a secondary interpretation layer. Treat Frank's statements about his own workflow as strong first-hand team evidence; treat Claude's synthesis as useful analysis that must remain subordinate to the source transcript and later implementation evidence.

**Evidence class:** first-hand team clinical workflow source + secondary agent synthesis. Broader claims about regional systems, performance, permissions, or prevalence still require independent verification where they matter to the final presentation.

This file intentionally separates **CURRENT WORKFLOW** from **POSSIBLE EXTENSIONS**.

---

## 1. Dispatch / pre-arrival: what the doctor actually receives

### CURRENT WORKFLOW

Frank explicitly says he does **not** have audio contact with the 112 call.

The doctor receives information **as text on a screen**.

The first information can be extremely compressed, e.g.:

`child unconscious`

While the caller remains in contact with 112, more context may progressively appear on the screen, e.g. fever for two days, vomiting, or other details.

Frank describes this as an evolving information stream that helps the physician **prepare mentally for the case** before arrival: consider likely problems, relevant drugs/interventions, equipment, and what may need to happen immediately.

### CURRENT INFORMATION PATH AS DESCRIBED

The source conversation describes a flow approximately like:

`caller -> 112/operator workflow -> manual interpretation/entry -> text on ambulance/doctor screen`

Frank describes the operator as following a software flowchart and manually entering information that then becomes visible to the crew/doctor.

Important nuance: the exact dispatch software, operator job title, and technical architecture have not yet been independently verified. The meaningful workflow fact from Frank is that **the doctor sees evolving screen text rather than hearing the original 112 audio**.

### POSSIBLE EXTENSION

Automatic speech recognition / richer extraction from the 112 call was discussed as a potential improvement.

Do not describe that as current functionality unless implementation evidence establishes it.

---

## 2. Pre-arrival clinical cognition

### CURRENT WORKFLOW

The evolving dispatch context is not merely administrative. Frank uses it to prepare for what he may encounter.

The transcript describes questions such as:

- what kind of respiratory/circulatory/neurological problem might this be?
- what drugs/interventions may be relevant?
- what equipment or preparation may be needed?

This establishes a presentation-relevant point: **information that arrives before physical patient contact can already change clinician preparedness.**

This does not prove that the current project automates this reasoning.

---

## 3. On-scene action

### CURRENT WORKFLOW

On arrival, Frank describes the clinical work as involving:

- asking/gathering information;
- observing and monitoring;
- measurements from devices;
- treatment;
- stabilisation before transport where necessary.

The source conversation briefly invents the shorthand “AOMT,” but Frank explicitly says that is **not** an established clinical term. Do not present it as a medical framework.

The important fact is that the encounter generates two broad forms of context:

1. **machine/device-derived measurements**, some of which are already documented automatically;
2. **human/environmental context** in conversation, observations, family statements, treatment discussion, evolving events, etc.

### POSSIBLE EXTENSION

A continuously timestamped ambient record of the encounter was discussed as a potential extension.

Again: candidate intervention point, not current-state fact.

---

## 4. Transport and documentation

### CURRENT WORKFLOW

For the primary workflow being discussed, the patient is treated/stabilised and then transported.

Frank says documentation begins during transport and that dictation is practically much more usable than typing on the in-vehicle touch interface while the vehicle is moving.

He then gives a concrete structured dictation example approximately of the form:

`Madeleine, 24 years, fell from a horse, neck pain, cannot move her arms; no A problem; B saturation 97% without oxygen ...`

He proceeds through an ABC-style clinical structure.

The key current-state statement is stronger than a hypothetical product idea:

> **Frank says he already uses his app for this in practice.**

He reports that the structured output produced from his dictation closely resembles what he later verbally repeats in the emergency/trauma room.

---

## 5. Existing pre-arrival handoff benefit

### CURRENT WORKFLOW / REPORTED EXISTING BENEFIT

Frank reports that his dictation reaches the receiving side before he physically arrives.

He describes the secretary receiving the information and being able to tell the receiving doctors that the information is already documented.

Therefore, by the time he arrives at the trauma centre, the receiving team can already be partially pre-briefed.

This is an important correction to any framing that treats the project as starting from zero: **at least one useful pre-arrival information-flow behaviour already exists in Frank's real workflow/app usage.**

The final presentation should investigate exactly what implementation produces this behaviour and how it relates to the hackathon code before claiming technical specifics.

---

## 6. Hospital arrival

### CURRENT WORKFLOW

On hospital arrival Frank gives a formal briefing/handover.

That briefing includes, among other things:

- what happened;
- relevant clinical findings;
- treatments/medications given;
- whatever patient background is known.

The receiving hospital team then continues treatment.

The app-generated structured output and the verbal handover are therefore closely related artifacts in the workflow rather than unrelated documentation products.

---

## 7. The longitudinal-context gap

### CURRENT WORKFLOW / LIMITATION

Frank says the ambulance-side physician has only limited patient background.

The receiving hospital can often obtain more longitudinal information because it has the patient's personal identifier and can inspect the chart / Epic-side record.

This creates a potentially important current-state asymmetry:

`prehospital team: rich acute/live context + limited longitudinal history`

`hospital team: stronger chart/history access + receives acute context later / through handoff`

### POSSIBLE EXTENSION

Making relevant longitudinal history available earlier in the prehospital workflow was discussed as highly desirable.

The conversation also reports current organisational/data-access barriers around ambulance access to Epic.

Corti's hackathon guidance reportedly encouraged teams not to let real-world administrative/integration barriers prevent them from conceptualising a useful future deployment. That does **not** make Epic integration implemented; it belongs in external-boundary / future-deployment framing unless evidence changes.

---

## 8. Pipeline map supported by this source

A grounded current-state map from this conversation is roughly:

`112 call`  
`-> manually mediated / structured dispatch information`  
`-> evolving text on ambulance screen`  
`-> physician pre-arrival preparation`  
`-> on-scene ask / observe-monitor / measure / treat / stabilise`  
`-> transport`  
`-> structured ABC-style dictation/documentation`  
`-> pre-arrival information reaches receiving side`  
`-> hospital team partially pre-briefed`  
`-> physician gives formal handover`  
`-> hospital treatment continues`

Possible intervention points discussed around this map include richer 112-call transcription/context extraction, timestamped ambient encounter capture, contextual clinical assistance, earlier access to longitudinal history, and deeper automated handoff support.

These extensions must remain visibly separate from what already happens today.

---

## 9. Presentation significance

This source is unusually valuable because it supplies a **real clinician-described before/during/after workflow** and also identifies a capability already used in practice.

Claude's synthesis usefully highlighted the convergence of acute/pre-hospital context with longitudinal hospital-record context, but that framing remains a secondary interpretation rather than the source itself.

For a five-minute demo, the likely value is not to explain every box. The value is that the team can potentially anchor the demo in a real sequence:

**what the doctor knows before arrival -> what happens during care -> what gets captured -> what reaches the hospital before the patient -> what context is still missing.**

The final spine must still be reconciled with the actual hackathon implementation and Corti API usage.
