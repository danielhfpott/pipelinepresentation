# Incoming Source Manifest — Content-Based Only

This manifest records newly supplied archives/artifacts by observed contents. **Artifact names are identifiers only. Do not infer semantic role from names.**

## Source A — uploaded ZIP, 2026-08-20

Observed structure: one directory entry and no files with content.

Interpretation status: **observed only**. There is no content in this archive from which to infer project meaning.

## Source B — uploaded ZIP, 2026-08-20

Observed structure: five content-bearing files plus a directory entry.

Content-based observations:

1. One text file contains a long prior conversation about designing an unattended/night-run workflow for Claude Code. It discusses processual repetition, safety gates, disk-based state, fresh context per iteration, VS Code/PowerShell execution, permission restrictions, and morning state verification. This is **prior operational context**, not proof that the same night-run architecture is appropriate for the current presentation project.
2. One text file contains the long four-person hackathon brainstorming notes already supplied separately in the current conversation. A second text file is **byte-identical** to that same content (same SHA-256: `10d70726eab453743b0ce69297c6e99b1e31d8416e8eeee3d362021674859583`). Treat this as duplication, not independent corroboration.
3. One short text file contains PowerShell/Claude-night-run command fragments. These are historical operational artifacts. Their presence does not make those commands current instructions.
4. One Markdown file contains a highly crystallized prior presentation-build proposal. It asserts a specific through-line around information loss/derivation, proposes a presentation shell, scope tests, implementation tiers, and division of labour. This document is **a prior synthesis/candidate interpretation, not canonical project truth**. Its assertions must be re-earned against the full evidence set. Do not let its coherence or specificity cause it to dominate later context automatically.

Important contamination guard:

> A polished prior synthesis is still only one observation in the context field. It is not more truthful merely because it is more structured than raw notes.

## Source C — uploaded large ZIP, 2026-08-20

Observed size: approximately 48.7 MB.

Observed contents after excluding embedded `.git` objects: approximately 629 files, including code, Markdown/text documentation, JSON, TypeScript/TSX, Python, SQL, images, PDFs, test material, local night-run state/log material, and snapshots/references of other application code.

Content-level examples observed include:

- documentation describing Corti-related modules and APIs;
- source code for Corti-related interactions/streaming/agents/retrieval and supporting utilities;
- a substantial guideline/RAG-related code and test area;
- many clinical guideline PDFs;
- a reference snapshot of a ClinLog-style application with capture/transcription/anonymization/pipeline code, templates, legal/GDPR material, and tests;
- `.nightrun` state/findings/log files from a prior unattended analysis run;
- local settings and embedded Git metadata.

These observations establish that the archive contains a large historical/technical evidence field. They **do not establish** that every contained subsystem belongs to the final hackathon project, is current, is implemented end-to-end, or should appear in the presentation.

Do not upload or treat the archive wholesale as presentation truth. It includes repository metadata/local settings and a large amount of potentially historical/reference material. Inspect relevant content incrementally and map each finding back to the current team's real implementation and intent.

## Source D — standalone brainstorming text supplied in current conversation

Observed content: long, highly exploratory four-person brainstorming notes spanning clinical meaning, 01 acute direction, Corti relevance, live listening/transcription, facts, RAG/guidelines, human-in-the-loop, EHR/history, medication/treatment support, hospital pre-arrival information, CPR ambiguity, dispatch/112 context, edge/offline concepts, UI/hardware questions, time/resource impact, and "above and beyond" thinking.

Status: **RAW SOURCE / TEAM INTENT**. It is not an implementation specification.

Important interpretation rule: questions and speculative phrases in the notes are evidence that the team explored those areas; they are not proof that the corresponding feature exists or belongs in the final spine.

## Source E — Claude build/presentation documents supplied separately

Observed files include:

- `PRESENTATION_BUILD.md`
- `HACKATHON_TRUTH_DOCTRINE.md`
- duplicate `HACKATHON_TRUTH_DOCTRINE (1).md`
- `presentation_date200826time1402(1).txt`

