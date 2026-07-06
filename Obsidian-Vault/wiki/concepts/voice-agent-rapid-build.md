---
title: Voice Agent Rapid Build Pattern
category: concepts
tags:
- voice-ai
- product-development
- mvp
- rapid-deployment
- enterprise-ai
summary: The pattern of building a production voice AI agent in ~100 days by leveraging existing infrastructure (chat agent, RAG, telephony) and shipping a minimal but meaningful MVP.
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/finvoice]]'
  type: implements
- target: '[[concepts/agent-development-lifecycle]]'
  type: related_to
- target: '[[concepts/eval-playground-experiment-workflow]]'
  type: uses
sources: []
---

# Voice Agent Rapid Build Pattern

The voice agent rapid build pattern demonstrates that a production-grade enterprise voice AI agent can be built and deployed in approximately 100 days when the organization has existing foundational infrastructure.^[extracted] The [[concepts/finvoice|Finvoice]] case study (Intercom) is the primary example.

## Prerequisites for Rapid Build

A 100-day build is feasible when the organization already has:^[inferred]

1. **An existing AI agent product** — Fin already had a text-based chat agent with RAG infrastructure, 5,000+ customers, and established agent behavior patterns.
2. **Existing telephony infrastructure** — Intercom had a native phone support product, providing telephony integration for free.
3. **Existing customer base** — Thousands of existing phone support customers provided immediate testing and feedback channels.
4. **Existing knowledge base** — Help articles and documentation already in place for RAG retrieval.

## MVP Strategy: Three Core Experiences

The rapid build focused on shipping three experiences that together form a complete agent lifecycle:^[extracted]

1. **Test** — A "thin-voice playground" for customer service managers to simulate sessions and evaluate agent behavior. Shipped within the first four weeks.
2. **Deploy** — Configuration interface for deploying the agent on phone lines with basic behavior settings.
3. **Monitor** — Observability through transcripts, recordings, summaries, and call outcomes.

This approach ensures that even a minimal MVP is meaningful — it can be tested, deployed, and monitored, rather than being a research prototype.

## Use Case Wedge Strategy

The rapid build identified a low-risk wedge use case for initial deployment:^[extracted]

- **Out-of-office-hours support** — replaces voicemail without affecting main workflows, allowing teams to build confidence gradually before deploying during office hours.

Other high-leverage but non-primary use cases identified for later: authentication, info-gathering, and smart routing.

## Key Lesson

The biggest blocker for adoption was not model quality or latency but integration with support team workflows.^[extracted] Features like escalation paths and context handoff (transcript summaries for human agents) were essential for moving from demo to production deployment at scale.^[extracted]

## When This Pattern Applies

This pattern works best when:
- The organization already has a text-based AI agent and telephony infrastructure
- The target use case is knowledge-based (answerable from existing documentation)
- There is an existing customer base that can provide rapid feedback
- The team can prioritize workflow integration alongside model quality

## Related

- [[concepts/finvoice]] — the primary case study
- [[concepts/agent-development-lifecycle]] — broader agent development lifecycle patterns
- [[concepts/eval-playground-experiment-workflow]] — the test/playground pattern used in the MVP
- [[references/aief2025-shipping-enterprise-voice-ai-100-days-peter-bar]] — Peter Bar's talk on the Finvoice build
