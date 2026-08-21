# Presentation Source-of-Truth Protocol

GitHub is the durable shared source of truth for the presentation effort.

This does **not** mean that every file committed to the repository is automatically true, final, or implemented. It means the repository is the place where the project preserves what has been observed, what has been inferred, what remains uncertain, and what is currently presentation-relevant in a form that can be shared across humans and AI collaborators without depending on one chat session.

## 1. Inputs are not automatically truth

The following are source streams / inputs:

- team conversations and spoken brainstorming;
- screenshots;
- uploaded ZIP archives;
- teammate repositories;
- README files and documentation;
- Claude chats and Claude Code outputs;
- ChatGPT conversations and synthesis;
- Codex analysis or implementation work;
- runtime observations and demo recordings;
- clinical workflow knowledge from team members;
- Corti documentation and public material;
- external evidence and research.

Any one of these may be incomplete, mistaken, stale, aspirational, locally correct but globally misleading, or simply interpreted differently by another contributor.

## 2. GitHub preserves the reconciliation

Important context should be promoted into this repository once it is stable enough to preserve.

The repository should retain the distinction between:

- raw/source evidence;
- observed artifact or behavior;
- supported inference;
- implementation status;
- demoability;
- contradiction or uncertainty;
- presentation significance;
- future / above-and-beyond possibility.

The objective is not to make GitHub look clean by erasing uncertainty. The objective is to make the state of knowledge inspectable.

## 3. No single human or AI is the authority by confidence alone

Claude, ChatGPT, Codex, Claude Code, individual teammates, READMEs, and generated documentation are all contributors to understanding.

A confident statement from any contributor does not outrank contradictory code, runtime behavior, clinical reality, or stronger evidence.

Where sources disagree, preserve the disagreement until it can be reconciled. Do not silently pick the neatest interpretation.

## 4. Code is evidence, not automatically the whole project

Executable code can establish implementation facts, but a function, module, repository, or teammate implementation does not by itself establish the complete project architecture or presentation thesis.

Likewise, a README can establish what its author claims or intends, but it does not independently prove that the described behavior works.

A useful progression is:

`source claim -> code evidence -> runtime evidence -> UX/demoability -> wider project relationship -> presentation claim`

Not every claim requires every stage, but stronger presentation claims require stronger evidence.

## 5. Presentation is downstream of this truth model

The final presentation is a compression layer over the reconciled project reality stored here.

It must answer, as concretely as possible:

**What have we actually done as work?**

That includes more than code where supported by evidence: clinical problem understanding, context architecture, implementation, testing, Corti use, UX work, integration reasoning, synthesis across teammates, and other work that materially shaped the result.

But the presentation must remain explicit about the difference between what exists now and what is proposed, envisioned, external, partial, or unverified.

## 6. Operational rule for ongoing work

As new context arrives:

1. ingest it without forcing it into the existing story;
2. inspect literal contents/behavior rather than trusting names or titles;
3. compare it against existing sources and implementations;
4. preserve contradictions and uncertainty;
5. synthesize only what appears stable enough to keep;
6. push that synthesis into this repository;
7. revise earlier synthesis when stronger evidence changes the picture.

Git history is valuable here: an earlier interpretation can be superseded without pretending it never existed.

## 7. Shared-agent handoff rule

Any AI collaborator entering this project should treat the repository as the durable handoff layer and should not assume its own chat memory is complete.

Before making large architectural or presentation conclusions, it should inspect the current repository context and then compare its own findings against that shared state.

The goal is one evolving evidence field, not several parallel AI realities.

## 8. GitHub is an active collaboration substrate, not a passive submission folder

As delivery approaches, this repository has three simultaneous roles:

1. **project source of truth** — the most current reconciled account of what the project is, what exists, what remains uncertain, and how the parts fit together;
2. **agent context surface** — Codex, Claude Code, and other collaborators working from VS Code should be able to enter from the repository and inherit enough context to act coherently even if Daniel's immediate chat prompt is minimal;
3. **judged delivery artifact** — the public GitHub repository becomes part of what Corti can inspect as the submitted project itself.

This means substantial synthesis, corrections, implementation-state findings, presentation decisions, night-run state, and cross-team relationships should be written back to GitHub rather than living only in chat.

The repository should therefore be useful both to a human judge opening it for the first time and to an AI agent resuming work at 03:00 without prior chat context.

## 9. Delivery is multi-surface

"Delivery" does not mean sending a static package.

The final judged project is expected to span at least two coupled surfaces:

### A. GitHub / inspectable project reality

This contains the code, documentation, context architecture, evidence, implementation status, reproducibility instructions, demo support, night-run outputs, provenance, and other inspectable project artifacts that can truthfully live in a public repository.

### B. Live presentation / user experience

Some project value can only be demonstrated experientially: running UI behavior, live interaction, audio, timing, clinical flow, handoff, and other user-facing behavior.

Those elements may not be reducible to static repository files, but the repository should still explain how they relate to the submitted code and should preserve whatever screenshots, logs, fallback recordings, instructions, or evidence are appropriate and publishable.

The goal is not for GitHub to replace the user experience. The goal is for GitHub and the user experience to describe the **same project reality from two complementary angles**.

## 10. Approaching-delivery rule

The closer the team gets to submission, the less acceptable it becomes for important project understanding to exist only in ephemeral conversation.

Substantial new insight should be triaged immediately:

- if it changes the project's understood reality, update the relevant source-of-truth file;
- if it changes implementation status, record the new evidence/status;
- if it changes the five-minute demo, update the working pipeline/demo map;
- if it changes what an overnight agent should optimize, update `NIGHT_RUN.md` or `.nightrun/STATE.md` as appropriate;
- if it is still speculative, preserve it with that status rather than forcing it into canonical truth.

A trivial conversational greeting does not itself need a commit. The **meaningful project state that an agent should inherit after that greeting does**.
