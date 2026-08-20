# 14 — Frank stream: code + runtime verification

## Provenance

**Method:** direct clone of the private repository `Clinlog/hackathon-ppj` using the `gh` CLI under Daniel's authenticated GitHub account, inspected and **executed** locally by Claude Code.

**Commit inspected:** `b1f816b` — *"feat: structure the ambient event log into a normal note after stop"*, authored 2026-08-20 21:17.
**Verified:** 2026-08-21, ~00:20.
**Sole contributor at this commit:** `FrankCPott` (39 commits).

This closes the gap recorded in `05_TEAM_IMPLEMENTATION_EVIDENCE_FRANK.md`, which stated the private repository could not be fetched by ChatGPT's connector and that **no claim had been upgraded to IMPLEMENTED from repository inspection**. That constraint no longer applies.

**Status transition achieved:** `OBSERVED README CLAIM` → `IMPLEMENTED (code-evidenced)` → `RUNTIME/TEST-EVIDENCED` for the layers listed in §1.

**Status NOT achieved:** nothing below establishes live Corti behaviour. See §6.

---

## 1. What was executed, and what the execution proves

| Gate | Command | Result |
|---|---|---|
| Unit/logic tests | `npx vitest run` | **16 files, 159 tests, all passed** |
| Anonymisation pattern net | `node --experimental-strip-types supabase/functions/_shared/pattern-net.test.mjs` | **ALL PASSED** |
| Typecheck | `npx tsc -b` | **FAILED at `b1f816b`** — see §4 |
| Production bundle | `npx vite build` | passed |

**What this proves:** the deterministic, offline layers of this build are real, exercised, and green — not scaffolding. Test files sit beside the modules they cover (`rules.test.ts`, `facts.test.ts`, `wakeWord.test.ts`, `cp437.test.ts`, `demoContent.test.ts`, `labels.test.ts`, `lookup.test.ts`, `serialQueue.test.ts`, `pubmed.test.ts`, and others).

**What this does not prove:** all of these tests run *without Corti credentials*. They exercise pure logic. No claim here may be read as "the Corti pipeline was observed working."

---

## 2. Implementation scale (measured, not estimated)

`git ls-tree` reports **251 tracked files**. Line counts by area:

| Area | Lines | Role |
|---|---|---|
| `src/screens/` | 2,498 | 9 screens: Login, Setup, Dictate, Ambient, Edit, NotesList, NoteDetail, Qr, Reflection |
| `supabase/functions/` | 2,040 | **13** edge functions |
| `src/lib/alarms/` | 1,772 | safety monitor — rules, facts, findings, drug data |
| `src/lib/note/` | 686 | note/section model |
| `src/lib/akutBarn/` | 484 | paediatric weight-based dosing |
| `src/lib/audio/` | 316 | AudioWorklet PCM capture, WAV encode |
| `src/lib/qr/` | 304 | CP437 QR protocol |
| `src/lib/ambient/` | 225 | wake-word matching, event-log file |
| `src/lib/guideline/` | 151 | guideline lookup |

### Contradiction to preserve

The README states **"ni edge functions"** (nine). The repository contains **thirteen**. The README was written 2026-08-20 11:49, before the ambient subsystem landed. **The README is stale, not wrong-in-kind.** Prefer the code.

---

## 3. Corti API coverage vs. the stated rubric — the presentation-critical finding

`08_CORTI_ASSIGNMENT_AND_JUDGING_SOURCE.md` records that teams must use **at least four of five** Corti product areas. Endpoints actually invoked, per edge function:

| Corti endpoint | Invoked by |
|---|---|
| `/v2/interactions/` | `transcribe-batch`, `ambient-session` |
| `/v2/documents/` | `structure-corti` |
| `/v1/contexts/` + `/v1/message` | `anonymize-corti`, `guideline-router`, `rag-search`, `corti-reflect`, `correct-section`, `ambient-query`, `ambient-safety` |
| auth token | `corti-token` |

