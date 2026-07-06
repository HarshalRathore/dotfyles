---
title: Augment Slack Bot
tags:
- ai-agents
- slack
- bot
- augment-code
- aief2025
aliases:
- augment slack bot
- Augment bot
sources:
- AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.88
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target:
  - - entities/augment-code|Augment Code
  type: product_of
- target:
  - - concepts/knowledge-infrastructure|Knowledge Infrastructure
  type: implements
- target:
  - - concepts/parallel-ai-workstreams|Parallel AI Workstreams
  type: enables
category: entities
summary: Augment Slack Bot
---

# Augment Slack Bot

The **Augment Slack bot** is an AI agent integrated into Slack that provides team members with real-time, personalized help by accessing the company's knowledge infrastructure. ^[extracted]

## Capabilities

The Augment Slack bot has access to: ^[extracted]

- The **context engine** — Codebase structure, imports, call graphs
- The **codebase** — Source code for autonomous investigation
- **Documentation** — Project docs, architectural guides, conventions
- **Linear** — Issue tracking for task context and assignment

## Use Cases

### New Hire On-Demand Help

When a new hire was stuck understanding the extension system during Eric Hou's on-call shift, he directed them to the Slack bot instead of stopping his work. ^[extracted] The bot provided personalized, real-time help while Eric stayed focused on the emergency. ^[extracted]

### Stakeholder Communication

During the staging emergency, the bot helped manage communications with teams who were "annoyed that they can't deploy." ^[extracted] This automated the stakeholder management burden that typically falls on the on-call engineer. ^[inferred]

## Why It Matters

The Slack bot is a concrete example of [[concepts/knowledge-infrastructure|knowledge infrastructure]] in action. ^[extracted] It enables parallel work by providing an always-available knowledge resource that doesn't require human mediation. ^[inferred] This is particularly valuable for:

- **New hires** who need help but shouldn't interrupt senior engineers
- **Stakeholder management** during incidents that drains on-call time
- **Self-service knowledge** that scales infinitely without adding headcount

## Related

- [[entities/augment-code|Augment Code]] — Product that provides the bot
- [[concepts/knowledge-infrastructure|Knowledge Infrastructure]] — The category of systems
- [[concepts/parallel-ai-workstreams|Parallel AI Workstreams]] — Where the bot is exercised
- [[concepts/agent-mentoring-model|Agent Mentoring Model]] — The framework the bot operationalizes
