---
title: Finvoice
category: concepts
tags:
- voice-ai
- enterprise-ai
- customer-service
- intercom
- agent-loop
- rag
summary: Finvoice is Intercom's voice AI agent for inbound phone support — a knowledge-based voice agent built in 100 days, extending the existing Fin chat agent to the voice channel.
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/knowledge-based-voice-agent]]'
  type: implements
- target: '[[concepts/voice-pipeline]]'
  type: uses
- target: '[[concepts/voice-conversation-design]]'
  type: uses
- target: '[[entities/intercom-fin]]'
  type: implements
sources: []
---

# Finvoice

Finvoice is [[entities/intercom-fin|Intercom]]'s voice AI agent for inbound phone support. It was built in approximately 100 days and extends the existing Fin text-chat agent to the voice channel.^[extracted] The agent picks up phone calls, answers customer questions using knowledge base content, and escalates to human agents when needed.^[extracted]

## Product Positioning

Finvoice is the same system as Fin (the text-based AI agent) but now capable of answering phone calls.^[extracted] It reuses Intercom's existing RAG infrastructure and native phone support product, giving the team a significant head start.^[extracted]

## Use Case: Knowledge-Based Queries

Finvoice targets knowledge-based queries — questions that can be answered from help article content rather than API integrations.^[extracted] Examples include:

- "What are your pricing plans?"
- "What's your return policy?"
- FAQ-style questions about products and services

This was chosen over narrow scheduling use cases (dentist appointments, restaurant reservations) because:

1. Evidence from Fin on chat showed the same query types appear on phone as on chat.
2. Call transcript analysis confirmed that a very large percentage of phone queries could be solved with knowledge base content.^[extracted]

## MVP Features

The initial ship included three core experiences:^[extracted]

1. **Thin-voice playground** — a test environment for customer service managers to simulate sessions and evaluate agent behavior (shipped within 4 weeks)
2. **Deploy experience** — configuration for deploying the agent on phone lines with basic agent behavior settings
3. **Observability** — transcripts, recordings, transcript summaries, and call outcomes visible to support agents

## Conversation Design

Finvoice's conversation design accounts for three key voice-specific constraints:^[extracted]

- **Latency:** Simple queries ~1 second; complex queries (3–4 seconds) use filler phrases to maintain flow
- **Answer length:** Multi-step responses delivered as chunks with user confirmation between each
- **User mindset:** Agent leads with natural language to guide users from IVR-like interaction toward full sentences

## Integration with Support Workflows

Key integration features that proved essential for production deployment:^[extracted]

- **Escalation paths** — configurable routing of calls to human support teams
- **Context handoff** — transcript summaries generated after each AI call for human agents

## Pricing Model

Finvoice uses outcome-based pricing: $0.99 per successful resolution.^[extracted] The underlying infrastructure cost is estimated at $0.20–$0.30 per minute.^[extracted]

## Related

- [[entities/intercom-fin]] — Intercom Fin product overview
- [[concepts/voice-pipeline]] — the STT → LAM → TTS pipeline Finvoice uses
- [[concepts/voice-conversation-design]] — conversation design patterns for voice
- [[concepts/knowledge-based-voice-agent]] — the use case pattern Finvoice follows
- [[references/aief2025-shipping-enterprise-voice-ai-100-days-peter-bar]] — Peter Bar's talk on building Finvoice
