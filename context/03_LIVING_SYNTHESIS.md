# Living Synthesis — Presentation Context Architecture

This file captures only synthesis that currently appears stable enough to preserve. It is not the final thesis, not a slide script, and not a claim that every idea below is implemented.

## 1. Core operating principle: enormous context underneath, simple experience on top

The presentation may ultimately be extremely simple for the audience, but that simplicity should be earned through a much larger context model underneath it.

The team should not compress too early. First gather and reconcile the relevant clinical reality, Corti constraints/opportunities, team intent, actual code, runtime behavior, user experience, evidence, uncertainty, and future possibility. Only then decide what survives into the approximately 15-minute experience.

A useful shorthand is:

`MORE CONTEXT -> BETTER SYNTHESIS -> MORE RELEVANT ACTION -> BETTER CONTINUITY`

The hackathon work itself has a parallel structure:

`MORE CONTEXT -> BETTER SYNTHESIS -> BETTER BUILD DECISIONS -> BETTER PRESENTATION`

This is a conceptual relationship, not yet a locked pitch line.

## 2. Context architecture is an actual team function

Daniel's team-assigned role is context architecture/orchestration. This is not merely note organization.

The function is to hold the whole field together while other contributors are necessarily zoomed into narrower implementation or clinical workstreams. That includes:

- preserving the connection between the clinical problem and what gets built;
- keeping multiple teammates' contributions connected to one project without forcing false uniformity;
- separating implementation reality from aspiration;
- preserving contradictions and ambiguous language until enough context exists to resolve them;
- connecting Corti's task/platform, acute-care reality, UX, code, evidence, and presentation;
- preventing one convenient implementation or one AI-generated interpretation from becoming the whole project by default;
- eventually compressing the larger context into something judges can understand with very low cognitive burden.

The goal is not for the context architect to know every function implementation better than the person who wrote it. The goal is to understand the relationships among layers well enough that the final presentation remains truthful and coherent.

## 3. Presentation must fit reality

The deck is downstream of the project reality.

Do not reshape reality to fit a cleaner narrative. Do not treat a brainstorm as implemented simply because it sounds compelling. Do not treat code as the full meaning of the project simply because it is executable.

The working evidence chain should remain something like:

`raw observation/source -> literal content/behavior -> supported inference -> relationship to wider project -> presentation significance`

A filename, title, folder name, function name, class name, UI label, or snippet is never enough by itself to jump directly to presentation significance.

## 4. Titles and filenames are identifiers unless explicitly made meaningful

Do not infer role, content, priority, architecture, or truth from the title/name of a file, folder, repository, function, screenshot, or artifact.

Names are identifiers only unless one of the following independently establishes semantic relevance:

1. Daniel explicitly says the title/name itself is intentionally meaningful; or
2. the actual contents/behavior establish the relationship without relying on the title.

Even a filename that appears uncannily descriptive should not be treated as evidence of what the file means in the project.

## 5. "Above and beyond" currently means completeness before compression, not feature explosion

Daniel reports that Corti strongly and explicitly emphasized an "above and beyond" direction during the hackathon briefing. Until the official material is supplied or independently verified, that wording remains team-reported verbal context rather than a published judging criterion.

Within the team's own interpretation, the useful principle is:

> Above and beyond is not automatically "add more features." It is refusing premature closure on the relevant context.

That can mean exploring enough of the clinical, technical, human, workflow, implementation, evidence, and future landscape that the team can credibly choose what matters most instead of stopping at the first neat answer.

This should not become an excuse for uncontrolled scope growth. Completeness happens in the reasoning layer; the audience-facing experience can remain simple.

## 6. The "I did everything I reasonably could" red thread

A recurring analogy from the team context is the clinician's retrospective question: did I do everything I reasonably could with the information, tools, time, responsibilities, and options available?

This is potentially a meta-red-thread across several layers:

- **clinician:** enough relevant information and appropriate options were considered before acting;
- **system:** help surface relevant context without silently replacing clinical responsibility;
- **team:** do not settle for the first functional fragment and declare it the whole project;
- **presentation:** show the distilled result of a much larger field of careful inquiry.

This should not be turned into unsupported life-saving marketing language. It is currently a process/meaning principle that may or may not become explicit presentation language.

## 7. Simplicity is earned through completeness

A judge may ultimately see only one patient, one acute situation, one evolving stream of context, a small number of interventions, and one coherent handoff.

Underneath that apparently simple experience may sit:

- the multi-hour four-person brainstorm;
- practicing-clinician workflow knowledge;
- actual teammate implementations;
- Corti services and constraints;
- guideline/RAG or other support mechanisms where genuinely present;
- public evidence and verification;
- implementation-state inspection;
- rejected alternatives;
- future/above-and-beyond possibilities;
- multi-agent synthesis and overnight work.

The complexity belongs primarily in the understanding. The audience should not be forced to process the entire internal context architecture.

## 8. Current candidate conceptual continuum — still uncommitted

The current raw context repeatedly touches an acute-care continuum that may include some subset of:

`112 / dispatch -> ambulance / encounter -> live context -> clinical support/action -> treatment/event logging -> pre-arrival hospital handoff -> later documentation/reflection`

This remains a candidate relationship map only. The actual presentation spine must be reconciled against what all teammates have really built and what can be demonstrated reliably.

## 9. Current evidence classes to preserve

As new material arrives, keep these distinctions visible:

- RAW SOURCE / TEAM INTENT
- OBSERVED ARTIFACT
- IMPLEMENTED
- PARTIAL
- DEMOABLE
- EXTERNAL / INTEGRATION ASSUMPTION
- FUTURE / ABOVE AND BEYOND
- UNVERIFIED CLAIM
- UNKNOWN

The purpose is not bureaucracy. It is to prevent inference from silently becoming fact.

## 10. Terminal objective

The terminal objective remains an actual presentation of the actual project.

The audience should not leave thinking: "they have an idea and some Markdown."

They should be able to understand a meaningful acute-care problem, see real functioning manifestations of the team's work, understand what Corti contributes, and perceive a credible path beyond the hackathon without being misled about what is already implemented.
