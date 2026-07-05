---
title: "Fine-Tuning for Specialization"
category: concepts
tags:
  - fine-tuning
  - llm
  - specialization
  - model-selection
  - aws-bedrock
aliases:
  - Fine-Tuning
  - Model Fine-Tuning
  - Domain Fine-Tuning
sources:
  - "AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak"
summary: "Fine-tuning an LLM for a specific domain reduces prompt length and instruction requirements, but creates a model too specialized for its use case, limiting reusability across other applications."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/model-picking|Model Picking]]"
    type: relates_to
  - target: "[[concepts/vendor-lock-in-llm|Vendor Lock-in in LLM]]"
    type: relates_to
---

# Fine-Tuning for Specialization

**Fine-tuning for specialization** is the practice of training an LLM on domain-specific data to improve its performance on a narrow set of tasks, with the tradeoff that the resulting model becomes too specialized for other use cases. ^[extracted]

## The Intuit Experiment

Intuit fine-tuned **GPT-3.5 High Q** (powered by AWS Bedrock) for static tax queries as part of their GenOS platform. ^[extracted]

### Benefits
- **Fewer instructions needed** — The fine-tuned model requires shorter prompts, reducing latency and cost
- **Good quality** — The model performed well on its target use case
- **Latency savings** — Smaller prompt sizes directly reduce response time

### Drawbacks
- **Too specialized** — The model became optimized for its specific use case and could not be easily repurposed for other queries
- **Limited reusability** — The investment is sunk into a narrow domain, reducing the model's value across Intuit's broader AI portfolio

## When to Fine-Tune

Fine-tuning makes sense when:
- The use case is narrow and well-defined (e.g., static tax refund explanations)
- Latency is a primary concern (shorter prompts = faster responses)
- The use case won't change significantly over time

Fine-tuning is less suitable when:
- The model needs to serve multiple domains
- The domain knowledge changes frequently (e.g., IRS regulations update annually)
- Reusability across applications is important

## Related

- [[concepts/model-picking|Model Picking]] — The broader model selection strategy
- [[concepts/vendor-lock-in-llm|Vendor Lock-in in LLM]] — Fine-tuned models deepen vendor dependency
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Eval pillars (accuracy, relevancy, coherence) guide fine-tuning decisions
