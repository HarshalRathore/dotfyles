---
title: Intercom Fin
category: entities
tags:
- ai-agent
- customer-service
- enterprise-ai
- intercom
- voice-ai
summary: Intercom's AI agent product, launched after GPT-4, supporting text chat and voice channels with 5000+ customers and 56% average resolution rate.
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/finvoice]]'
  type: implements
- target: '[[concepts/outcome-based-pricing-for-ai]]'
  type: related_to
- target: '[[entities/intercom]]'
  type: implements
sources: []
---

# Intercom Fin

Intercom Fin is [[entities/intercom|Intercom]]'s AI agent product, launched approximately two years ago following the release of GPT-4. It began as a text-based chat agent and expanded to support voice (phone) interactions through the Finvoice product.

## Scale and Performance

Fin has achieved significant adoption: over 5,000 customers.^[extracted] Its average resolution rate — defined as the percentage of interactions handled by Fin that are resolved without human intervention — is 56%.^[extracted] For some customers, resolution rates reach 70–80%.^[extracted]

## Product Architecture

Fin is not a standalone model but a full system for continuous optimization.^[extracted] It includes:

- **Agent core** — the AI agent that handles customer interactions
- **Conversation analysis tooling** — tools for analyzing conversation patterns and agent behavior
- **Training system** — mechanisms for training and refining agent behavior
- **Testing and deployment** — infrastructure for testing changes and deploying them to production

The system was originally designed for text chat with RAG (retrieval-augmented generation) already in place. Finvoice extended the same system to the voice channel, reusing the existing RAG infrastructure and Intercom's native phone support product.^[extracted]

## Pricing

Fin uses outcome-based pricing: $0.99 per successful customer support ticket resolution, where success is defined as the end user confirming resolution without escalation to a human agent.^[extracted] This pricing model was also discussed by [[entities/kshitij-grover|Kshitij Grover]] and [[entities/alvaro-morales|Alvaro Morales]] of [[entities/orb|Orb]] as a working example of outcome-based AI pricing.^[extracted]

## Voice Expansion

Finvoice — the voice extension of Fin — was built in approximately 100 days by a team led by [[entities/peter-bar|Peter Bar]].^[extracted] It picks up inbound phone calls, answers customer questions using knowledge base content, and escalates to human agents when needed.^[extracted] The product targets knowledge-based queries (pricing plans, return policies, help articles) rather than narrow scheduling use cases.^[extracted]

## Related

- [[concepts/finvoice]] — Finvoice, the voice channel extension
- [[concepts/outcome-based-pricing-for-ai]] — outcome-based pricing model Fin uses
- [[entities/intercom]] — Intercom, the parent company
- [[references/aief2025-shipping-enterprise-voice-ai-100-days-peter-bar]] — Peter Bar's AIEF2025 talk on building Finvoice
