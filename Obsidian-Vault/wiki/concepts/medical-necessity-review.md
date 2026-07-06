---
title: Medical Necessity Review
category: concepts
summary: Evaluating whether recommended treatments meet insurance coverage criteria. A key use case for domain-native LLM apps, exemplified by Anterior's AI system Florence achieving ~99% accuracy.
sources:
- 'https://www.youtube.com/watch?v=mrm7oa3jsfs'
provenance:
  extracted: 0.8
  inferred: 0.2
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/domain-native-llm-application]]'
  type: use-case-of
- target: '[[concepts/clinical-reasoning]]'
  type: requires
- target: '[[concepts/domain-intelligence-engine]]'
  type: improves
tags: []
---

# Medical Necessity Review

Medical necessity review is the process of evaluating whether a recommended medical treatment meets insurance criteria for coverage. It is a key use case for domain-native LLM applications, where the system must encode deep domain-specific reasoning about what constitutes appropriate treatment. ^[extracted]

## The Process

In a typical medical necessity review:

1. A patient presents with symptoms (e.g., 78-year-old with right knee pain)
2. A doctor recommends a treatment (e.g., knee arthroscopy)
3. The AI system evaluates whether this treatment meets insurance criteria
4. The system must answer specific questions about the case (e.g., was conservative therapy attempted for at least six weeks?) ^[extracted]

## The Challenge

The challenge is not model capability — it is domain context. Questions like "is there documentation of unsuccessful conservative therapy for at least six weeks?" have hidden complexity:

- **Terminology ambiguity**: What counts as "conservative therapy" varies by context
- **Threshold ambiguity**: What degree of improvement counts as "unsuccessful"?
- **Documentation ambiguity**: What level of record suffices to infer treatment duration? ^[extracted]

## Metrics

For health insurance providers, the key metric is **false approval rate** — approving care that shouldn't be approved. This matters because:
- Patients may receive unnecessary treatment
- The insurer pays for treatment they don't want to pay for ^[extracted]

## Example: Anterior

Anterior's AI system (Florence) performs medical necessity reviews for health insurance providers covering ~50 million lives. Starting from ~95% accuracy, they iterated using their domain intelligence engine to achieve ~99% accuracy. ^[extracted]

## Related

- [[concepts/clinical-reasoning|Clinical Reasoning]] — the domain expertise required
- [[concepts/domain-native-llm-application|Domain-Native LLM Application]] — the architectural approach
- [[concepts/domain-intelligence-engine|Domain Intelligence Engine]] — the improvement mechanism
- [[entities/anterior|Anterior]] — company implementing this
- [[concepts/failure-mode-ontology|Failure Mode Ontology]] — how failures in this domain are categorized
