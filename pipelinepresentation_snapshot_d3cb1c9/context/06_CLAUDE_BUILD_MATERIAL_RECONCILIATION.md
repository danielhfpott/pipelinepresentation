# Claude Presentation-Build Material — Reconciliation Record

## Status of this document

This file records what can safely be preserved from a newly supplied group of presentation-planning artifacts without silently promoting any agent-generated proposal into project truth.

The material is important. It is also highly crystallized. Therefore it must be treated as **prior agent synthesis / proposed operating doctrine** until claims are reconciled against source material, teammate intent, code, runtime, and presentation reality.

## Incoming artifacts

Four files were supplied together:

- `PRESENTATION_BUILD.md`
- `HACKATHON_TRUTH_DOCTRINE.md`
- `HACKATHON_TRUTH_DOCTRINE (1).md`
- `presentation_date200826time1402(1).txt`

Byte-level inspection establishes that the two `HACKATHON_TRUTH_DOCTRINE...md` files are exact duplicates:

- size: 12,204 bytes each
- SHA-256: `c5e4ef960f85f28a286ffc62bbaa965ebc801acca1461e773a1176259cfd2529`

Other hashes for provenance:

- `PRESENTATION_BUILD.md`: `3109d8b38defaf7672a5c0dbcfe5c85cfb36edc9c10790b41beb2ecf9ad9ca57`
- `presentation_date200826time1402(1).txt`: `8edbcb4f5ad2b495233ebd15fd05b5b64056d7678d9f74b947d28e7e9cbf7163`

The duplicate doctrine is one source, not two independent corroborating sources.

## Provenance classes

### `presentation_date200826time1402(1).txt`

Treat as **RAW SOURCE / TEAM BRAINSTORM CONTEXT**.

It contains Daniel's spoken/scrambled working notes and explicitly asks for broad context gathering, interconnectedness, open-card thinking, acute relevance, Corti fit, human-in-the-loop questions, full-pipeline applicability, and the principle of filling the glass before cleaning the table.

It should not be forced to agree with later polished documents. Later documents are downstream interpretations of this broader field.

### `HACKATHON_TRUTH_DOCTRINE.md`

Treat as **PRIOR AGENT SYNTHESIS / PROPOSED TRUTH-DISCIPLINE FRAMEWORK**.

It contains several strong operational safeguards that are compatible with the current source-of-truth protocol:

- `[MEASURE]` means unresolved evidence, not permission to invent plausible text.
- implementation claims should be tiered by evidence rather than confidence;
- `RUNNING`, `BUILT`, and `DESIGNED/ROADMAP` should remain distinguishable;
- code reading alone is not runtime proof (`run it, don't read it`);
- synthetic clinical material should be labelled synthetic;
- Corti claims should be tied to actual requests/responses;
- silent fallbacks are presentation and safety risks;
- clinical content should not be invented by software agents;
- numbers and strong claims should be reproducible or removed.

These are useful **method rules**. They do not automatically validate the document's factual claims about what the team has built.

### `PRESENTATION_BUILD.md`

Treat as **PRIOR AGENT SYNTHESIS / PROPOSED PRESENTATION ARCHITECTURE**, not as the final presentation specification.

The file proposes a strong conceptual frame around a lossy derivation chain from patient state through caller/operator/dispatch/ambulance/doctor/documentation, and proposes an interactive presentation shell with FLOW/LIVE/DETAIL modes and explicit implementation-state badges.

Those ideas may prove useful. They are not yet canonical simply because they are coherent.

## Important distinction: operational discipline versus scope lock

Some parts of the Claude material are valuable because they improve epistemic discipline. Other parts are much more aggressive **scope decisions**.

Examples of scope decisions that must remain provisional until reconciled with the full project:

- `one pipeline, one case, one demo spine`;
- the claim that the patient-state derivation/lossiness concept is *the* throughline;
- `which arrow does this de-lossify?` as the feature-killing test;
- decisions that specific concepts are automatically roadmap/cut;
- the exact ownership division between Daniel, Frank, Mihai, and the fourth teammate;
- the self-contained HTML presentation shell as the final presentation medium;
- the exact LIVE/DETAIL iframe strategy;
- the rule that four T1 rows is the threshold for having a demo.

These are possible presentation-engineering choices, not established project ontology.

This distinction matters because Daniel's current context-architecture instruction is broader: **fill the glass before cleaning the table; do not let a neat synthesis prematurely become the project.**

## Claims that require measurement or corroboration before presentation use

The following are explicitly not upgraded to factual project truth yet merely because they appear in the Claude documents:

- which capabilities are actually RUNNING versus merely present in code;
- whether the deployed Lovable surface can be iframe-embedded;
- whether a clinician confirmation/sign-off gate exists in the running path;
- whether a `verdict` field exists and survives end-to-end to the visible surface;
- whether synthetic audio tooling named in the document is part of the current presentation path;
- which Corti endpoints are actually called today and what they return;
- whether VIP-origin guideline files are present in any public repository/history and what redistribution rights apply;
- any response-time number or other quantitative claim until independently regenerated/verified;
- whether the proposed `cprnr`/`hjertestop` vocabulary has actually been adopted across active repos;
- whether pre-fetch/warm-cache behavior exists or is purely design;
- whether the presentation shell described in the build file was actually implemented by Claude Code despite the document header saying `Implemented by: Claude Code in VS Code`.

A document header is a claim, not runtime evidence.

## Strong concept worth keeping, but still candidate

The presentation-build document proposes:

> the patient is the source of truth; everything the doctor sees is a derived artifact; the derivation chain is lossy.

This is conceptually compatible with existing team concerns about context drift, incomplete handoffs, source-of-truth thinking, and the danger of acting on an incorrect synthesis.

However, it is still a **candidate explanatory model**, not yet the project's final thesis. It should be tested against:

- Frank's actual clinical workflow and implementation;
- Mihai's actual UX contribution;
- the fourth teammate's contribution;
- the actual running Corti path;
- the broader brainstorm, including ideas not naturally expressible as one lossiness arrow;
- what the team can demonstrate tomorrow.

## Strong safeguard worth keeping

A particularly useful idea from the proposed presentation shell is to make implementation status **visible in the artifact itself** rather than relying on presenter memory under pressure.

That can survive even if the final UI/deck architecture changes:

`evidence present + verified runtime -> present tense allowed`

`partial/untested/external -> clearly labelled as such`

The exact T1/T2/T3 vocabulary is optional; the truth distinction is not.

## Relationship to GitHub source-of-truth protocol

These files illustrate why GitHub is the durable reconciliation layer rather than any individual AI chat.

Claude produced valuable discipline and a coherent proposed build. ChatGPT can compare it against wider context and artifacts. Codex/Claude Code can inspect and run implementation. Teammates contribute clinical and implementation truth. None of those sources is independently sufficient.

The durable chain is:

`incoming source -> provenance/status -> measurement/corroboration -> reconciled project truth -> presentation claim`

No stage may be skipped simply because a source sounds confident.

## Current outcome

Preserve the Claude material as high-value input.

Adopt its **truth-discipline mechanisms** where they strengthen evidence quality.

Do **not** yet adopt its full scope lock, throughline, feature cuts, ownership map, presentation-shell architecture, or implementation assertions as canonical.

The wider evidence field remains open while teammate code, runtime results, Claude/ChatGPT/Codex analysis, and additional source material continue to arrive.
