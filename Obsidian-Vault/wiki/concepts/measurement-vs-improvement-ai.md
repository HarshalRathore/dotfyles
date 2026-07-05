---
title: "Measurement vs Improvement in AI"
category: concepts
tags: [ai-evaluation, ai-improvement, measurement, ai-optimization, domain-metrics, pipeline-improvement]
summary: "The two-phase approach to improving AI systems: first measure domain-specific performance with proper metrics and failure mode ontologies, then convert domain insights into pipeline improvements."
sources:
  - "[[sources/watchv=mrm7oa3jsfs]]"
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/domain-intelligence-engine]]"
    type: implements
  - target: "[[concepts/failure-mode-ontology]]"
    type: requires
  - target: "[[concepts/agent-evaluations]]"
    type: related_to
---

# Measurement vs Improvement in AI

The measurement vs improvement framework is a two-phase approach to improving AI systems in vertical domains. First, you measure domain-specific performance with proper metrics and failure mode analysis. Then, you convert domain insights into pipeline improvements. ^[extracted]

## Phase 1: Measurement

Measurement involves two key activities:

1. **Define domain-specific metrics** — work with domain experts and customers to identify what metrics actually matter. In healthcare, this might be false approval rate (approving care that shouldn't be approved). In legal, it might be missed critical terms in contract analysis. ^[extracted]

2. **Design a failure mode ontology** — systematically categorize all ways the AI can fail. This should be done collaboratively with domain experts, not in isolation. Categories might include extraction errors, reasoning errors, and rules interpretation errors, with subtypes within each. ^[extracted]

## Phase 2: Improvement

Improvement converts the insights from measurement into concrete pipeline changes. This requires:

- A domain expert product manager at the center to rapidly translate insights
- A system architecture that makes it easy to incorporate domain knowledge
- Rapid iteration cycles between domain experts and engineers ^[inferred]

## Key Insight

The measurement phase is often more important than the improvement phase because without proper metrics and failure mode understanding, improvements are blind — you might optimize the wrong thing. ^[inferred]

## Related

- [[concepts/domain-intelligence-engine|Domain Intelligence Engine]] — the full system this framework is part of
- [[concepts/failure-mode-ontology|Failure Mode Ontology]] — the measurement component
- [[concepts/agent-evaluations|Agent Evaluations]] — related evaluation concepts
- [[concepts/domain-native-llm-application|Domain-Native LLM Application]] — the architectural context
