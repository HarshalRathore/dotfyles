---
title: Clinical Reasoning
category: concepts
summary: Domain-specific reasoning used by clinicians to evaluate treatment appropriateness. A key domain expertise AI systems must encode for healthcare applications, exemplified by Anterior's Florence.
sources:
- 'https://www.youtube.com/watch?v=mrm7oa3jsfs'
provenance:
  extracted: 0.7
  inferred: 0.3
  ambiguous: 0.0
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/medical-necessity-review]]'
  type: enables
- target: '[[concepts/domain-native-llm-application]]'
  type: domain-of
- target: '[[concepts/last-mile-problem-ai]]'
  type: example-of
tags: []
---

# Clinical Reasoning

Clinical reasoning is the domain-specific reasoning process used by clinicians to evaluate whether a recommended treatment is medically appropriate. In the context of AI systems for healthcare, encoding clinical reasoning is a key example of the last mile problem. ^[extracted]

## In Medical Necessity Review

Anterior's AI system (Florence) must perform clinical reasoning to evaluate medical necessity claims. For example, when a 78-year-old patient presents with knee pain and the doctor recommends arthroscopy, Florence must reason about:

- Whether conservative therapy was attempted
- Whether that therapy was unsuccessful
- Whether the documentation supports the claimed treatment duration ^[extracted]

This requires understanding nuanced medical concepts like what counts as "conservative therapy" (which varies by context — sometimes physiotherapy, sometimes weight loss, sometimes medication), what degree of improvement counts as "unsuccessful," and what level of documentation suffices. ^[extracted]

## Relationship to Domain-Native AI

Clinical reasoning is the type of domain expertise that makes an LLM application domain-native rather than generic. The model's base reasoning capability is insufficient — it needs the specific clinical reasoning patterns, terminology, and decision criteria encoded in the system. ^[inferred]

## Related

- [[concepts/medical-necessity-review|Medical Necessity Review]] — the application context
- [[concepts/domain-native-llm-application|Domain-Native LLM Application]] — the architectural approach
- [[concepts/last-mile-problem-ai|Last Mile Problem in AI]] — why clinical reasoning is hard for generic models
- [[entities/anterior|Anterior]] — company encoding this reasoning in their AI
- [[concepts/failure-mode-ontology|Failure Mode Ontology]] — how clinical reasoning failures are categorized
