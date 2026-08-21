# Contextual Clinical Assistance — Fentanyl Transcript Case

## Status

**Source:** user-supplied prior ChatGPT conversation from during the hackathon.

**Evidence class:** source-derived clinical/design requirement and observed conversational failure case.

**Not a claim of current implementation.** Nothing in this file proves the current application already behaves this way.

## Observed situation

The supplied transcript describes an ambulance / prehospital treatment conversation in which:

- an acute patient is being discussed;
- pain treatment is being considered;
- fentanyl is selected as an analgesic;
- the clinician says fentanyl is being drawn up / prepared;
- the question is asked: “How much fentanyl should I give to a 20-year-old boy?”

The reported assistant response drifted toward the US illicit-fentanyl epidemic rather than preserving the professional medication context.

This exposes a concrete failure mode: **a sentence-level safety interpretation can be contextually wrong even when it is trying to be cautious.**

## Requirement exposed by the case

The relevant reasoning object is not an isolated utterance. It is closer to:

`continuous transcript + patient state + speaker roles + actions already occurring + observations/measurements + authoritative clinical protocol + previous encounter context -> current situational model -> appropriate assistance`

This is a conceptual requirement, not yet a confirmed architecture of the current build.

## Context recognition is necessary but not sufficient

Recognising that the question concerns clinician-administered pharmaceutical fentanyl should not lead to an unsupported patient-specific dose.

The more defensible agent behaviour is:

1. recognise the professional prehospital context;
2. inspect what the encounter has already established;
3. identify clinically material information still missing;
4. use the protocol that actually governs the clinician/service;
5. make source/provenance and remaining uncertainty visible;
6. do not present a patient-specific recommendation as settled when required context is absent.

Any exact medication variables, dosing rules, contraindications, or protocol logic must come from clinician-approved authoritative material and the actual implementation — not from this synthesis file.

## Why this matters beyond fentanyl

This is not fundamentally a fentanyl feature.

It demonstrates a larger acute-care design principle:

> **Safety cannot mean stripping away the clinical context that determines what a question actually means.**

A generic safety layer can itself become clinically unhelpful if it mistakes legitimate acute-care discussion for non-clinical drug use. The goal is not weaker safety; it is contextually correct, clinically grounded safety.

## Presentation significance — candidate only

This case could become a strong explanation of why the project needs accumulated situational context rather than simple `speech -> transcript -> answer` behaviour.

Whether it belongs in the final demo/presentation depends on reconciliation with:

- the real working code;
- Frank’s chosen synthetic case;
- the Corti APIs actually used;
- the time-limited demo spine;
- what can be demonstrated without inventing medical content.