Mapped onto the five product areas:

| # | Product area | Status | Evidence |
|---|---|---|---|
| 1 | dictation | **covered** | `DictateScreen` → `transcribe-batch` |
| 2 | speech-to-text | **covered** | `/v2/interactions/` batch transcription |
| 3 | ambient speech-to-text | **covered** | `ambient-session` → live `/stream` WebSocket, `AmbientScreen` |
| 4 | text generation | **covered** | `/v2/documents/` Guided Documents → 11 sections |
| 5 | **medical coding** | **ABSENT** | no ICD, SNOMED, or coding endpoint anywhere in the tree |

**Result: exactly 4 of 5 — the stated minimum is met with zero margin.**

Two consequences the team should decide on deliberately rather than by accident:

1. **Medical coding is the single missing product area.** It is also the only remaining way to gain margin above the minimum.
2. **A judge could collapse areas 1 and 2**, since dictation and batch speech-to-text both resolve to `/v2/interactions/`. If that collapse happens, coverage reads as 3. Adding medical coding removes the risk entirely.

### Under-claimed strength: the agentic framework

**Seven distinct Corti agents** run through `/v1/contexts/` + `/v1/message`: anonymisation, guideline router, RAG relevance gate, reflection, section correction, ambient query, ambient safety. The briefing lists **"best use of the agentic framework"** as its own bonus superlative. This is currently the build's most under-claimed asset relative to the rubric.

---

## 4. Defect found and fixed: the production build was broken

At `b1f816b`, `npm run build` (`tsc -b && vite build`) **failed**:

```
src/lib/akutBarn/labels.ts(84,32): error TS7053: Element implicitly has an 'any' type
src/lib/backend/serialQueue.test.ts(19,11): error TS6133: 'b' is declared but its value is never read
```

**Impact:** `npm run dev` and `npx vite build` are unaffected, so the app still runs and still bundles — but the documented build command fails, and `viden/19` plans a published demo build. This would have surfaced at the worst possible moment.

**Root cause (not a logic bug):** `FIELD_LABELS` was annotated `Record<string, …>`, which widens `keyof typeof FIELD_LABELS` to `string`, making `card[key]` an unsafe index. The second error is a genuinely vestigial variable — the test it sits in passes without it.

**Fix — verified locally: `tsc -b` exits 0, `npm run build` exits 0, 159/159 tests still pass.** Four lines:

```diff
-const FIELD_LABELS: Record<string, { da: string; en: string }> = {
+const FIELD_LABELS = {
   …
-};
+} satisfies Record<string, { da: string; en: string }>;

-    const b = deferred<void>();
```

`satisfies` keeps the object's shape checked while letting the literal keys stay narrow — it restores type-safety rather than suppressing the error.

**Lane discipline:** `viden/20` §4 assigns `src/` to Frank's own Claude Code and states that Daniel deploys nothing. **This patch has not been pushed.** It is held as `fix-tsc-build.patch` for Frank to apply.

---

## 5. Answers to the open questions in doc 05

| Question from `05_TEAM_IMPLEMENTATION_EVIDENCE_FRANK.md` | Answer | Status |
|---|---|---|
| Which README claims have executable code behind them? | All major ones; see §2–§3 | code-evidenced |
| Which Corti endpoints are actually invoked? | §3 table | code-evidenced |
| What does anonymisation actually do, and where? | Two layers: deterministic `pattern-net.ts` + a Corti agent; **fail-closed** by explicit policy | test-evidenced |
| Is the 11-section guided-document structure live? | `structure-corti` → `/v2/documents/`; section UUID map generated and verified by script | code-evidenced |
| What does the QR actually contain? | Real CP437 byte-mode encoding, client-side, tested; **works offline** | test-evidenced |
| Is the hospital/EPJ endpoint real? | **No.** QR generation is real; the scanning hospital tablet is an integration assumption | EXTERNAL ASSUMPTION |
| How does VIP lookup work? | Agent router over the Danish corpus, **fail-open** by explicit policy | code-evidenced |
| What is the "relevance gate"? | A Corti agent, not a similarity threshold — `viden/11` §H16 records that no threshold separated the classes (0.801 vs 0.856) | code-evidenced |
| Which features need external conditions? | Everything touching `/v1`/`/v2` needs `.env.corti` plus a Supabase deploy; `capture-ingest` is inert (503) without ICU secrets | EXTERNAL |

