---
title: "Read Tool Engineering"
category: skills
tags:
- skill
- read-tool
- harness-design
- token-efficiency
- coding-agents
- open-models
sources:
- "https://commandcode.ai/docs/harness-engineering/read-tool"
- "https://x.com/MrAhmadAwais/status/2086521445694517404"
summary: "14 design lessons for a file-read tool spending tokens only on what the model needs — ceilings, recovery-on-silence, partial-view ledger, self-expiring dedup, filename repair, coercion rules."
provenance:
  extracted: 0.80
  inferred: 0.16
  ambiguous: 0.04
base_confidence: 0.68
lifecycle: draft
lifecycle_changed: "2026-08-09"
tier: supporting
created: "2026-08-09T20:15:12Z"
updated: "2026-08-09T20:15:12Z"
relationships:
  - target: "[[references/command-code-read-tool-harness-engineering]]"
    type: derived_from
  - target: "[[concepts/tool-input-repair-layer]]"
    type: extends
---

# Read Tool Engineering — Fourteen Design Lessons

Executable checklist for building a `read_file`-style tool, distilled from Command Code's v1 rebuild (98 tests, ~50M reads/month). Background: [[references/command-code-read-tool-harness-engineering|The Read Tool — deep dive]]. ^[extracted]

## The Frame

`read_file` is a **compiler that turns the filesystem into the model's context** — every decision inside it is a token-budget decision multiplied by millions of uses. Optimize **cost per successful read**, not read correctness alone. ^[extracted]

## The 14 Lessons

**1. Three ceilings, not one.** Line window (2,000 lines) for long files; byte budget (128 KB) for wide lines; per-line clamp (2,000 ch/line) for minified bundles. The third is the one everyone skips — a single minified line inside the window can eat the whole byte budget. ^[extracted]

**2. The most expensive return is silence.** Every dead end must name its own recovery (`"is empty"`, `"retry smaller"`, `"offset=1847"`, `"offset=2001"`, `"pdftotext"`). Precompute resume offsets — never make the model do pagination arithmetic. No `Error:` prefix: a fact about the world is not a failure. Byte-truncated reads resume ON the last shown line (it was cut mid-content); an off-by-one resume hint is a silently corrupted read. ^[extracted]

**3. Track what the model has seen (partial-view ledger).** Record content + mtime + partial flag per read; `write_file` must refuse to overwrite a file only partly seen. Watch for relational deadlocks between tools (read → clamped line → ledger partial → write DENIED → dedup "unchanged" → forever). Shape invariants are checkable per field; relational invariants are found only in production traffic. ^[extracted]

**4. Self-expiring dedup cache.** Stub repeated identical reads (mtime + size + exact window match) — but a stale stub referencing a compacted-away result is catastrophic, so a hit consumes its record. Cheap miss, catastrophic stale hit → expire on use. Ship a kill-switch env var. ^[extracted]

**5. Filenames are adversarial.** macOS: narrow no-break space, NFD decomposition, curly quotes — identical on screen, different bytes. Retry 7 candidate spellings (space variants, NFD/NFC, quote variants) re-checked against the workspace boundary, then "did you mean?" with substring + Levenshtein ≤ 2 (`AGENT.md` → `AGENTS.md`). When a failure is invisible to the model, retrying is the tool's job. ^[extracted]

**6. Defer at chunk boundaries.** Stream reads; when the line limit is hit exactly at a chunk end, the "more file?" answer doesn't exist yet — defer to the next chunk rather than guessing. Never `break` out of a for-await (destroys the stream). ^[extracted]

**7. Images: ladder, don't fail.** JPEG quality ladder 95→80→60→40→20, attach at first fit; sniff magic bytes, never extensions. Give non-vision models a separate VISION tool. ^[extracted]

**8. Disclose downscaling.** When attaching a resized image, state the factor (`multiply displayed coords by 2.77`) or every click coordinate is confidently wrong. ^[extracted]

**9. Notebooks as documents.** Tag cells, attach plots as images, and turn any cell output >10K chars into a jq pointer so one dataframe dump can't eat the read budget. ^[extracted]

**10. Boring formats, one-line answers.** SVG → XML text (editable); binary → mime note, never garbage bytes; PDF → `pdftotext` hint. Let the model reason about the file without paying for the whole file. ^[extracted]

**11. Numbering matches `cat -n`.** 1-indexed, prefix every line — model, editor, and stack traces must agree on "line 412". ^[extracted]

**12. Repair inputs, don't bounce them.** Accept aliases (filePath, absolutePath, target_file…); coerce numeric strings with `Number()`, never `parseInt` (`"2abc"` rejected); reject fractional offsets; support negative offset = read the tail. A silently wrong window is worse than an error. ^[extracted]

**13. Block device paths by name, before I/O.** `/dev/zero`, `/dev/urandom`, `/dev/stdin`, `/proc/<pid>/fd/*` — no extension check, no workspace-boundary reliance (cwd can be `/`). A read that hangs on /dev/zero is a self-shipped DoS. ^[extracted]

**14. Hygiene.** Strip BOM; normalize CRLF→LF; binary-search UTF-8 prefixes so truncation never splits a codepoint; every cache gets a kill-switch. ^[extracted]

## Verification

- Benchmark against other harnesses on the *cheap* rows first (line window, byte cap) — those are table stakes; the differentiators are the invisible-failure rows (chunk deferral, unicode retry, device blocklist, EOF notes, did-you-mean, ledger). ^[extracted]
- Watch production traffic for relational failures — input validation cannot catch them. ^[extracted]
- When you can't know yet, say nothing yet; when you must choose, prefer one wasted turn over a corrupted read or an unbounded loop. ^[inferred]

## Related

- [[concepts/tool-input-repair-layer]] — the input-repair layer this extends
- [[concepts/ai-harness]] — where the read tool fits in the harness
- [[concepts/context-engineering]] — why reads dominate the token bill
- [[entities/commandcode|Command Code]] — reference implementation
- [[concepts/agent-code-editor]] — the write-side complement
