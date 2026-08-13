---
title: Anthropic
category: entities
tags: [company, AI, Claude, research, developer-tools]
aliases: [anthropic]
relationships:
 - target: '[[concepts/agi|AGI]]'
   type: related_to
 - target: '[[entities/claude-code]]'
   type: implements
 - target: '[[entities/cat-wu]]'
   type: related_to
sources:
 - https://www.youtube.com/watch?v=4sX_He5c4sI
 - https://x.com/i/status/2083486328172273795
 - https://claude.com/blog/product-management-on-the-ai-exponential
 - https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents
summary: Anthropic is the company behind Claude Code, the coding agent presented in a lifecycle-spanning product demonstration.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-08-02
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-08-13
---

# Anthropic

**Anthropic** is an AI company featured in the keynote lineup at the AI Engineer World's Fair 2026. ^[extracted]

## Claude Code

Anthropic builds Claude Code, the coding agent presented in the source video. The demo frames the product as a way to turn feature-level requests into repository changes and to extend agentic coding through IDE integrations and asynchronous GitHub Actions workflows. ^[extracted]

[[entities/cat-wu|Cat Wu]], Claude Code's Head of Product, is the speaker in the embedded product video. ^[extracted]

## 2026-08-13: Effective Harnesses (anthropic.com)

Anthropic's engineering article [[references/anthropic-effective-harnesses|Effective Harnesses for Long-Running Agents]] documents the [[concepts/ai-harness|harness]] pattern Anthropic uses to make the Claude Agent SDK work across many context windows: an **initializer agent** that scaffolds the environment on first run (`init.sh`, a JSON feature list, `claude-progress.txt`, an initial git commit) and a **coding agent** that makes incremental, self-tested, committed progress in each session. ^[extracted]

The article reports that compaction alone is insufficient — a frontier model (Opus 4.5) looping on the SDK still fails at a high-level prompt like "build a clone of claude.ai" — and that the repo-as-system-of-record (feature list + progress file + git history) is what bridges sessions. ^[extracted] The acknowledgements credit the **code RL and Claude Code teams** for enabling long-horizon autonomous software engineering. ^[extracted]

## Related

- [[concepts/agi|AGI]] — the research area
- [[entities/claude-code|Claude Code]] — Anthropic's coding agent
- [[entities/cat-wu|Cat Wu]] — Claude Code's Head of Product
- [[entities/claude-3-7-sonnet|Claude 3.7 Sonnet]] — Anthropic's model
- [[references/anthropic-effective-harnesses|Effective Harnesses for Long-Running Agents]] — the agent-harness article (2026)
- [[misc/web-x-com-i-status-2083486328172273795]] — source page

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
- Claude Code product video: https://x.com/i/status/2083486328172273795
- Cat Wu's official product-management article: https://claude.com/blog/product-management-on-the-ai-exponential
- Effective Harnesses for Long-Running Agents: https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents
