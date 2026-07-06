---
title: 'Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily'
category: references
tags:
- evals
- ai-search
- benchmarking
- dynamic-data
- aief2025
- evaluation-methodology
sources:
- 'AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU'
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/quotient-ai]]'
  type: presents_by
- target: '[[entities/tavily]]'
  type: presents_by
- target: '[[concepts/holistic-eval-framework]]'
  type: introduces
- target: '[[concepts/dynamic-eval-sets]]'
  type: introduces
- target: '[[concepts/static-eval-sets]]'
  type: discusses
summary: 'Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily'
---

# Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily

Julia (CEO, Quotient AI), Deanna Emery (Founding AI Researcher, Quotient AI), and Vythara Sher (Head of Engineering, Tavily) presented a practical framework for evaluating AI search systems at AI Engineer World's Fair 2025. The talk addresses the fundamental challenge that traditional monitoring approaches cannot keep up with the complexity of modern AI agents operating in dynamic, real-time environments.

## The Core Problem

AI agents face two fundamental sources of unpredictability that cannot be proactively controlled: ^[extracted]

1. **The constantly changing web** — Ground truth is a moving target; traditional benchmarks assume stable ground truth
2. **Unpredictable user behavior** — Users ask odd, malformed questions with implicit context the system is unaware of

Tavily processes hundreds of millions of search requests in production and needed a solution that works at scale under these conditions.

## Static vs Dynamic Benchmarking

The talk presented experimental results comparing six AI search providers on static (SimpleQA) vs dynamic (~1,000-row) benchmarks. Key finding: static benchmarking is not a comprehensive evaluation method. Both datasets had similar topic distributions for fair comparison, but results diverged significantly between static and dynamic benchmarks. ^[extracted]

## Reference-Free Evaluation

The second component of the experiment evaluated dynamic dataset responses using reference-free metrics and compared them to reference-based accuracies. Result: reference-free evaluation can be an effective substitute when ground-truth data is not available. ^[extracted]

## The Holistic Framework

The proposed framework measures AI search systems across multiple dimensions: ^[extracted]

- **Accuracy** — measured via benchmarks like SimpleQA
- **Source diversity** — how varied the retrieved sources are
- **Source relevancy** — whether retrieved sources are actually relevant
- **Hallucination rates** — frequency of ungrounded claims

## The Dynamic Eval Set Agent

Tavily's open-source agent (built on LangGraph) generates dynamic eval sets through four steps: ^[extracted]

1. Generate broad web search queries for targeted domains
2. Aggregate grounding documents from multiple real-time AI search providers
3. Generate evidence-based Q&A pairs with explicit source citations
4. Track experiments with LengthMist observability

## Related

- [[entities/quotient-ai]] — Presenting speakers
- [[entities/tavily]] — Presenting speakers
- [[concepts/holistic-eval-framework]] — Core framework introduced
- [[concepts/dynamic-eval-sets]] — Tavily's open-source agent
- [[concepts/static-eval-sets]] — SimpleQA, HotPotQA discussed
- [[concepts/reference-free-evaluation]] — Reference-free metrics approach
