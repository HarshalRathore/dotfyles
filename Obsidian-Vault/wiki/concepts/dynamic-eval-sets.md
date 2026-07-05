---
title: "Dynamic Eval Sets"
category: concepts
tags:
  - evals
  - benchmarking
  - dynamic-data
  - rag
  - ai-search
aliases:
  - dynamic evaluation sets
  - dynamic benchmarks
sources:
  - "AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU"
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
  - target: "[[concepts/static-eval-sets]]"
    type: contrasts_with
  - target: "[[concepts/ai-powered-search]]"
    type: used_in
  - target: "[[concepts/reference-free-evaluation]]"
    type: enables
---

# Dynamic Eval Sets

**Dynamic eval sets** are evaluation datasets that are continuously refreshed from real-time sources (typically the web) rather than being static, hand-curated collections. They address the fundamental mismatch between static benchmarks and the constantly changing nature of production AI systems. ^[extracted]

## Static vs Dynamic Eval Sets

Static datasets like SimpleQA and HotPotQA are a great starting point for evaluating retrieval accuracy, but they have inherent limitations for real-time systems: ^[extracted]

| Dimension | Static Eval Sets | Dynamic Eval Sets |
|-----------|-----------------|-------------------|
| Data freshness | Fixed at creation time | Continuously refreshed |
| Ground truth stability | Assumes stable ground truth | Adapts to changing truth |
| Domain coverage | Limited to curated domains | Can cover any domain |
| Temporal alignment | Answers may be outdated | Answers reflect current state |
| Subjectivity handling | Optimized for factual Q&A | Can address subjective questions |

## Why Static Sets Fall Short for Real-Time Systems

Three key problems with static eval sets for production AI search: ^[extracted]

1. **Temporal drift** — You can answer today's questions with yesterday's data. Web content changes constantly, so ground truth itself is a moving target.
2. **Coverage gaps** — Static sets cannot easily cover every domain or use case relevant to a specific application.
3. **Subjectivity blind spot** — Static sets like SimpleQA are designed for fact-seeking questions with single empirical answers. They don't address questions where there's no single "truth" answer.

## Tavily's Dynamic Eval Set Agent

Tavily built an open-source agent (powered by LangGraph) that generates dynamic eval sets for web-based RAG systems. The agent works by: ^[extracted]

1. **Generating broad web search queries** for targeted domains — enabling eval sets for any domain of choice
2. **Aggregating grounding documents** from multiple real-time AI search providers — maximizing coverage and minimizing bias (not relying on a single provider)
3. **Generating evidence-based Q&A pairs** — the agent is obliged to generate answer context, increasing reliability and reducing hallucinations
4. **Tracking experiments** with LengthMist for observability of offline evaluation runs over time

## Future Directions

The Tavily team identified several next steps for dynamic eval set generation: ^[extracted]

- Support a range of question types, both simple fact-based and multi-hop (similar to HotPotQA)
- Ensure fairness and coverage by proactively addressing bias and covering wide perspective ranges for each subject
- Add a supervisor node for coordination, proven valuable in multi-agent architectures

## Related

- [[concepts/static-eval-sets]] — The contrast: fixed, hand-curated datasets
- [[concepts/ai-powered-search]] — Primary application domain
- [[entities/tavily]] — Creator of the open-source dynamic eval set agent
- [[concepts/reference-free-evaluation]] — Complementary approach for subjective truth
