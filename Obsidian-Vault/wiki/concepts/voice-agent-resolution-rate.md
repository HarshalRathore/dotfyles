---
title: Voice Agent Resolution Rate
category: concepts
tags:
- voice-ai
- metrics
- evals
- customer-service
- kpis
summary: Resolution rate as the North Star metric for voice AI agents — defined as user confirming resolution on call OR disconnecting after hearing at least one answer without calling back within 24 hours.
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
- target: '[[concepts/voice-agent-evals]]'
  type: related_to
- target: '[[concepts/evaluation-first-development]]'
  type: uses
sources: []
---

# Voice Agent Resolution Rate

Resolution rate is the North Star metric for voice AI agents in customer service, measuring the percentage of interactions handled by the AI that are resolved without requiring human intervention.^[extracted]

## Definition

The [[concepts/finvoice|Finvoice]] system defines resolution in two ways:^[extracted]

1. **Explicit confirmation.** The user confirms on the call that their issue was resolved.
2. **Implicit confirmation.** The user disconnects after hearing at least one answer from the agent and does not call back within 24 hours.

This dual definition accounts for the fact that many users will not explicitly confirm resolution but their behavior (not calling back) is a strong signal.^[inferred]

## Performance Benchmarks

[[entities/intercom-fin|Intercom Fin]] (text chat) achieves an average resolution rate of 56% across all customers, with some customers reaching 70–80%.^[extracted] These figures are for the text channel; Finvoice (voice) resolution rates were not disclosed in the AIEF2025 talk but are expected to follow a similar trajectory as the voice agent matures.^[inferred]

## Why Resolution Rate Matters

Resolution rate directly measures whether the voice agent is delivering value to customers:^[extracted]

- **Customer perspective.** A high resolution rate means customers get their questions answered without having to wait for or be transferred to a human.
- **Business perspective.** Each resolved call saves the cost of a human-handled interaction (estimated at $7–12 per call in the US).^[extracted]
- **Product perspective.** Resolution rate is the primary signal for whether the agent is improving — it drives the continuous optimization loop.

## Relationship to Other Metrics

Resolution rate is the ultimate outcome metric, but it is supported by several intermediate signals:^[inferred]

- **Latency.** Voice-to-voice latency affects user satisfaction and completion rates. Under 1 second is acceptable; over 1 second leads to poor NPS and hang-ups.^[extracted]
- **Conversation quality.** Tone, pacing, and naturalness affect whether users trust the agent's answers.
- **Knowledge base coverage.** The percentage of queries that can be answered from available documentation.
- **Escalation rate.** The percentage of calls that require human handoff.

## Limitations

- **Implicit resolution is noisy.** Not calling back within 24 hours could mean the issue was resolved, or that the user gave up and called a competitor, or that the issue was not urgent.^[inferred]
- **Does not measure quality of resolution.** A resolution rate of 56% doesn't tell you whether the remaining 44% were genuinely unresolvable or whether the agent failed to resolve them.^[inferred]
- **Channel differences.** Voice resolution rates may differ from text resolution rates due to the different interaction modalities.^[inferred]

## Related

- [[concepts/finvoice]] — production example with resolution rate as North Star metric
- [[concepts/voice-agent-evals]] — evaluation strategies that support resolution rate improvement
- [[concepts/evaluation-first-development]] — evaluation-driven development approach
- [[concepts/outcome-based-pricing-for-ai]] — resolution rate is also the basis for outcome-based pricing
