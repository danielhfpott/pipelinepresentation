#!/usr/bin/env bash
# preflight.sh — run before every push and before stage. Must exit 0.
#
# This is a gate, not a checklist. A checklist at hour eleven gets
# skimmed. This does not negotiate.
#
# Deliberately does NOT use `set -e`: every check runs, every failure is
# reported, and the exit code comes at the end. Partial information at
# 3am is worse than none.

set -u

FAIL=0
WARN=0

red()  { printf '\033[31m%s\033[0m\n' "$*"; }
grn()  { printf '\033[32m%s\033[0m\n' "$*"; }
ylw()  { printf '\033[33m%s\033[0m\n' "$*"; }
hdr()  { printf '\n\033[1m== %s\033[0m\n' "$*"; }

fail() { red   "  FAIL  $*"; FAIL=$((FAIL+1)); }
warn() { ylw   "  WARN  $*"; WARN=$((WARN+1)); }
pass() { grn   "  ok    $*"; }

cd "$(git rev-parse --show-toplevel 2>/dev/null || echo .)" || exit 2

# Files that are allowed to contain the banned vocabulary because they
# are the documents that define the ban.
DOC_EXCLUDE='CLAUDE.md|PRESENTATION_BUILD.md|HACKATHON_TRUTH_DOCTRINE.md|DEMO_SCRIPT.md|preflight.sh'

# ---------------------------------------------------------------- rights
hdr "Corpus rights — VIP guideline exposure"

VIP_TRACKED=$(git ls-files | grep -Ei 'vip|regionh' || true)
if [ -n "$VIP_TRACKED" ]; then
  fail "VIP-origin files are TRACKED. These must not reach a public repo:"
  printf '        %s\n' $VIP_TRACKED
else
  pass "no VIP-origin files in the working tree index"
fi

VIP_HIST=$(git log --all --pretty=format: --name-only 2>/dev/null \
           | sort -u | grep -Ei 'vip|regionh' | grep -v '^$' || true)
if [ -n "$VIP_HIST" ]; then
  fail "VIP-origin files exist in git HISTORY. .gitignore does not remove these."
  printf '        %s\n' $VIP_HIST
  red   "        → history rewrite or fresh repo required before push"
else
  pass "no VIP-origin files in git history"
fi

PDF_TRACKED=$(git ls-files '*.pdf' | head -20 || true)
if [ -n "$PDF_TRACKED" ]; then
  warn "PDFs are tracked — confirm each is ours to publish:"
  printf '        %s\n' $PDF_TRACKED
else
  pass "no tracked PDFs"
fi

# --------------------------------------------------------------- secrets
hdr "Secrets and credentials"

SECRETS=$(git ls-files | grep -E '(^|/)\.env|secret|credential|\.pem$|\.key$' || true)
if [ -n "$SECRETS" ]; then
  fail "credential-shaped files are tracked:"
  printf '        %s\n' $SECRETS
else
  pass "no credential-shaped files tracked"
fi

KEYS=$(git grep -InE '(sk-[A-Za-z0-9]{20,}|api[_-]?key["'"'"' ]*[:=]["'"'"' ]*[A-Za-z0-9]{16,})' \
       -- . 2>/dev/null | grep -vE "$DOC_EXCLUDE" | head -10 || true)
if [ -n "$KEYS" ]; then
  fail "possible hardcoded key material:"
  printf '        %s\n' "$KEYS"
else
  pass "no obvious hardcoded key material"
fi

# ------------------------------------------------------------ vocabulary
hdr "Vocabulary — binding (CLAUDE.md)"

# Case-sensitive whole-word CPR. Does not match lowercase `cprnr`.
BARE_CPR=$(git grep -Inw 'CPR' -- . 2>/dev/null \
           | grep -vE "$DOC_EXCLUDE" | head -20 || true)
if [ -n "$BARE_CPR" ]; then
  fail "bare 'CPR' found — ambiguous between cprnr and hjertestop:"
  printf '        %s\n' "$BARE_CPR"
else
  pass "no bare 'CPR' outside the defining documents"
fi

TRAINED=$(git grep -InEi '\b(we trained|our model (was )?(trained|learned)|fine-?tun)' -- . 2>/dev/null \
          | grep -vE "$DOC_EXCLUDE" | head -20 || true)
if [ -n "$TRAINED" ]; then
  fail "training language found — we train nothing:"
  printf '        %s\n' "$TRAINED"
else
  pass "no training language"
fi

