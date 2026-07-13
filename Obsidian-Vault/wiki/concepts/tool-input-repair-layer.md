---
title: Tool-Input Repair Layer
category: concepts
tags:
  - tool-calling
  - harness-design
  - schema-validation
  - ai-engineering
  - open-source-models
aliases:
  - tool input repair
  - tool input repair layer
relationships:
  - target: "[[concepts/agent-tool-calling|Agent Tool Calling]]"
    type: extends
  - target: "[[entities/deepseek|DeepSeek]]"
    type: related_to
  - target: "[[entities/zod|Zod]]"
    type: uses
sources:
  - "Twitter — @MrAhmadAwais, May 3 2026 (DeepSeek tool-input repair) — https://x.com/MrAhmadAwais/status/2050956678502420612"
summary: Technique for fixing common LLM tool-calling failures via a small set of targeted repairs (30–100 lines) instead of treating failures as model capability gaps.
provenance:
  extracted: 0.76
  inferred: 0.16
  ambiguous: 0.08
base_confidence: 0.56
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13
updated: 2026-07-13
---

# Tool-Input Repair Layer

A **tool-input repair layer** is a validation-and-repair mechanism that sits between an LLM's tool-calling output and the actual tool invocation. Instead of rejecting malformed tool calls, it applies a small set of targeted repairs to fix common failure modes. The core insight: what looks like a model capability gap is often a harness design problem.

## Problem Context

When using open-source models (DeepSeek, Qwen, GLM) with tool-calling interfaces, the model frequently emits malformed arguments that cause tool invocations to fail — for example, `deepseek-flash` failing on every `/review` run, with every `shellCommand` and `readFile` call bouncing back a raw Zod error blob, unable to recover because the error wasn't in a form the model could read. ^[extracted]

The conventional response has been to treat this as a model limitation. This layer inverts that assumption: failures are predictable, limited, and fixable with a small set of targeted repairs. ^[inferred]

## Four Common Failure Modes

Across models like DeepSeek Flash, DeepSeek V4 Pro, GLM, and Qwen, the same four mistakes repeat almost exactly: ^[extracted]

1. **`null` for optional fields** — Sending `null` for an optional field instead of omitting it entirely.
2. **JSON string instead of array** — Emitting `["a","b"]` as a JSON *string* (the escaped text) instead of an actual JSON array.
3. **Empty placeholder wrapping** — Wrapping a single argument in `{}` where the schema expected an array (e.g. `{"arg": "foo"}` instead of `["foo"]`).
4. **Bare string instead of array** — Passing a bare string where an array was expected (`"foo"` instead of `["foo"]`).

Four repairs, ~30–100 lines each, ordered carefully. When hearing "this open source model can't do tool calls" the assumption is one of those four — correct ~90% of the time. ^[extracted]

### Auto-Link Degenerate Case

The most revealing failure mode involves markdown auto-links. DeepSeek Flash, when asked to edit or write a file, sometimes emits the path as a markdown auto-link: `filePath: "/Users/x/proj/[notes.md](http://notes.md)"` — the `writeFile` tool was creating files literally named `[notes.md](http://notes.md)`. This is not hallucination; it's post-training chat distribution leaking through the tool boundary. The fix: two regex lines that unwrap only the degenerate case. ^[extracted]^[ambiguous] The exact behavioral trigger may vary between model versions.

## Design Principle: Validate-Then-Repair

The initial approach of preprocessing (a normalizer that rewrites input *before* validation) broke immediately — `writeFile` content that happened to be JSON-shaped got rewritten before hitting disk.

The better approach:

1. Parse the tool call as-is
2. If it succeeds, ship it directly
3. On failure, walk the validator's own issues, try the four repairs in order
4. Log `tool_input_repaired` or `tool_input_invalid`

The validator localizes the bug for you — its error messages guide which repair to try first. ^[extracted]

## Shape vs Relational Invariants

Not all problems are fixable with input repair: ^[extracted]

- **Shape invariants** (wrong types, wrong wrappers) — handled by repairs above
- **Relational invariants** (dependencies between fields) — require teaching the model's intent, not repairing the input

Example: `read_file` had a relational invariant where "if you provide offset, you must also provide limit, and vice versa." Input repair can't fix this — instead, teach the function the model's intent: `limit` alone → `offset = 0`; `offset` alone → `limit = 2000`. Surface the decision in the result transparently. ^[extracted]

## Implications

The frame of "tool confusion" is more useful than "capability gap." A strict schema is a choice with a cost — the harness mediates between distributions. ^[extracted]

When the contract gets more forgiving in exactly the places it needs to be, the model doesn't need to change: four small repairs, two regex lines for auto-links, one relational default, one prefix change. ^[extracted]

Practical evidence: after adding a repair layer, DeepSeek V4 Pro beat Opus 4.7 6/10 times on internal evals of [[entities/commandcode|Command Code]]. ^[extracted]

## Sources

- @MrAhmadAwais, Twitter, May 3 2026 — https://x.com/MrAhmadAwais/status/2050956678502420612
- @MrAhmadAwais, Twitter (quoted tweet), May 3 2026 — https://x.com/MrAhmadAwais/status/2050742839827734997
