---
title: "Domain Intelligence Engine"
category: concepts
tags: [domain-intelligence, ai-system-design, pipeline-improvement, domain-expertise, vertical-ai, ai-architecture]
summary: "A two-part system (measurement + improvement) that converts customer-specific domain insights into measurable AI pipeline performance improvements. Central to building domain-native LLM applications."
sources:
  - "[[sources/watchv=mrm7oa3jsfs]]"
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/domain-native-llm-application]]"
    type: implements
  - target: "[[concepts/measurement-vs-improvement-ai]]"
    type: encompasses
  - target: "[[concepts/failure-mode-ontology]]"
    type: uses
  - target: "[[concepts/last-mile-problem-ai]]"
    type: addresses
---

# Domain Intelligence Engine

A domain intelligence engine is a two-part system that converts customer-specific domain insights into measurable AI pipeline performance improvements. It is the core mechanism for building domain-native LLM applications and solving the last mile problem in vertical AI. ^[extracted]

## Two Parts

### 1. Measurement

The measurement side answers: how is our current pipeline performing on domain-specific metrics? This involves:

- **Domain-specific metrics** — defining what users care about as evaluation metrics (e.g., false approval rate in healthcare)
- **Failure mode ontology** — systematically categorizing all ways the AI can fail in the domain (e.g., medical record extraction errors, clinical reasoning errors, rules interpretation errors)

### 2. Improvement

The improvement side converts domain insights into pipeline changes that measurably improve performance on the defined metrics. This requires a domain expert product manager at the center to rapidly translate insights into changes. ^[extracted]

## Key Design Principles

- **Domain expert at the center** — the PM role is filled by a domain expert who can translate domain insights into pipeline improvements
- **Collaborative metric definition** — metrics are defined in collaboration with domain experts and customers, not assumed by the AI team
- **Failure mode ontology** — a structured taxonomy of domain-specific failure modes, co-developed with domain experts
- **Rapid iteration** — the system enables quick incorporation of domain feedback into pipeline improvements ^[inferred]

## Example: Anterior

Anterior's medical necessity review system uses a domain intelligence engine to achieve ~99% accuracy. Starting from a ~95% baseline, they iterated by encoding domain-specific reasoning about what counts as "conservative therapy," "unsuccessful treatment," and "adequate documentation" into their pipeline. ^[extracted]

## Related

- [[concepts/domain-native-llm-application|Domain-Native LLM Application]] — the architectural context
- [[concepts/measurement-vs-improvement-ai|Measurement vs Improvement in AI]] — the two-part structure
- [[concepts/failure-mode-ontology|Failure Mode Ontology]] — a key measurement component
- [[concepts/last-mile-problem-ai|Last Mile Problem in AI]] — the problem this engine addresses
- [[entities/anterior|Anterior]] — real-world implementation
- [[concepts/reliability-over-intelligence|Reliability Over Intelligence]] — the underlying thesis
