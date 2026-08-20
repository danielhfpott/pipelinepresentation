# READ ME FIRST — Corti Hack for Health Final Presentation Context

## Why this repository exists

This repository is the coordination and build space for the **final Corti Hack for Health project delivery and presentation**.

The terminal outputs are tightly linked:

1. the **public GitHub project submission**, which Daniel describes as effectively the assignment-delivery artifact / durable project record; and
2. the **live final presentation/demo**.

A user-supplied transcript of Corti's spoken briefing states that the live format is approximately **five minutes of demo plus a few minutes of questions from three judges**. This supersedes the earlier working assumption of an approximately 15-minute presentation unless a later official source explicitly changes it.

This is not a generic app-improvement repo and it is not a place for an AI agent to choose a new project because it finds a cleaner or more fashionable idea.

The presentation must fit reality.

## Non-negotiable governing rule

> **Presentation claims are derived from reality. Reality is never rewritten to make the presentation cleaner.**

Brainstorming, intended architecture, implementation, demoable behavior, evidence, and future possibility are different states. They may support each other, but they must not be silently collapsed.

Use these labels whenever helpful:

- **RAW SOURCE / TEAM INTENT** — something said, written, brainstormed, observed, or requested by a team member.
- **OBSERVED ARTIFACT** — something that exists and has been inspected, without yet claiming its full meaning.
- **IMPLEMENTED** — code/functionality supported by inspection and/or execution evidence.
- **PARTIAL** — some implementation exists, but the full claimed behavior is not proven.
- **DEMOABLE** — can actually be shown reliably during the presentation.
- **EXTERNAL / INTEGRATION ASSUMPTION** — depends on EHR, ambulance dispatch, hospital infrastructure, Corti service, hardware, account, network, etc.
- **FUTURE / ABOVE AND BEYOND** — legitimate continuation vision, explicitly not presented as already built.
- **UNVERIFIED CLAIM** — plausible or remembered, but must not enter the final demo as fact without evidence.
- **UNKNOWN** — not enough evidence yet.

## GitHub is the durable shared source of truth

Chats, screenshots, ZIPs, Claude outputs, ChatGPT synthesis, Codex output, teammate repositories, spoken memories, READMEs, runtime observations, and clinical discussions are **inputs**.

This GitHub repository is where reconciled, status-labelled understanding is preserved so that no single AI session or teammate's local context silently becomes the whole project.

A committed sentence is not automatically true merely because it is on GitHub. GitHub is the source of truth because it also preserves uncertainty, evidence status, contradictions, corrections, and superseded assumptions.

## The presentation is demo-first and truth-first

Everything done in the remaining hackathon window should answer one question:

> **Does this materially strengthen what the team can truthfully show, demonstrate, explain, or prove in roughly five minutes?**

Building code is allowed and potentially highly valuable, but only when subordinate to the actual judged delivery. Do not spend scarce time refactoring or adding unrelated features that do not strengthen the demo/submission.

A useful rule:

> **A claim should preferably point at something that exists.**

If the team says the system structures clinical speech, show the structured result. If it says the system surfaces relevant facts, show the facts. If it says information travels ahead of the patient, visualize or demonstrate that handoff. If something is future scope, clearly call it future scope.

## Corti judging constraints now grounded by spoken briefing

The user supplied a transcript of Corti's spoken assignment/judging briefing. Current source-reported constraints include:

- **five equally weighted judging categories (20% each):** clinical relevance; use of Corti's API; working prototype; insight + ambition; crowd voting;
- use **at least four of five named product areas:** dictation, speech-to-text, ambient speech-to-text, text generation, medical coding;
- Corti's attentive/agentic framework is explicitly encouraged and also appears as a bonus/superlative category;
- teams are asked to go **beyond a typical ambient scribe**;
- audio may be preloaded for demo efficiency, but the system must still actually be shown working;
- each team member must briefly introduce themselves;
- bonus/superlative categories include best commercial idea, best UX, best use of the agentic framework, and a mystery category.

These are preserved in more detail in `context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`.

## Do not scope-creep on language

Do not discard, reinterpret, or force-fit an idea because one word appears slightly inconsistent with a current taxonomy. These notes emerged from a long four-person brainstorming/build effort and some of the most important insight may sit in apparent contradictions.

Preserve the original idea first; reconcile later.

Examples:

- `CPR` may refer to the Danish patient identity number in one context and cardiopulmonary resuscitation in another. These are radically different architectural roles.
- `agent`, `model`, `expert`, `RAG`, `facts`, `transcription`, and `assistant` may have been used informally before the exact implementation was known. Do not retroactively pretend the terminology proves a technical architecture.
- `above and beyond` does not mean inventing a disconnected futuristic project. It should grow from the real clinical problem and the real working build.

## Titles and names are identifiers by default

