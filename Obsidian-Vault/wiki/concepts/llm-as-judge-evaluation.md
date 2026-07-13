---
title: "LLM as Judge"
category: concepts
tags: [evaluation, llm-as-judge, llm-evaluation, automated-evaluation, golden-dataset]
aliases: [LLM-as-Judge Evaluation, LLM Judge, Judge LLM, LLM-as-a-Judge]
sources:
  - "AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak"
  - "AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8"
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-04
updated: 2026-07-13
relationships:
  - target: "[[concepts/ground-truth-evaluation]]"
    type: extends
  - target: "[[concepts/eval-driven-development]]"
    type: extends
  - target: "[[concepts/llm-evaluation-framework]]"
    type: part_of
  - target: "[[concepts/rag-evaluation]]"
    type: relates_to
  - target: "[[concepts/rag-pipeline-architecture]]"
    type: related_to
  - target: "[[concepts/llm-as-judge-problems]]"
    type: contrasts_with
summary: "LLM-as-judge evaluation uses an LLM to assess generated outputs against quality criteria, using either ground truth answers or context-based judgment. Requires golden datasets, structured evaluation prompts, and well-defined quality criteria."
---

# LLM as Judge

**LLM as Judge** is an automated evaluation method where an LLM is prompted to evaluate the outputs of other LLMs against quality criteria, using manually curated golden datasets as reference. ^[extracted]

## How It Works

The LLM-as-judge approach requires: ^[extracted]

1. **Golden datasets** — Manually validated samples created by domain experts (e.g., Intuit's tax analysts)
2. **Evaluation prompts** — Structured prompts that instruct the judge LLM on what criteria to assess
3. **Quality criteria** — Defined dimensions like accuracy, relevancy, and coherence

## Variations

There are two primary approaches to LLM-as-judge evaluation:

**Ground-truth-based**: The judge compares the generated answer against a known correct answer. Classic NLP metrics (BLEU, ROUGE, embedding similarity) also require ground truth. [[entities/nir-gazit|Nir Gazit]] used this approach at AIEF2025 — he created 20 question examples, each with three expected facts, and the judge verified whether each fact appeared in the generated answer.

**Context-based**: The judge assesses the answer using only the question and retrieved context, without any ground truth. This is more flexible but potentially less accurate.

In Gazit's implementation, the judge produced per-fact pass/fail boolean results with reasons for failures, plus a summary numerical score aggregating across all facts and examples. This structured output — boolean per-fact scores with explanations — is what enabled the [[concepts/auto-improving-agent-loop|auto-improving agent loop]] to use the evaluation results as feedback for prompt optimization.

## Role in the Eval Pipeline

LLM as judge operates in the automated evaluation phase, after:

- Human experts have reviewed outputs and established baselines
- Domain experts have curated golden datasets (Intuit uses AWS Ground Truth for this)
- The evaluation criteria are well-defined

The judge LLM then scales this evaluation across production traffic, providing continuous quality monitoring without requiring human reviewers for every output.

## Set a Thief to Catch a Thief

[[entities/jim-bennett|Jim Bennett]] ([[entities/galileo|Galileo]]) at AIEF2025 uses the British idiom "set a thief to catch a thief" to describe LLM-as-judge evaluation. The production LLM is the "thief" (being evaluated) and the evaluation LLM is the "thief set to catch it" (the evaluator). Bennett's key finding: **AIs are about as good as humans at determining whether an AI worked**. ^[extracted]

This principle prescribes a two-LLM architecture:
- **Production LLM** — the cheapest model that does the job (cost optimization)
- **Evaluation LLM** — the best/most capable model for scoring (accuracy priority)

Bennett emphasizes that using a *different, better* LLM avoids the self-evaluation bias described in [[concepts/llms-are-hard-at-evals|LLMs Are Hard at Evals]]. ^[extracted]

Galileo extends this by offering a **custom-trained small language model** specifically designed for evaluation — a model whose primary capability is scoring LLM outputs rather than general-purpose generation. ^[extracted]

## Limitations

- The judge LLM's quality depends on the quality of its prompt and golden datasets
- It inherits biases from the judge model itself
- It cannot evaluate dimensions it wasn't prompted to assess
- LLM judges are prone to hallucination, miscalibration, position bias, and instability — see [[concepts/llm-as-judge-problems|LLM-as-Judge Problems]] for a full breakdown

## Related

- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — LLM as judge is Phase 3 of Intuit's eval system
- [[concepts/rag-evaluation|RAG Evaluation]] — Parallel eval method for retrieval pipelines
- [[concepts/domain-expert-prompt-engineering|Domain Expert Prompt Engineering]] — Experts create the golden datasets the judge uses
- [[concepts/ground-truth-evaluation|Ground Truth Evaluation]] — Basis for ground-truth-based LLM-as-judge
- [[concepts/eval-driven-development|Eval-Driven Development]] — Using eval results to drive prompt optimization
- [[concepts/llm-as-judge-problems|LLM-as-Judge Problems]] — Failure modes and reliability challenges

## Sources

- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
- AIEF2025 - Mentoring the Machine — Eric Hou, Augment Code - https://www.youtube.com/watch?v=Zniw5c9_jx8
- AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY
- AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4
- AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8