---

## 6. What remains UNVERIFIED — do not present as proven

The clone carried no `.env.corti` and no deployed Supabase project, so **none of the following was observed**:

- any live Corti call succeeding (ASR, Guided Documents, or any of the seven agents);
- end-to-end latency, including the "~2 s" guideline-router figure in `viden/17`;
- the measured accuracy figures (router 81–88% vs BM25 38%; refusal 96–100% vs 63%) — these are **Frank's own recorded measurements**, credible and specific, but not independently reproduced here;
- live microphone capture and the AudioWorklet path;
- the QR actually scanning on a physical hospital tablet;
- demo-mode reliability under presentation conditions;
- the English template, which `viden/19` itself flags as shipping **unvalidated**.

Twelve Danish guideline PDF filenames exceeded Windows path limits during the first clone attempt. This is a local filesystem artifact, not a repository defect; a re-clone with `core.longpaths=true` was clean.

---

## 7. Implication for the presentation spine

The format is **~5 minutes**, not 15 (`08_CORTI_…` §5). Against that clock, the verified material supports a narrow, defensible spine — and the strongest asset is one the planning documents never anticipated.

The ambient safety monitor (`src/lib/alarms/`, 1,772 lines, added 2026-08-20 19:40–21:17) carries this comment at the head of its rule engine:

> *"They compare facts with facts, so they fire regardless of how the clinician phrased things and regardless of how far apart in the encounter the two statements were — no keyword matching, no LLM call, free to run on every update."*

That is the brainstorm's recurring theme — *preserving clinical context rather than rebuilding it at every boundary* — implemented and unit-tested. Concretely: an allergy stated at minute 2 fires against a drug named at minute 25, and rule 1 fires on a **planned** drug, not only a given one, so the warning precedes administration rather than documenting it afterwards.

It also gives "beyond a typical ambient scribe" a literal answer: **a scribe records; this contradicts the record against itself.** The `FindingCategory` type is `"keyword" | "contradiction" | "missing"`, and that `"missing"` tier is the clinician's retrospective *"did I do everything I reasonably could?"* from `03_LIVING_SYNTHESIS.md` §6, encoded as a rule.

The implemented contradiction rules cover clinically real failure modes: allergy conflicts, drug–drug interactions, contraindications against live vitals, weight-adjusted dose ceilings, AVPU/GCS disagreement, laterality drift (left/right stated for the same body part), and unexplained vital-sign jumps.

**This connection is offered as reconciliation, not as a locked thesis.** It is one reading, and the spine still owes reconciliation against Mihai's and the fourth teammate's work, neither of which has been inspected.

---

## 8. Open items this verification did not touch

- **Mihai's stream** — not inspected; no repository identified in the current context bundle.
- **The fourth teammate** — still ungrounded, per `00_READ_ME_FIRST.md`.
- **Medical coding** — the §3 decision.
- **Who submits** — unresolved.

### Public/private caution

`danielhfpott/pipelinepresentation` is **public**. `Clinlog/hackathon-ppj` is **private** and contains Region H VIP guideline PDFs. This file deliberately contains no clinical content, no patient data, and no secrets — only architecture, file paths, and measurements.

A secret scan of the private repository's full history found **no credentials ever committed**; `.gitignore` covered `.env*`, `*credential*`, `*.pem`, and `*.key` from the first commit. The two history matches for "token" are `src/theme/tokens.ts` (design tokens) and the `corti-token` function name.
