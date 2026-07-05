---
title: "Reference-Free Evaluation"
category: concepts
tags:
  - evals
  - voice-ai
  - metrics
  - simulation
  - ai-search
  - aief2025
aliases:
  - unsupervised evaluation
  - reference-free metrics
sources:
  - "AIEF2025 - From Self-driving to Autonomous Voice Agents — Brooke Hopkins, Coval - https://www.youtube.com/watch?v=kDczF4wBh8s"
  - "AIEF2025 - Evaluating AI Search: A Practical Framework for Augmented AI Systems — Quotient AI + Tavily - https://www.youtube.com/watch?v=wRJD0inpmjU"
summary: "Evaluation approach that measures agent performance without predefined expected outputs — enables scaling and handles subjective truth when ground-truth is unavailable."
provenance:
  extracted: 0.82
  inferred: 0.12
  ambiguous: 0.06
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[concepts/holistic-eval-framework]]"
    type: used_in
  - target: "[[concepts/llm-judge-correctness]]"
    type: contrasts_with
  - target: "[[concepts/dynamic-eval-sets]]"
    type: enables
---

# Reference-Free Evaluation

**Reference-free evaluation** (also called unsupervised evaluation) is an approach that measures AI system performance without requiring predefined ground-truth answers or labeled data for each input. ^[extracted]

## Why Reference-Free Matters

Reference-free evaluation addresses two critical challenges in AI evaluation: ^[extracted]

1. **Scaling** — When ground-truth labeling is expensive or impossible at production scale, reference-free methods enable continuous evaluation
2. **Subjectivity** — When absolute truth is hard to pin down (common in web-based search), reference-free methods provide fairer evaluation than forcing a binary correct/incorrect judgment

## Quotient AI + Tavily Application

The Quotient AI and Tavily collaboration demonstrated reference-free evaluation as part of their holistic eval framework. They evaluated dynamic dataset responses using reference-free metrics and compared these results to reference-based accuracies from benchmarks. Key finding: reference-free evaluation can be an effective substitute when ground-truth data is not available. ^[extracted]

This was particularly relevant for Tavily's domain — evaluating AI search providers where:

- The web is constantly changing (ground truth is a moving target)
- Truth is often subjective and contextual (depends on source, timing, user needs)
- Users ask unpredictable questions that don't fit static test cases

## Relationship to Reference-Based Evaluation

Reference-free evaluation complements (rather than replaces) reference-based methods like the [[concepts/llm-judge-correctness|LLM judge correctness metric]] used in SimpleQA. The holistic framework uses both: ^[extracted]

- **Reference-based** — For benchmarks where ground truth exists (accuracy measurement)
- **Reference-free** — For continuous evaluation where ground truth is unavailable or subjective (source diversity, source relevancy, hallucination rates)

## Related

- [[concepts/holistic-eval-framework]] — Where reference-free metrics are applied
- [[concepts/llm-judge-correctness]] — The reference-based contrast
- [[concepts/dynamic-eval-sets]] — Dynamic eval sets enable reference-free evaluation
- [[entities/quotient-ai]] — Demonstrated reference-free approach
- [[entities/tavily]] — Applied reference-free metrics in production evals