Do not infer semantic truth from filenames, folder names, repository names, class/function names, document titles, or UI labels merely because they sound descriptive.

Treat titles/names as identifiers unless Daniel explicitly says the title itself carries intended meaning or the underlying content/behavior independently establishes the relationship.

## Current operational environment

Reported local working folder:

`C:\Users\BrugMig\Desktop\claudecodewithinvscodeprojects\hackatonfinalpresentation`

GitHub presentation repository:

`danielhfpott/pipelinepresentation`

These names differ. Do not assume the local folder's git remote without verifying it locally.

Primary development/control environment: **VS Code**.

AI collaborators may include:

- ChatGPT — ongoing synthesis, public research, context architecture, presentation reasoning.
- Codex in VS Code / PowerShell — implementation, repository inspection, presentation artifacts, bounded work once usage permits.
- Claude web / Claude Code — additional reasoning and implementation surfaces.

No individual agent is the source of truth. The GitHub evidence record is the shared source of truth.

## Team context currently known

Daniel is one member of a **four-person team** and has described his role as context-architecture/orchestration: gathering the full conceptual and implementation landscape, connecting teammates' contributions, avoiding drift, and turning the actual project into the strongest truthful presentation.

Known teammate work at this stage:

- **Frank / Daniel's father, physician** — clinical workflow reality plus active implementation work. His actual hackathon ZIP has been supplied for inspection.
- **Mihai** — working with Lovable/UI-related project material; his skepticism was explicitly valued because it helps keep the team from hallucinating urgency or hiding uncertainty.
- **Fourth team member** — exists, but name/workstream has not yet been grounded in the current context bundle. Do not invent it.

The four speakers' exact presentation allocation is not yet locked.

## Time context

Daniel reported late on **2026-08-20** that roughly **15 hours remain** until the team must push the entirety of the project to one public GitHub repository for assignment delivery. The exact cutoff remains user-reported until official written material is supplied/verified.

This remaining build/submission window is distinct from the **approximately five-minute final demo**.

## Presentation-first multi-workstream model

The project may need multiple VS Code terminals or sessions, but they must remain parts of one judged delivery rather than separate interpretations of the project.

Potential concurrent roles:

1. **Context synthesis** — ingest new files, screenshots, teammate outputs, Corti material, dictated thoughts.
2. **Implementation reality** — inspect what each teammate actually built and mark implemented/partial/broken/conceptual.
3. **Demo/build work** — selectively improve presentation-critical functionality or create reliable demo surfaces.
4. **Presentation construction** — actual demo/deck, diagrams, screenshots, timing, speaker flow, demo cues.
5. **Reality red-team** — verify every important claim against implementation or external evidence.

All workstreams feed one shared truth model.

## Human and clinical meaning

The team selected the **01 acute** direction. Daniel has repeatedly emphasized that this is not a game despite the hackathon format. The patient and clinician are the point; technology is a means.

Do not turn `saving lives` into unsupported marketing language. The human stakes should instead force discipline about:

- what problem is actually being addressed;
- which information is trustworthy;
- when an AI system should act or remain quiet;
- where the clinician remains responsible;
- whether intervention is relevant at that exact moment;
- whether the system reduces or introduces dangerous context drift.

Frank is a practicing physician and is being used as a source of clinical workflow reality. Treat his observations as first-hand team context, while still separating anecdotal workflow evidence from externally verified population/system claims.

## Current emerging conceptual field — NOT a locked thesis

Brainstorming currently spans an acute-care information continuum roughly resembling:

`112 / dispatch -> ambulance / encounter -> live clinical context -> reasoning/support -> treatment/event logging -> pre-arrival hospital handoff -> later documentation/reflection`

A recurring theme is **getting the right information to the right person at the right moment, while preserving the clinical context rather than rebuilding it at every boundary**.

This is not yet the final presentation thesis. It must be reconciled against actual code from all teammates and the Corti rubric.

## What incoming context may look like

Do not require neat packaging. Valid inputs include:

- raw dictated thoughts;
- Messenger conversations;
- screenshots;
- Corti PDFs/emails/guides;
- GitHub repositories;
- README files;
- source code;
- Lovable screenshots/export;
- Claude/ChatGPT/Codex conversations and outputs;
- patient scenarios;
- notes from the team brainstorming session;
- memories of verbal Corti guidance, clearly marked as such until verified.

Preserve provenance: human source, ChatGPT, Claude web, Claude Code, Codex, README, runtime, or external source should remain distinguishable.

Ingest first, understand second, prune only when the presentation's evidence structure is mature.

## Final success condition

The audience should not leave thinking, “They have an idea and some Markdown.”

The audience should understand a real acute-care problem, see what the team actually built, experience at least one coherent user/clinical workflow, understand why Corti enables it, and see a credible continuation path beyond the hackathon without being misled about what already exists.
