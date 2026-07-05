---
title: "Failure Mode Ontology"
category: concepts
tags: [failure-modes, ai-evaluation, error-analysis, domain-expertise, ai-reliability, taxonomy]
summary: "A structured taxonomy of all ways an AI system can fail in a specific domain, co-developed with domain experts. Enables systematic measurement and targeted improvement of AI pipeline performance."
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
  - target: "[[concepts/domain-intelligence-engine]]"
    type: component-of
  - target: "[[concepts/measurement-vs-improvement-ai]]"
    type: implements
  - target: "[[concepts/domain-native-llm-application]]"
    type: enables
---

# Failure Mode Ontology

A failure mode ontology is a structured taxonomy of all the ways an AI system can fail in a specific domain. It is co-developed with domain experts and enables systematic measurement and targeted improvement of AI pipeline performance. ^[extracted]

## Purpose

Rather than treating AI failures as a monolithic problem, a failure mode ontology breaks them down into structured categories and subtypes. This enables:

- **Targeted measurement** — track failure rates by category, not just overall accuracy
- **Targeted improvement** — know which failure categories need attention
- **Domain expert collaboration** — domain experts can identify failure modes that AI-only teams would miss
- **Iterative refinement** — the ontology evolves as new failure modes are discovered ^[inferred]

## Example: Medical Necessity Review

At Anterior, the failure mode ontology for medical necessity reviews includes three broad categories:

1. **Medical record extraction** — errors in extracting information from medical records
2. **Clinical reasoning** — errors in applying clinical reasoning to evaluate necessity
3. **Rules interpretation** — errors in interpreting insurance/clinical rules

Each category has various subtypes that are discovered iteratively through collaboration with domain experts. ^[extracted]

## Design Principles

- **Co-developed with domain experts** — a failure mode designed by someone looking at AI traces in isolation, without domain context, is itself a failure mode ^[extracted]
- **Iterative** — the ontology evolves as new failure modes are discovered
- **Hierarchical** — broad categories with subtypes for granularity
- **Domain-specific** — failure modes are defined in the language and context of the domain ^[inferred]

## Related

- [[concepts/domain-intelligence-engine|Domain Intelligence Engine]] — the system this is a component of
- [[concepts/measurement-vs-improvement-ai|Measurement vs Improvement in AI]] — the framework this supports
- [[concepts/domain-native-llm-application|Domain-Native LLM Application]] — the architectural context
- [[concepts/agent-evaluations|Agent Evaluations]] — related evaluation concepts
