# Context Architecture Inference Rules

These rules govern how any AI agent should interpret incoming material for the Corti Hack for Health final presentation.

## 1. Infer context architecture, not fake certainty

A filename, folder name, function name, class name, UI label, screenshot title, note heading, teammate phrase, or isolated code snippet is **evidence**, not a complete specification.

Do not infer:

- that a function name proves the feature works end-to-end;
- that a folder called `rag` proves a production RAG pipeline exists;
- that a UI label proves the corresponding action is implemented;
- that a note mentioning an `agent` means the code contains a specific agent architecture;
- that a repository title defines the final project thesis;
- that one teammate's terminology is the canonical vocabulary for the whole team;
- that one isolated implementation should become the center of the presentation merely because it is easiest to inspect.

Instead, infer the **relationships, intentions, constraints, possible roles, and through-lines** suggested by the evidence, and then reconcile them against the broader implementation and presentation reality.

## 2. Do not scope-creep on words

Words may be provisional, colloquial, mistranscribed, overloaded, or used differently by different teammates.

Examples include:

- agent
- model
- expert
- RAG
- facts
- transcription
- assistant
- pipeline
- CPR
- acute
- above and beyond
- source of truth
- demo
- prototype

Do not force a term into one technical definition merely because that definition is common in software engineering.

Ask what role the term appears to play **in the full project context**.

## 3. Preserve ambiguity until enough evidence exists

If two interpretations are plausible, preserve both rather than choosing prematurely.

A useful status vocabulary is:

- **observed** — directly present in code, screenshot, note, conversation, or external source;
- **inferred** — plausible relationship supported by multiple observations;
- **implemented** — behavior is grounded in code and/or execution evidence;
- **demoable** — behavior can be reliably shown in the presentation;
- **intended** — team clearly wanted it, but implementation status is not yet established;
- **possible** — technically or conceptually plausible, but not yet grounded enough to present as project reality;
- **future** — explicitly continuation/above-and-beyond territory;
- **unknown** — insufficient evidence.

The purpose of these statuses is not bureaucracy. It is to stop presentation synthesis from silently turning inference into fact.

## 4. A snippet is a local fact, not a global architecture

When inspecting code, distinguish:

`local implementation fact -> probable subsystem role -> relationship to user experience -> relationship to clinical workflow -> relationship to presentation thesis`

Do not jump directly from the first item to the last.

Example:

A code snippet that calls a transcription endpoint may prove that a transcription call exists. It does **not** by itself prove:

- continuous ambient capture;
- reliable speaker attribution;
- clinical fact extraction;
- agentic reasoning;
- guideline retrieval;
- hospital handoff;
- end-to-end latency;
- user-facing reliability;
- the project's central problem statement.

Each edge has to be earned from evidence.

## 5. Context architecture means relationships across layers

The task is to synthesize how pieces might relate across layers such as:

- human problem;
- clinical workflow;
- teammate intention;
- actual code;
- runtime behavior;
- user experience;
- data flow;
- Corti services;
- external integrations;
- presentation evidence;
- future possibility.

These layers can inform each other without being collapsed into one another.

## 6. Presentation reality remains the final constraint

The final presentation should communicate the strongest coherent project that can be truthfully supported by the whole evidence set.

That means:

- do not make the deck smaller merely because one implementation is easier to explain;
- do not make the deck larger merely because brainstorming contains many possibilities;
- do not pretend every brainstormed idea is implemented;
- do not pretend the implemented code exhausts the meaning of the project;
- do not let generic best practices replace the team's actual clinical and conceptual reasoning;
- do not let one agent's neat synthesis become the source of truth.

The aim is a truthful **whole-project interpretation** whose presentation can distinguish clearly between what exists, what it means, and what it could become.
