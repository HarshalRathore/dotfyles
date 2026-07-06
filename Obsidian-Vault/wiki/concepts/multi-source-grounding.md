---
title: Multi-Source Grounding
category: concepts
tags:
- evals
- retrieval
- bias-reduction
- rag
- ai-search
aliases:
- multi-provider grounding
- diverse source grounding
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.88
  inferred: 0.08
  ambiguous: 0.04
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/rag-grounding]]'
  type: extends
- target: '[[concepts/dynamic-eval-sets]]'
  type: used_in
summary: Multi-Source Grounding
---

# Multi-Source Grounding

**Multi-source grounding** is the practice of aggregating information from multiple independent AI search providers (or data sources) when generating evaluation data or grounding LLM responses. The principle: you cannot use a single provider to both search for grounding documents and evaluate your own performance, as this creates circular bias. ^[extracted]

## The Problem with Single-Source Grounding

Using only your own search provider to generate eval data creates a self-referential loop: the eval set reflects that provider's strengths and blind spots, making evaluation results uninformative about actual performance relative to alternatives. ^[extracted]

## The Multi-Source Approach

Tavily's dynamic eval set agent addresses this by: ^[extracted]

1. **Aggregating grounding documents from multiple real-time AI search providers** — not just Tavily, but several competing providers
2. **Maximizing coverage** — different providers surface different documents for the same query
3. **Minimizing bias** — no single provider's perspective dominates the eval set

## Application in Eval Set Generation

In the context of [[concepts/dynamic-eval-sets|dynamic eval sets]], multi-source grounding ensures that the generated Q&A pairs are grounded in a diverse set of sources rather than converging on a single provider's results. This makes the resulting evals more representative of real-world performance across the landscape of AI search providers. ^[inferred]

## Related

- [[concepts/rag-grounding]] — Grounding in general
- [[concepts/dynamic-eval-sets]] — Eval set generation
- [[concepts/ai-powered-search]] — AI search providers
- [[entities/tavily]] — Implementation
