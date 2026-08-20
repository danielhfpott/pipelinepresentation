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

## Next ingestion rule

For any further archive, repo, screenshot, export, or code drop:

`inspect contents -> record literal observations -> detect duplication/history -> map relationships -> reconcile against current implementation -> only then derive presentation significance`

Never reverse that order because an artifact name looks familiar or a prior synthesis looks authoritative.
