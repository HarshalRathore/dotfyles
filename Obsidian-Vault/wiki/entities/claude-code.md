---
title: Claude Code
category: entities
tags: [tool, AI-coding, Anthropic, system-prompt, U-shaped-curve, agentic-coding]
aliases: [claude code, Claude Code]
relationships:
  - target: '[[concepts/system-prompt-curve]]'
    type: implements
  - target: '[[entities/cat-wu]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
  - https://x.com/trq212/status/2035372725921882119
  - https://x.com/i/status/2083486328172273795
  - https://claude.com/blog/product-management-on-the-ai-exponential
  - https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models
  - https://commandcode.ai/docs/harness-engineering/read-tool
  - https://x.com/MrAhmadAwais/status/2086521445694517404
summary: "Anthropic's coding agent combining filesystem-centered context with feature-level implementation — and the product that demonstrated the 80% system-prompt reduction; its read tool also anchors Command Code's 2026 ten-harness benchmark as the probe-only column."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-08-09T20:15:12Z
---

# Claude Code

**Claude Code** is Anthropic's AI coding agent that demonstrated the **U-shaped system prompt curve** by removing **80% of its system prompt** — a deliberate reduction tied to newer model capabilities. ^[extracted]

## System Prompt Reduction

Claude Code's 80% system prompt reduction is not an accident; it's a response to model capability improvements. The newest class of models want fewer, simpler system prompts because they understand context well enough that verbose prompts are unnecessary. ^[extracted]

Anthropic's official article (July 2026) documents the reasoning: the old prompt **overconstrained** Claude Opus 5 and Claude Fable 5 — conflicting instructions in the same request forced the model to burn reasoning tokens deciding which rule wins, and the cut produced no measurable loss on coding evaluations. The replacement guidance runs six shifts (rules → judgment, examples → interface design, upfront context → progressive disclosure, repetition → tool descriptions, CLAUDE.md memory → auto-memory, simple specs → rich references). The lessons ship as the `claude doctor` (`/doctor`) command, which rightsizes user skills and CLAUDE.md files. ^[extracted] See [[references/new-rules-of-context-engineering|the full article distillation]] and the [[concepts/system-prompt-curve|system prompt curve]] this demonstrates.

## Relation to File Systems

Claude Code served as the proof-of-concept for the thesis that AI agents should use the [[concepts/agents-should-use-a-filesystem|file system as their state representation]] — demonstrating that agents don't need to remember everything in context, just know how to find it. ^[extracted]

## Lifecycle-Spanning Coding Agent

The Claude Code product video presents a workflow that starts with a feature request and ends with reviewable repository changes. In the [[entities/excalidraw|Excalidraw]] demo, the agent implements a table component, updates comments, and leaves a commit for the presenter to inspect. ^[extracted]

The same announcement describes VS Code and JetBrains integrations plus asynchronous GitHub Actions execution through the Claude Code SDK. ^[extracted] These surfaces extend Claude Code's filesystem-centered agent loop beyond a terminal session into the wider [[concepts/developer-experience|developer experience]]. ^[inferred]

## Read-Tool Benchmark Column (Command Code, July 2026)

In [[references/command-code-read-tool-harness-engineering|Command Code's 10-harness read-tool benchmark]] (29 July 2026), Claude Code is the only column measured by **probing the live tool** rather than reading source — it ships no open source. Probe results: a 3,000-line file returned whole (no window), a 3,900-character minified line returned whole (no per-line clamp), an empty file (explicit note), a missing `AGENT.md` beside a real `AGENTS.md` (File does not exist, no suggestion). ^[extracted]

Command Code's read of the column: "claude code is the interesting column precisely because it's the incumbent: ledger, notebooks, vision, empty-file note, and then no window, no byte cap, no clamp, no resume offset, no streaming, no suggestion on a miss. That team just hasn't been forced yet, and it runs on models forgiving enough to absorb the waste." ^[extracted] The claims are the benchmark author's own and were produced by AI with little human review — treat as adversarial-pressuring, not settled measurement. ^[ambiguous]

## Related

- [[concepts/system-prompt-curve|System Prompt Curve]] — the curve Claude Code demonstrated
- [[entities/anthropic|Anthropic]] — the company that makes Claude Code
- [[entities/cat-wu|Cat Wu]] — Claude Code's Head of Product and the source video's speaker
- [[entities/excalidraw|Excalidraw]] — repository used in the feature implementation demo
- [[misc/web-x-com-i-status-2083486328172273795]] — source page

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
- Thariq Al-Samarrai's pinned tweet thread: https://x.com/trq212/status/2035372725921882119
- Claude Code product video: https://x.com/i/status/2083486328172273795
- Cat Wu's official product-management article: https://claude.com/blog/product-management-on-the-ai-exponential
- "The new rules of context engineering for Claude 5 generation models": https://claude.com/blog/the-new-rules-of-context-engineering-for-claude-5-generation-models
