---
title: Bash for Agents
category: skills
tags: [bash, agent-tools, agent-architecture, cloud-agent-sdk, unix-primitives, file-systems]
aliases:
  - bash is all you need
relationships:
  - target: "[[concepts/agent-tools|Agent Tools]]"
    type: extends
  - target: "[[concepts/agent-terminal|Agent Terminal]]"
    type: extends
  - target: "[[concepts/capability-overhang|Capability Overhang]]"
    type: related_to
  - target: "[[entities/anthropic|Anthropic]]"
    type: related_to
sources:
  - "threads/agent-2-bash-for-agents.md"
summary: Thariq's principle that the bash tool is the most impactful single tool for any agent — enabling reproducible computation, file-based state, chained API calls, and scheduled tasks through Unix primitives.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Bash for Agents

Thariq Al Samarrai's principle: giving agents a bash tool is the single highest-leverage capability enhancement, even for non-coding agents. The thesis is that **bash + Unix file primitives** outperform direct model reasoning for structured data work because they give the agent reproducible, verifiable computation. ^[extracted]

## Core Principle

> "Use the bash tool more." ^[extracted]

Thariq's recommendation to companies building general agents "generally boils down to" this single piece of advice. The insight is that models struggle to extract structured data from large raw inputs (e.g., 100 unstructured emails), but Excel well at writing bash one-liners that process those inputs through shell pipes. ^[extracted]

### Why It Works

Bash gives agents three capabilities the raw model cannot match:

1. **Reproducible results** — results saved to files can be inspected, verified, and double-checked. ^[extracted]
2. **Multi-step reasoning** — the model can break complex queries into a chain of shell commands, using intermediate files as state. ^[extracted]
3. **Verification** — the agent can validate its own output against the raw data via `grep`, `sort`, `uniq`, and similar tools. ^[extracted]

### Concrete Example: Ride-Sharing Expenses

When a user asks "How much did I spend on ride sharing this week?", a direct approach fetches ~100 emails and asks the model to find the answer — which struggles with unstructured data in context. ^[extracted]

With bash, the model writes a script to extract, deduplicate, and sum relevant transactions, saving results to a file for inspection. The model's job shifts from "reason over 100 emails" to "write a shell pipeline that filters and aggregates." ^[extracted]

## Use Cases

### Chaining API Calls

For queries like "get all contacts I've emailed this week," bash enables composing a multi-step pipeline: fetch emails → extract sender addresses → deduplicate → make individual API requests per contact. ^[extracted]

The shell acts as the coordination layer between data sources that no single API call could handle. ^[inferred]

### Video & File Editing

Models excel at writing `ffmpeg` commands to process videos — searching captions for specific timestamps, cutting clips, merging files. The bash tool gives the model the ability to act on media files rather than just describe them. ^[extracted]

### Recurring Tasks

Within an agent container, `cron` or the `at` command lets the agent dynamically create recurring jobs on user request. This turns the agent from a request-response interface into a persistent service. ^[extracted]

## Guardrails & Permissions

The bash tool is powerful but needs guardrails. The Claude Agent SDK provides a bash parser and permission system to control what agents can execute. ^[extracted]

Key permission modes include:

- **`acceptEdits`** — user accepts or rejects tool requests
- **`dontAsk`** — allow all by default
- **`bypassPermissions`** — skip permission checks (dangerous)
- **`plan`** — plan mode only

Evaluation order: hooks → deny rules → ask rules → callback. ^[extracted]

## Related Approaches

**Cloudflare Code Mode** offers a complementary perspective: instead of exposing MCP tools directly to the LLM, convert tools into a TypeScript API and let the LLM write code that calls the API. The rationale is that LLMs have seen enormous amounts of real-world TypeScript in their training data but only contrived examples of tool calls. ^[extracted]

Thariq's response: it's not just about code execution — files and Unix primitives are the other half of what makes bash powerful for agents. ^[extracted]

## Open Questions

- How do you balance bash flexibility against the security surface it opens? ^[ambiguous]
- Is the "bash for everything" approach still valid as models improve at structured reasoning? ^[ambiguous]
- What's the optimal permission model for non-coding agents using bash? ^[inferred]

## Sources

- [[entities/thariq-al-samarrai|Thariq Al Samarrai]] — "bash is all you need" thread (Oct 27, 2025) — https://x.com/trq212/status/1982869394482139206
