---
title: "Shipping an Enterprise Voice AI Agent in 100 Days"
category: references
tags:
  - voice-ai
  - enterprise-ai
  - customer-service
  - intercom
  - aief2025
  - product-development
  - finvoice
summary: Peter Bar (Intercom Fin) at AIEF2025 on building Finvoice — an enterprise voice AI agent for phone support shipped in 100 days, covering use case selection, tech stack, conversation design, evals, and pricing.
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
sources:
  - "[[sources/watchv=hoylz7ivgjo]]"
relationships:
  - target: "[[concepts/finvoice]]"
    type: related_to
  - target: "[[entities/intercom-fin]]"
    type: related_to
  - target: "[[entities/peter-bar]]"
    type: related_to
---

# Shipping an Enterprise Voice AI Agent in 100 Days

**Speaker:** Peter Bar, Intercom Fin
**Event:** AI Engineer World's Fair 2025
**Source:** https://www.youtube.com/watch?v=HOYLZ7IVgJo

## TL;DR

Peter Bar describes how [[entities/intercom-fin|Intercom]] built Finvoice — a voice AI agent for inbound phone support — in approximately 100 days. The talk covers seven key areas: use case selection (knowledge-based queries over narrow scheduling), MVP scope (thin-voice playground, deploy experience, observability), tech stack (STT → LAM → TTS with RAG and telephony), conversation design (latency, answer length, user mindset), workflow integration (escalation paths, context handoff), evaluation (manual/automated tests, internal tooling, resolution rate as North Star metric, LLM-as-judge), and pricing (cost per minute, usage-based vs outcome-based models).

## Problem / Motivation

Intercom had an established AI agent product (Fin) on text chat with 5,000+ customers and a 56% average resolution rate, but lacked a voice channel. Voice represents the largest remaining channel in customer service: over 80% of support teams still use phone support, over one-third of all customer service interactions happen over the phone, and the average cost of a human-handled phone call in the US is $7–12 — at least five times more expensive than voice AI agents.^[extracted]

## Method / Architecture

### Use Case Selection

The team evaluated narrow scheduling use cases (dentist appointments, restaurant reservations) but chose a flexible knowledge-based agent instead — one that answers help article questions (pricing plans, return policies, FAQ content). This decision was driven by:

1. Evidence from Fin on chat: the same types of queries appear on phone as on chat.
2. Call transcript analysis confirming that a very large percentage of queries could be solved with knowledge base (help article) content rather than API integrations.^[extracted]

The initial wedge use case was out-of-office-hours support, replacing voicemail without affecting main workflows. Other high-leverage use cases considered: authentication (verifying user identity), info-gathering (order ID, account ID), and smart routing to the right team.^[extracted]

### MVP Scope

Three core experiences were prioritized for the first ship:

1. **Thin-voice playground** — a lightweight test environment for customer service managers to simulate sessions, ask knowledge-base questions, and evaluate agent behavior. Shipped within the first four weeks.^[extracted]
2. **Deploy experience** — allowing CS managers to deploy the agent on phone lines with basic configuration of agent behavior and team workflow integration.^[extracted]
3. **Observability/monitoring** — visibility into calls via transcripts, recordings, transcript summaries, and call outcomes surfaced to customer service agents.^[extracted]

### Tech Stack

The core voice loop: STT (speech-to-text) → LAM (language model) → TTS (text-to-speech).^[extracted] The team also evaluated voice-to-voice models (processing directly in audio, skipping the text layer) but chose the STT-LAM-TTS approach for greater control over output.^[extracted]

Two critical components built on existing infrastructure:
- **RAG** — already set up for Fin on chat, reused for Finvoice
- **Telephony** — Intercom already had a native phone support product, providing a head start^[extracted]

The team started with real-time APIs for rapid testing and evolved the stack while keeping real-time APIs as part of the core architecture.^[extracted]

### Conversation Design

Three key differences between voice and chat conversation design:^[extracted]

1. **Latency** — Voice users expect near-instant responses. Simple queries achieved ~1 second latency; for complex queries taking 3–4 seconds, filler phrases ("let me look into this for you") were injected to maintain conversation flow.
2. **Answer length** — Voice responses must be shorter and chunked. For multi-step responses, the agent delivers one chunk at a time and asks the user to confirm before proceeding.
3. **User mindset** — Early voice users interact like old-school IVR (single words: "support", "password reset"), but gradually adopt full sentences as the conversation progresses. The agent must lead with natural language to guide this transition.^[extracted]

### Workflow Integration

Surprisingly, the biggest blocker for adoption was not model quality or latency but integration with support team workflows.^[extracted] Key features:

- **Escalation paths** — configuration for how calls route to human support
- **Context handoff** — transcript summaries generated after each AI call to give human agents full context^[extracted]

### Evaluation

Five evaluation approaches:^[extracted]

1. **Manual and automated evals** — test conversations running on every major code change, initially in spreadsheets, later automated
2. **Internal tooling** — streamed web apps for reviewing logs, transcripts, and recordings to troubleshoot customer issues
3. **Resolution rate** — the North Star metric: user confirms resolution on call, OR user disconnects after hearing at least one answer and does not call back within 24 hours
4. **LLM-as-judge** — experimental use of another LLM to analyze call transcripts for issues and improvement opportunities

### Pricing

- **Cost:** $0.20–$0.30 per minute, depending on query complexity and provider choices^[extracted]
- **Usage-based pricing:** per-minute or per-call; predictable but misaligned incentives (provider profit from longer calls)
- **Outcome-based pricing:** only charge when the agent resolves something; better aligned incentives but carries provider risk on long/unresolved calls. Peter expects market convergence toward outcome-based pricing.^[extracted]

## Key Takeaways

1. Building a voice AI agent is not just a model problem — it's a product problem.^[extracted]
2. The right use case, conversation design for phone realities, internal/external tooling, workflow integration, and building trust with support teams are all essential for moving from demo to production deployment.^[extracted]
3. Making complexity feel effortless is the ultimate goal.^[extracted]
4. Several enterprise customers deployed Finvoice on their main phone lines within the 100-day build window.^[extracted]

## Limitations

- The talk focuses on Intercom's specific context (existing chat agent, existing phone product, 5,000+ customer base). Results may not generalize to organizations starting from scratch.^[inferred]
- No technical deep-dive on the STT/LAM/TTS stack, model choices, or infrastructure details.^[extracted]
- Resolution rate definition relies on user confirmation or no callback within 24 hours — both imperfect proxies for true resolution.^[inferred]

## Related

- [[concepts/finvoice]] — Finvoice product
- [[entities/intercom-fin]] — Intercom Fin product overview
- [[entities/peter-bar]] — Peter Bar, speaker
- [[concepts/voice-ai-latency]] — voice latency requirements
- [[concepts/voice-agent-evals]] — voice agent evaluation strategies
- [[concepts/outcome-based-pricing-for-ai]] — outcome-based pricing models
- [[references/building-effective-voice-agents-openai-2025]] — OpenAI's voice agent talk
- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit]] — LiveKit on voice turn-taking
