---
title: "LLM-as-Judge Evaluation"
category: concepts
tags: [evaluation, llm-as-judge, llm-evaluation, automated-evaluation, judge-model]
summary: "An LLM evaluates generated answers against criteria — using ground truth answers or judging purely on question-context triples."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[concepts/ground-truth-evaluation]]"
    type: extends
  - target: "[[concepts/rag-pipeline-architecture]]"
    type: related_to
  - target: "[[concepts/eval-driven-development]]"
    type: extends
  - target: "[[concepts/llm-evaluation-framework]]"
    type: related_to
---

# LLM-as-Judge Evaluation

An evaluation approach where an LLM serves as the judge, assessing outputs against quality criteria. [[entities/nir-gazit|Nir Gazit]] chose this approach at AIEF2025, arguing it's easier to build and deploy than classic NLP metrics.

There are two variants:

**Ground-truth-based**: The judge compares the generated answer against a known correct answer. Classic NLP metrics (BLEU, ROUGE, embedding similarity) also require ground truth. This is the approach Gazit used — he created 20 question examples, each with three expected facts, and the judge verified whether each fact appeared in the generated answer.

**Context-based**: The judge assesses the answer using only the question and retrieved context, without any ground truth. This is more flexible but potentially less accurate.

In Gazit's implementation, the judge produced per-fact pass/fail boolean results with reasons for failures, plus a summary numerical score aggregating across all facts and examples. This structured output — boolean per-fact scores with explanations — is what enabled the [[concepts/auto-improving-agent-loop|auto-improving agent loop]] to use the evaluation results as feedback for prompt optimization.
## Set a Thief to Catch a Thief

[[entities/jim-bennett|Jim Bennett]] ([[entities/galileo|Galileo]]) at AIEF2025 uses the British idiom "set a thief to catch a thief" to describe LLM-as-judge evaluation. The production LLM is the "thief" (being evaluated) and the evaluation LLM is the "thief set to catch it" (the evaluator). Bennett's key finding: **AIs are about as good as humans at determining whether an AI worked**. ^[extracted]

This principle prescribes a two-LLM architecture:
- **Production LLM** — the cheapest model that does the job (cost optimization)
- **Evaluation LLM** — the best/most capable model for scoring (accuracy priority)

Bennett emphasizes that using a *different, better* LLM avoids the self-evaluation bias described in [[concepts/llms-are-hard-at-evals|LLMs Are Hard at Evals]]. ^[extracted]

Galileo extends this by offering a **custom-trained small language model** specifically designed for evaluation — a model whose primary capability is scoring LLM outputs rather than general-purpose generation. ^[extracted]

LLM-as-judge is preferred in many modern contexts because it can assess nuanced qualities (relevance, completeness, correctness) that classic NLP metrics cannot capture, especially for open-ended generation tasks.
