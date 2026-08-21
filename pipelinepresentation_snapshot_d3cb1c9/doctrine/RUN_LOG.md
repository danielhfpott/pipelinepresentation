# RUN_LOG.md

**Append-only.** Newest entry at the bottom. Never edit or delete a
previous entry — if something was wrong, write a new entry saying so.
The log is a record of what happened, not a description of the current
state, and its value comes entirely from being trustworthy.

This file is the handoff between sessions and between people. A session
that ends without an entry has lost its work for whoever opens next.

---

## Entry format — copy this block

```
### [HH:MM] <who> — <one-line headline>

**Did:** what actually happened. Past tense. Specific.
**Measured:** command run → real output. Or `none`.
**Broke:** what failed, with the error. Or `nothing`.
**Next:** the single next action, concrete enough to start cold.
**Blocked on:** who or what. Or `nothing`.
```

Rules:

- **Measured** takes real output or the word `none`. Never a summary of
  output, never a claim about what the output would be.
- **Next** is one action, not a list. If there are three, the other two
  go in the next entry after the first is done.
- Write the entry even when the session accomplished nothing. Especially
  then — "spent 40 minutes on X, it does not work, here is why" is the
  most valuable entry type in the file.
- Timestamps in local time, 24h.

---

## Log

### [--:--] SEED — doc set established

**Did:** Created `CLAUDE.md`, `HACKATHON_TRUTH_DOCTRINE.md`,
`PRESENTATION_BUILD.md`, `RUN_LOG.md`, `DEMO_SCRIPT.md`,
`scripts/preflight.sh`. Throughline fixed. `cprnr` / `hjertestop`
vocabulary split declared binding.
**Measured:** none.
**Broke:** nothing.
**Next:** run the tier audit (`HACKATHON_TRUTH_DOCTRINE.md` §9.1) and
populate §2 of that file from real output.
**Blocked on:** nothing.

---

## Open questions — move to the log once answered, do not answer here

These are carried forward until measured. Adding to this list is fine.
Answering an item in place is not — the answer goes in a log entry with
its measurement, and the item gets struck here.

- [ ] Tier of all 12 capabilities (`HACKATHON_TRUTH_DOCTRINE.md` §2)
- [ ] Does `verdict` survive to the rendered surface? (doctrine §7)
- [ ] Every number reproducible today? (doctrine §3.6)
- [ ] VIP PDFs in git history as well as working tree? (doctrine §4)
- [ ] Does the phone app URL allow iframe embedding?
      (`PRESENTATION_BUILD.md` §4.3)
- [ ] Is any pre-fetch implemented, or is it a design slide?
      (`PRESENTATION_BUILD.md` §3.4)
- [ ] Does a doctor confirm / sign-off gate exist in the running path?
      (doctrine §6)
- [ ] Which Corti endpoints do we actually call? One real
      request/response pair each. (doctrine §3.2)
- [ ] Presentation slot length and hard stop
- [ ] Demo audio asset committed and deterministic? (doctrine §5)