# ---------------------------------------------------------- presentation
hdr "Presentation shell"

SHELL_FILE="presentation/index.html"
if [ -f "$SHELL_FILE" ]; then
  pass "$SHELL_FILE exists"

  if grep -qE 'https?://(cdn|unpkg|cdnjs|jsdelivr|fonts\.googleapis)' "$SHELL_FILE"; then
    fail "shell has external CDN/font dependencies — it must run fully offline"
  else
    pass "no external CDN dependencies"
  fi

  # An entry with a non-DESIGNED tier and an empty evidence string is a
  # claim with no backing. The render function should force these to
  # DESIGNED; if one is present in the data, someone edited it by hand.
  UNEVIDENCED=$(grep -nE "tier:\s*'(RUNNING|BUILT)'" "$SHELL_FILE" || true)
  if [ -n "$UNEVIDENCED" ]; then
    warn "entries claiming RUNNING/BUILT — confirm each has non-empty evidence:"
    printf '        %s\n' "$UNEVIDENCED"
  else
    pass "no RUNNING/BUILT tier claims in the data (or none set yet)"
  fi
else
  fail "$SHELL_FILE missing"
fi

# ------------------------------------------------------------ demo assets
hdr "Demo assets"

AUDIO=$(git ls-files | grep -E '\.(wav|mp3|m4a|ogg)$' | head -5 || true)
if [ -n "$AUDIO" ]; then
  pass "demo audio committed:"
  printf '        %s\n' $AUDIO
else
  fail "no committed audio — demo must not depend on live capture (doctrine §5)"
fi

SHOTS=$(git ls-files 'presentation/assets/*' 2>/dev/null | head -5 || true)
if [ -n "$SHOTS" ]; then
  pass "DETAIL screenshots present"
else
  warn "no DETAIL screenshots — this is the wifi-down fallback"
fi

# -------------------------------------------------------- from-scratch
hdr "From-scratch provenance (Corti event rule)"

EVENT_START="2026-08-19"

PRE_EVENT=$(git log --before="$EVENT_START" --oneline 2>/dev/null | head -5 || true)
if [ -n "$PRE_EVENT" ]; then
  fail "commits dated before $EVENT_START — code predates the event:"
  printf '        %s\n' "$PRE_EVENT"
else
  pass "no commits predate $EVENT_START"
fi

# A bulk import of mature code looks like one commit with a very large
# file count. Report the biggest so a human can judge it.
BIGGEST=$(git log --pretty=format:'%h %ad %s' --date=short --name-only 2>/dev/null \
          | awk '/^[0-9a-f]{7,} /{if(h){print n" "h} h=$0; n=0; next} NF{n++} END{if(h)print n" "h}' \
          | sort -rn | head -3 || true)
if [ -n "$BIGGEST" ]; then
  ylw "  info  largest commits by file count — confirm each was written here:"
  printf '        %s\n' "$BIGGEST"
fi

CARRIED=$(git ls-files | grep -Ei 'hackprep|papalyd|vp_core|crosspair' || true)
if [ -n "$CARRIED" ]; then
  fail "files from prewritten personal projects are tracked:"
  printf '        %s\n' $CARRIED
else
  pass "no known prewritten project files tracked"
fi

# ------------------------------------------------------------------ repo
hdr "Repository state"

if [ -f "README.md" ]; then
  pass "README.md present"
else
  warn "no README.md — judges will open the repo first"
fi

if [ -f "corpus/README.md" ]; then
  pass "corpus/README.md present (how to obtain guidelines)"
else
  warn "no corpus/README.md — repo may not be runnable without VIP access"
fi

DIRTY=$(git status --porcelain | head -10 || true)
if [ -n "$DIRTY" ]; then
  warn "uncommitted changes present:"
  printf '        %s\n' "$DIRTY"
else
  pass "working tree clean"
fi

if [ -f "RUN_LOG.md" ]; then
  LAST=$(grep -c '^### ' RUN_LOG.md 2>/dev/null || echo 0)
  pass "RUN_LOG.md present, $LAST entries"
else
  fail "RUN_LOG.md missing"
fi

# ---------------------------------------------------------------- verdict
hdr "Verdict"

if [ "$FAIL" -gt 0 ]; then
  red "$FAIL blocking failure(s), $WARN warning(s). DO NOT PUSH."
  exit 1
fi

if [ "$WARN" -gt 0 ]; then
  ylw "0 failures, $WARN warning(s). Read them, then decide."
  exit 0
fi

grn "All checks passed."
exit 0
