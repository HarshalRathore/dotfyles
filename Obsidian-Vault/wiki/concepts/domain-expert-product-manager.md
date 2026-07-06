---
title: Domain Expert Product Manager
category: concepts
summary: A domain expert fills the central PM role in an AI team building vertical apps. Bridges domain knowledge and AI design, enabling rapid iteration of domain insights into pipeline improvements.
sources:
- 'https://www.youtube.com/watch?v=mrm7oa3jsfs'
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
- target: '[[concepts/domain-native-llm-application]]'
  type: implements
- target: '[[concepts/domain-intelligence-engine]]'
  type: enables
- target: '[[concepts/failure-mode-ontology]]'
  type: co-develops
tags: []
---

# Domain Expert Product Manager

In a domain-native LLM application, the product manager role is filled by a domain expert — someone with deep knowledge of the vertical industry who sits at the center of the AI system's design and iteration loop. ^[extracted]

## Rationale

The team that wins in any vertical industry is the one that builds the best system for taking domain insights and quickly translating them into pipeline improvements. ^[extracted]

This requires someone who:
- Understands the domain's terminology, reasoning patterns, and edge cases
- Can collaborate with customers to define what metrics actually matter
- Can co-develop a failure mode ontology with domain experts
- Can rapidly translate domain feedback into pipeline changes

A traditional product manager without domain expertise cannot fulfill this role effectively. ^[inferred]

## Example: Healthcare

At Anterior, the domain expert is clinical — someone with medical training who understands clinical reasoning, medical necessity criteria, and the nuances of healthcare administration. This person sits at the center of the domain intelligence engine, connecting domain insights to pipeline improvements. ^[extracted]

## Relationship to Team Design

This role is part of the broader pattern of domain-native team design for vertical AI: small teams of domain experts working closely with AI engineers, rather than large teams of generalist AI engineers trying to learn the domain. ^[inferred]

## Related

- [[concepts/domain-native-llm-application|Domain-Native LLM Application]] — the architectural context
- [[concepts/domain-intelligence-engine|Domain Intelligence Engine]] — the system this role operates within
- [[concepts/failure-mode-ontology|Failure Mode Ontology]] — one key artifact this role co-develops
- [[entities/christopher-lovejoy|Christopher Lovejoy]] — medical doctor turned AI engineer, exemplifies this role
- [[entities/anterior|Anterior]] — company built around this organizational model
