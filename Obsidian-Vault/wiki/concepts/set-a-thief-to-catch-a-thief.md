---
title: "Set a Thief to Catch a Thief"
category: concepts
tags:
  - llm-evaluation
  - llm-as-judge
  - ai-evaluation
  - self-evaluation
  - evals
aliases:
  - ai-evaluates-ai
  - llm-as-evaluator
sources:
  - "AIEF2025 - Taming Rogue AI Agents with Observability-Driven Evaluation — Jim Bennett, Galileo - https://www.youtube.com/watch?v=xJXm4Wcw4m8"
summary: Using a better LLM to evaluate the outputs and behavior of a production LLM. AIs are about as good as humans at determining whether an AI worked.
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/llm-as-judge-evaluation]]"
    type: is_principle_of
  - target: "[[concepts/observability-driven-development]]"
    type: enables
  - target: "[[concepts/llms-are-hard-at-evals]]"
    type: contrasts_with
---

# Set a Thief to Catch a Thief

**"Set a thief to catch a thief"** is a British idiom used by Jim Bennett to describe the principle of using an LLM to evaluate another LLM's outputs. The production LLM is the "thief" (the system being evaluated), and the evaluation LLM is the "thief set to catch it" (the evaluator that understands how the first system works).

## The Core Insight

Bennett's key finding: **AIs are not bad at this — they are about as good as humans at determining whether an AI actually worked**. This means LLM-based evaluation can replace or augment human evaluation at significant scale. ^[extracted]

This is counterintuitive because of the [[concepts/llms-are-hard-at-evals|LLMs Are Hard at Evals]] finding — LLMs struggle to evaluate their *own* outputs. But Bennett's approach uses a *different*, typically *better* LLM to evaluate the production LLM, avoiding the self-evaluation bias. ^[inferred]

## Architecture

The principle prescribes a two-LLM architecture:

1. **Production LLM** — the cheapest model that does the job. "We all like making money." Cost optimization is paramount.
2. **Evaluation LLM** — the best/most capable model for scoring. Accuracy over cost.

In practice, this means running the production LLM on user requests, capturing the full trace (all spans, tool calls, retrievals), and then running a separate, more capable LLM to score each span against defined metrics. ^[extracted]

## Galileo's Approach

Galileo takes this further by offering a **custom-trained small language model** specifically designed for evaluation tasks. Rather than using a general-purpose LLM for scoring, they train a model whose primary capability is evaluating AI outputs — optimizing for both accuracy and cost at scale. ^[extracted]

## Implications

- **Scale** — LLM-based evaluation can run on millions of traces per day, far beyond human capacity
- **Granularity** — Evaluation can happen at every span, not just at the final output
- **Consistency** — The evaluation LLM applies the same criteria consistently across all traces
- **Cost trade-off** — Using a better LLM for evals increases evaluation cost but enables detection of subtle failures

## Relation to Related Concepts

This principle is the philosophical foundation of [[concepts/llm-as-judge-evaluation|LLM-as-Judge Evaluation]], which formalizes the practice. It enables [[concepts/observability-driven-development|Observability-Driven Development]] by providing the scoring mechanism for per-span evaluation. It contrasts with [[concepts/llms-are-hard-at-evals|LLMs Are Hard at Evals]] because using a *different, better* LLM avoids the self-evaluation bias.

## Related

- [[concepts/llm-as-judge-evaluation]] — The formalized practice of LLM-based evaluation
- [[concepts/observability-driven-development]] — ODD applies this at every span
- [[concepts/llms-are-hard-at-evals]] — The self-evaluation problem this approach avoids
- [[concepts/ai-agent-observability]] — The trace infrastructure this principle scores
