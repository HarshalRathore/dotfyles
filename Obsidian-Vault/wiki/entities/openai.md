---
title: OpenAI
category: entities
tags: [company, AI, GPT, Codex, ChatGPT]
aliases: [openai]
relationships:
  - target: '[[entities/codex|Codex]]'
    type: creator_of
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
  - https://openai.com/index/harness-engineering/
summary: AI company behind GPT models and Codex, featured at WF2026; its 2026-08 harness-engineering article documents a ~1M-line agent-built product.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-08-13
---

# OpenAI

**OpenAI** is an AI company behind GPT models and Codex, featured at the AI Engineer World's Fair 2026. ^[extracted]

## 2026-08-13: Harness Engineering (openai.com)

In [[references/openai-harness-engineering|Harness engineering: leveraging Codex in an agent-first world]] (2026-02-11, by Member of the Technical Staff Ryan Lopopolo, with Victor Zhu and Zach Brock), OpenAI describes a five-month internal experiment: an internal beta product shipped with **zero lines of manually-written code** — every line (application logic, tests, CI, documentation, observability, internal tooling) written by Codex agents. ^[extracted]

Key claims about OpenAI's harness-engineering work:

- ~1 million lines of code and ~1,500 merged pull requests, driven by 3 engineers growing to 7; throughput **rose** as the team grew (3.5 PRs per engineer per day); estimated at ~1/10th the time hand-writing would have taken. ^[extracted]
- Engineering's role shifted to designing environments, specifying intent, and building feedback loops ("Humans steer. Agents execute."); the repository's docs/ knowledge base became the system of record, with a ~100-line AGENTS.md acting as table of contents rather than encyclopedia. ^[extracted]
- Architecture is enforced mechanically (fixed per-domain layer sets, a single Providers interface for cross-cutting concerns, custom linters with remediation instructions), and drift from agent replication is handled by recurring "garbage collection" cleanup tasks and golden principles. ^[extracted]
- Codex crossed an autonomy threshold where a single prompt can drive a feature end-to-end (reproduce → fix → validate → PR → merge) — stated as repository-specific, not assumed to generalize. ^[extracted]

## Related

- [[entities/codex|Codex]] — OpenAI's coding agent
- [[entities/gpt-4-5|GPT 4.5]] — OpenAI's model lineage
- [[references/openai-harness-engineering|Harness Engineering (openai.com)]] — deep-dive of the article

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
- Harness engineering: leveraging Codex in an agent-first world (2026-02-11): https://openai.com/index/harness-engineering/
