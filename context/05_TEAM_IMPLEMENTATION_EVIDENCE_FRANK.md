# Team implementation evidence — Frank stream

This file records only what is currently supported by the supplied screenshots and prior team context. It is **not** a code audit and it must be updated once the actual source archive is inspected.

## Evidence status

Current status: **OBSERVED README / REPOSITORY UI EVIDENCE; IMPLEMENTATION NOT YET INDEPENDENTLY VERIFIED**.

The screenshots show a private GitHub repository under `Clinlog/hackathon-ppj`, with FrankCPott visibly contributing. The repository UI shows 39 commits at the captured state. Treat commit count only as evidence of iterative work, not as a quality or completeness metric.

The GitHub connector available to ChatGPT could not currently fetch this private repository directly, so no claim below has been upgraded to IMPLEMENTED solely from repository inspection.

## What the README visibly claims

The README describes a Danish web application for prehospital patient records / PPJ. In the README's own framing, an ambulance or emergency physician dictates freely and the application:

1. transcribes the speech;
2. anonymizes it;
3. structures it into a MIST / ABCDE note;
4. passes the result through a QR-code workflow intended for scanning on a hospital tablet.

The README explicitly states that the AI layer is Corti.

The visible pipeline in the README is approximately:

`speech -> Corti ASR -> anonymization (Corti agent + deterministic pattern net) -> Corti Guided Documents (custom PPJ template) -> 11 sections -> app note -> QR (CP437) -> hospital EPJ`

This is **README-reported architecture**, not yet verified runtime behavior.

## Additional README-reported capabilities

The screenshot also visibly claims:

- Danish VIP instruction lookup using an agent/router over 31 instructions;
- English guideline RAG using pgvector plus a relevance gate;
- evidence-oriented reflection using Corti's built-in PubMed / clinical-trials expert;
- Corti ASR in both batch and live WebSocket forms.

Again, preserve these as claims made by the project's own documentation until code/runtime evidence establishes which parts are implemented, partial, configured, or demoable.

## README-reported stack

The visible README describes:

- frontend: Vite + React + TypeScript + Tailwind, mobile format;
- backend: Supabase with auth, Postgres/pgvector, and nine edge functions;
- AI: Corti templates, agents, and ASR.

The visible run instructions include `npm install`, `npm run dev`, and `npm test`, with a note that Chrome/Edge should be used rather than an embedded editor browser because audio APIs fail there.

## Repository-shape evidence from screenshots

Visible top-level directories include:

- `public/`
- `rag/`
- `scripts/`
- `src/`
- `supabase/`
- `viden/`

Visible top-level files include common Vite/TypeScript/Tailwind project files such as `package.json`, lockfile, TypeScript configs, Vite config, Vitest config, `index.html`, and README.

Do **not** infer functionality from these directory names. Their semantic role must come from their contents.

## Why this matters to the presentation context

This stream appears potentially substantial because the README itself connects several parts of the broader team brainstorming field: free clinical speech, Corti transcription, anonymization, structured acute-care documentation, retrieval/guideline support, and a handoff mechanism toward the hospital.

That apparent alignment is useful but must not cause premature convergence. The presentation should not become "Frank's repo explained" merely because this is currently the most concrete implementation evidence available.

The correct evidence progression remains:

`README claim -> code inspection -> runtime path -> user-visible behavior -> demo reliability -> relationship to whole-team project -> presentation claim`

## Immediate questions for source-archive inspection

When the ZIP/source is available, determine without over-literalizing names:

- which README claims have executable code behind them;
- which Corti endpoints/services are actually invoked;
- what the real end-to-end user path is from microphone/input to structured output;
- what anonymization actually does and where;
- whether the 11-section guided-document structure is live;
- what QR generation/consumption actually contains and whether the hospital/EPJ endpoint is real, simulated, or future/integration territory;
- how the VIP instruction lookup works in code and what its data sources are;
- what the English guideline RAG actually indexes and retrieves;
- what "relevance gate" means in implementation;
- what the PubMed/clinical-trials expert path actually does;
- which features are stable enough for a live presentation;
- which features require credentials, services, network, or other external conditions;
- what the clinician-facing UX looks like in actual operation.

## Presentation principle

Do not downgrade the repo's conceptual meaning to only what one function proves, and do not upgrade the README's language to implementation fact. The goal is to understand how this work fits the actual four-person project and then let the presentation fit that reality.