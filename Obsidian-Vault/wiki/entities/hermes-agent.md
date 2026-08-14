---
title: "Hermes Agent"
category: entities
type: entity
tags: [product]
aliases: [Hermes, Hermes Agent Platform, hermes-agent]
sources:
  - "https://x.com/i/status/2084613319558635940"
  - "https://hermes-agent.nousresearch.com"
created: "2026-08-11"
updated: "2026-08-11"
summary: "Nous Research's open-source, self-improving local-first agent platform — harness with loop engineering, skill/memory auto-accumulation, and multi-gateway chat (Telegram, WhatsApp, Discord, CLI)."
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
reviewed: false
---

# Hermes Agent

**Type:** Product (open-source AI agent platform)
**Developer:** [[entities/nous-research|Nous Research]]
**Docs:** https://hermes-agent.nousresearch.com

## Basic Information

- Open-source agent platform; Sean's walkthrough claims 200K+ GitHub stars "in a very short period of time". ^[inferred]
- Runs on the local machine (CLI, Docker/SSH, or VPS); interacts via chat gateways (Telegram, WhatsApp, Discord) or desktop app / CLI. ^[extracted]
- Self-improving learning loop: creates its own skills from experience rather than requiring hand-written skill files. ^[extracted]
- Local-first knowledge: procedural memory (`~/.hermes/skills/`), semantic memory (`memory.md`), episodic memory (`state.db` SQLite); nothing stored on the cloud. ^[extracted]

## Description

Hermes Agent is Nous Research's agent harness: a "self-improving AI agent" whose loop engineering, memory system, and toolset are designed to run persistently on the user's own machine. Sean's August 2026 walkthrough ("Hermes agent harness and its loop engineering system") demonstrates its core loop: user prompt → working memory (chat history + system prompt) → LLM → tool calls (terminal, browser, delegate_task, cron, skill management, MCP) → end-loop guardrail → reply. Distinctive traits: the user-editable `soul.md` system prompt, plain-text semantic memory (top-k keyword retrieval, no embeddings/RAG), auxiliary cheaper models consolidating episodic history into durable facts, and the absence of a built-in eval/LLM-ops layer (only run logs and trajectory export). ^[extracted]

## Related Entities

- [[entities/nous-research]] — developer
- [[entities/cyrilxbt]] — the post that amplified the walkthrough video
- [[entities/anthropic]] — Claude Code, repeatedly compared as the reference harness

## Related Concepts

- [[concepts/loop-engineering]] — the walkthrough's core subject
- [[concepts/ai-harness]] — harness definition; Hermes as concrete instance
- [[concepts/agent-memory-types]] — procedural/semantic/episodic implementation in Hermes
- [[concepts/llm-ops-tooling]] — the eval/tracing layer Hermes lacks

## Mentions in Source

> "So today we're going to walk through Hermes agent harness and its loop engineering system. This is one of the most popular harness agent system right now, and it's an open source project." — Sean, 2026-08-04 walkthrough ^[extracted]

> "Hermes team, if you're watching this, your cron job is not updating it, unless I ask for the results." — Sean, reporting a cron-delivery bug ^[extracted]
