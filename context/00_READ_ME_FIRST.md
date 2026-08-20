# READ ME FIRST — Corti Hack for Health Final Presentation Context

## Why this repository exists

This repository is the coordination and build space for the **final Corti Hack for Health presentation**. The terminal objective is an actual, compelling approximately **15-minute presentation of the actual team project**.

This is not a generic app-improvement repo and it is not a place for an AI agent to choose a new project because it finds a cleaner or more fashionable idea.

The presentation must fit reality.

## Non-negotiable governing rule

> **Presentation claims are derived from reality. Reality is never rewritten to make the presentation cleaner.**

Brainstorming, intended architecture, implementation, demoable behavior, evidence, and future possibility are different states. They may support each other, but they must not be silently collapsed.

Use these labels whenever helpful:

- **RAW SOURCE / TEAM INTENT** — something said, written, brainstormed, observed, or requested by a team member.
- **IMPLEMENTED** — code/functionality demonstrated by inspection or execution.
- **PARTIAL** — some implementation exists, but the full claimed behavior is not proven.
- **DEMOABLE** — can actually be shown reliably during the presentation.
- **EXTERNAL / INTEGRATION ASSUMPTION** — depends on EHR, ambulance dispatch, hospital infrastructure, Corti service, hardware, account, network, etc.
- **FUTURE / ABOVE AND BEYOND** — legitimate continuation vision, explicitly not presented as already built.
- **UNVERIFIED CLAIM** — plausible or remembered, but must not enter the final deck as fact without evidence.

## The presentation is the terminal objective

Everything done tonight must answer one question:

> **Does this materially strengthen what the team can truthfully show, demonstrate, explain, or prove in the final presentation?**

Building code is allowed and potentially highly valuable, but only when subordinate to the presentation. Do not spend the night refactoring, polishing architecture, adding unrelated features, or following generic best-practice work that does not strengthen the presentation.

A useful rule of thumb:

> **A slide should preferably point at something that exists.**

If the deck says the system structures clinical speech, show the structured result. If it says the system surfaces relevant facts, show the facts. If it says information travels ahead of the patient, visualize or demonstrate that handoff. If something is future scope, clearly call it future scope.

## Do not scope-creep on language

Do not discard, reinterpret, or force-fit an idea because one word appears slightly inconsistent with a current taxonomy. These notes emerged from a long four-person brainstorming/build effort and some of the most important insight may sit in apparent contradictions.

Preserve the original idea first; reconcile later.

Examples:

- `CPR` may refer to the Danish patient identity number in one context and cardiopulmonary resuscitation in another. These are radically different architectural roles.
- `agent`, `model`, `expert`, `RAG`, `facts`, `transcription`, and `assistant` may have been used informally before the exact implementation was known. Do not retroactively pretend the terminology proves a technical architecture.
- `above and beyond` does not mean inventing a disconnected futuristic project. It should grow from the real clinical problem and the real working build.

## Current operational environment

Reported local working folder:

`C:\Users\BrugMig\Desktop\claudecodewithinvscodeprojects\hackatonfinalpresentation`

GitHub presentation repository:

`danielhfpott/pipelinepresentation`

These names differ. Do not assume the local folder's git remote without verifying it locally.

Primary development/control environment: **VS Code**.

AI collaborators may include:

- ChatGPT — ongoing synthesis, public research, context architecture, presentation reasoning.
- Codex in VS Code / PowerShell — implementation, repository inspection, presentation artifacts, bounded overnight work once usage returns.
- Claude / Claude Code — another implementation/reasoning surface once usage returns.

No individual agent is the source of truth. The shared evidence is the source of truth.

## Team context currently known

The user is one member of a **four-person team** and has described his role as context-architecture/orchestration: gathering the full conceptual and implementation landscape, connecting teammates' contributions, avoiding drift, and turning the actual project into the strongest truthful presentation.

Known teammate work at this stage:

- **Frank / user's father, physician** — setup/testing and clinical reality input; has an active hackathon codebase that will be supplied/inspected separately. Screenshot identifies repo `Clinlog/hackathon-ppj`; do not infer its behavior until code is inspected.
- **Mihai** — working with Lovable/UI-related project material; his skepticism was explicitly valued because it helps keep the team from hallucinating urgency or hiding uncertainty.
- **Third teammate** — exists, but name/workstream has not yet been grounded in the current context bundle. Do not invent it.

The four speakers' exact presentation allocation is not yet locked.

## Time context

User reported on the evening of **2026-08-20** that final GitHub submission closes at approximately **14:00 the next day**. Treat the exact deadline as user-reported until official hackathon material is supplied/verified.

The intended final presentation length is approximately **15 minutes total**.

The user expects to sleep soon and wants safe overnight work to continue via Codex/PowerShell once session capacity permits. The laptop's always-on configuration is already handled and is explicitly out of scope.

## Presentation-first multi-workstream model

The project may need multiple VS Code terminals or sessions, but they must remain parts of one presentation build rather than separate interpretations of the project.

Potential concurrent roles:

1. **Context synthesis** — ingest new files, screenshots, teammate outputs, Corti material, dictated thoughts.
2. **Implementation reality** — inspect what each teammate actually built and mark implemented/partial/broken/conceptual.
3. **Demo/build work** — selectively improve presentation-critical functionality or create reliable demo surfaces.
4. **Presentation construction** — actual deck, diagrams, screenshots, timing, speaker flow, demo cues.
5. **Reality red-team** — verify every important claim against implementation or external evidence.

All workstreams feed one shared truth model.

## Human and clinical meaning

The team selected the **01 acute** direction. The user has repeatedly emphasized that this is not a game despite the hackathon format. The patient and clinician are the point; technology is a means.

Do not turn `saving lives` into unsupported marketing language. The human stakes should instead force discipline about:

- what problem is actually being addressed;
- which information is trustworthy;
- when an AI system should act or remain quiet;
- where the clinician remains responsible;
- whether intervention is relevant at that exact moment;
- whether the system reduces or introduces dangerous context drift.

The user's father is a practicing physician and is being used as a source of clinical workflow reality. Treat his observations as first-hand team context, while still separating anecdotal workflow evidence from externally verified population/system claims.

## Current emerging conceptual field — NOT a locked thesis

Brainstorming currently spans an acute-care information continuum roughly resembling:

`112 / dispatch -> ambulance / encounter -> live clinical context -> reasoning/support -> treatment/event logging -> pre-arrival hospital handoff -> later documentation/reflection`

A recurring theme is **getting the right information to the right person at the right moment, while preserving the clinical context rather than rebuilding it at every boundary**.

This is not yet the final presentation thesis. It must be reconciled against actual code from all teammates.

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
- Claude/Codex outputs;
- patient scenarios;
- notes from the team brainstorming session;
- memories of verbal Corti guidance, clearly marked as such until verified.

Ingest first, understand second, prune only when the presentation's evidence structure is mature.

## Final success condition

The audience should not leave thinking, “They have an idea and some Markdown.”

The audience should understand a real acute-care problem, see what the team actually built, experience at least one coherent user/clinical workflow, understand why Corti enables it, and see a credible continuation path beyond the hackathon without being misled about what already exists.
