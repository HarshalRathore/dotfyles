---
title: LLM as Judge
category: concepts
tags:
- llm
- evaluation
- automated-eval
- llm-as-judge
- golden-dataset
aliases:
- LLM Judge
- Judge LLM
- LLM-as-a-Judge
sources:
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
- AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
provenance:
  extracted: 0.7
  inferred: 0.2
  ambiguous: 0.1
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/llm-evaluation-framework|LLM Evaluation Framework]]'
  type: part_of
- target: '[[concepts/rag-evaluation|RAG Evaluation]]'
  type: relates_to
summary: LLM as Judge
---

# LLM as Judge

**LLM as Judge** is an automated evaluation method where an LLM is prompted to evaluate the outputs of other LLMs against quality criteria, using manually curated golden datasets as reference. ^[extracted]

## How It Works

The LLM-as-judge approach requires: ^[extracted]

1. **Golden datasets** — Manually validated samples created by domain experts (e.g., Intuit's tax analysts)
2. **Evaluation prompts** — Structured prompts that instruct the judge LLM on what criteria to assess
3. **Quality criteria** — Defined dimensions like accuracy, relevancy, and coherence

## Role in the Eval Pipeline

LLM as judge operates in the automated evaluation phase, after:

- Human experts have reviewed outputs and established baselines
- Domain experts have curated golden datasets (Intuit uses AWS Ground Truth for this)
- The evaluation criteria are well-defined

The judge LLM then scales this evaluation across production traffic, providing continuous quality monitoring without requiring human reviewers for every output.

## Limitations

- The judge LLM's quality depends on the quality of its prompt and golden datasets
- It inherits biases from the judge model itself
- It cannot evaluate dimensions it wasn't prompted to assess

## Related

- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — LLM as judge is Phase 3 of Intuit's eval system
- [[concepts/rag-evaluation|RAG Evaluation]] — Parallel eval method for retrieval pipelines
- [[concepts/domain-expert-prompt-engineering|Domain Expert Prompt Engineering]] — Experts create the golden datasets the judge uses