Byte-level reconciliation is recorded in:

`context/06_CLAUDE_BUILD_MATERIAL_RECONCILIATION.md`

Important relationship: surrounding **Claude web-chat conversations are part of the formation/provenance context for these documents**. A generated document plus the chat that helped create it are not independent corroborating sources.

## Source F — Corti spoken assignment/judging transcript supplied through prior ChatGPT conversation

Observed content includes the stated judging dimensions, four-of-five product-area requirement, “beyond a typical ambient scribe” guidance, roughly five-minute demo format, Q&A, crowd vote, and superlatives.

Status: **SOURCE-REPORTED SPOKEN HACKATHON BRIEFING**.

Preserved/reconciled at:

`context/08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md`

Do not silently upgrade it to official written rules unless an official written source is later supplied.

## Source G — Daniel/Frank prehospital workflow transcript + Claude web-chat synthesis

Observed content includes:

- no direct doctor audio contact with the 112 call;
- evolving text context on the doctor/ambulance screen;
- mental preparation before arrival;
- on-scene assessment/monitoring/treatment/stabilisation;
- transport documentation/dictation;
- Frank’s report that he already uses his app in practice;
- reported pre-arrival handoff benefit;
- limited longitudinal history on the ambulance side;
- possible future extensions such as richer call transcription and earlier history access.

Status: **FIRST-HAND TEAM CLINICAL WORKFLOW SOURCE + SECONDARY CLAUDE ANALYSIS**.

Preserved/reconciled at:

`context/09_CURRENT_PREHOSPITAL_WORKFLOW_SOURCE.md`

## Source H — exact known-good prior PowerShell night-run driver (`4.txt`)

The exact uploaded file was read directly rather than reconstructed from memory.

Verified original metadata:

- size: `3172` bytes
- SHA-256: `731033334d93d3dae7bb72991725a89494431d6f5aa8c4e2ee801143843d79d1`

Preserved at:

`context/sources/KNOWN_GOOD_NIGHTRUN_DRIVER_4.txt`

Status: **HISTORICALLY PROVEN LOCAL ORCHESTRATION PATTERN**.

Important: the original working-directory path belongs to the earlier voice-pipeline project. The current hackathon launcher must adapt paths rather than blindly reuse them.

## Source I — Claude web-chat acute/prehospital public-research thread

Observed themes include:

- stroke/OHCA recognition;
- 1813/112 entry flow;
- Dansk Indeks registration/classification;
- ambulance response/disposition;
- PPJ/handoff;
- 24-hour renewed-contact indicators;
- Region Østdanmark merger;
- possible “software-shaped seams” across the pipeline.

Status: **PUBLIC-RESEARCH + AGENT INTERPRETATION SOURCE CLUSTER**.

Several quantitative claims have now been independently checked. Some survived; some required correction; many interpretive wedges remain unverified.

Preserved/reconciled at:

`context/13_CLAUDE_WEB_CHAT_PROVENANCE_AND_RESEARCH_RECONCILIATION.md`

Key current correction: Region H’s 2026 B-response service target is **93% within 30 minutes**, so older 25-minute / ~37-minute framing must not be presented as the current target.

## Source J — assistant execution truth audit

Because assistant wording such as “I’m doing X” can itself become accidental context, substantive assistant commitments are now audited against actual GitHub/tool/runtime evidence.

Preserved at:

`context/12_ASSISTANT_EXECUTION_TRUTH_AUDIT.md`

Status: **META-EVIDENCE / PROCESS INTEGRITY RECORD**.

It explicitly marks actions as DONE / PARTIAL / CORRECTED / NOT YET DONE / ONGOING.

## Next ingestion rule

For any further archive, repo, screenshot, export, code drop, chat transcript, generated document, or research thread:

`inspect contents -> record literal observations -> identify provenance/dependencies -> detect duplication/history -> map relationships -> reconcile against current implementation/external evidence -> only then derive presentation significance`

Never reverse that order because an artifact name looks familiar, an AI response sounds confident, or a prior synthesis looks authoritative.
