---
title: Voice AI Cost Structure
category: concepts
tags:
- voice-ai
- pricing
- cost
- monetization
- usage-based
summary: 'Voice AI agent cost structure: $0.20–$0.30 per minute depending on query complexity and provider choices, with usage-based and outcome-based pricing models.'
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
- target: '[[concepts/outcome-based-pricing-for-ai]]'
  type: related_to
- target: '[[concepts/finvoice]]'
  type: implements
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
sources: []
---

# Voice AI Cost Structure

Voice AI agents have a per-minute cost structure driven by the STT, LLM, and TTS components, typically ranging from $0.20 to $0.30 per minute.^[extracted] This cost is significantly lower than human-handled phone support ($7–12 per call in the US), representing at least a 5x cost reduction.^[extracted]

## Cost Components

The per-minute cost is determined by:^[extracted]

1. **STT cost.** Speech-to-text processing per minute of audio.
2. **LLM cost.** Language model inference for response generation (varies significantly by model choice and query complexity).
3. **TTS cost.** Text-to-speech synthesis per minute of output audio.
4. **Telephony cost.** Phone line charges (not always included in the AI agent cost).

The total cost depends on:
- **Query complexity.** Complex queries require more LLM inference and longer conversations, increasing per-call cost.
- **Provider choices.** Different STT, LLM, and TTS providers have different pricing models.
- **Conversation length.** Simple queries (~1 second response time) cost fractions of a cent; complex multi-turn conversations cost more.

## Pricing Models

Two dominant pricing models in the voice AI market:^[extracted]

### Usage-Based Pricing

- **Model:** Per-minute or per-call billing
- **Predictability:** High — customers know exactly what they'll pay
- **Incentive alignment:** Low — provider profit from longer calls, customer wants shorter calls
- **Current status:** Most dominant model in the market

### Outcome-Based Pricing

- **Model:** Charge only when the agent resolves the customer's issue
- **Predictability:** Lower — cost varies with resolution rate
- **Incentive alignment:** High — provider profit only when customer gets value
- **Risk:** Provider bears cost of long/unresolved calls
- **Trajectory:** Expected to become the market standard as incentives align better

[[entities/intercom-fin|Intercom Fin]] uses outcome-based pricing at $0.99 per successful resolution, well above the infrastructure cost of $0.20–$0.30 per minute, providing margin on resolved calls.^[extracted]

## Cost Comparison with Human Support

| Metric | Human Support | Voice AI Agent |
|---|---|---|
| Cost per call (US) | $7–12 | ~$0.20–$0.30/min × avg call duration |
| Availability | Business hours (typically) | 24/7 |
| Scalability | Limited by agent count | Near-infinite |
| Multilingual | Requires hiring | 30–40+ languages |

The cost advantage of voice AI agents is substantial, especially for high-volume customer service operations.^[extracted]

## Related

- [[concepts/outcome-based-pricing-for-ai]] — outcome-based pricing models
- [[concepts/finvoice]] — production example with pricing data
- [[concepts/voice-ai-latency]] — latency affects cost (longer processing = more cost)
- [[references/aief2025-shipping-enterprise-voice-ai-100-days-peter-bar]] — Peter Bar's pricing discussion
