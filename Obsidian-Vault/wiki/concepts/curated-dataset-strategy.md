---
title: "Curated Dataset Strategy"
tags:
  - ai
  - evaluation
  - data-quality
  - methodology
  - product
  - testing
sources:
  - "[[sources/watchv=6ydpi9ybjbi]]"
summary: "The practice of starting AI evaluation datasets with a small number (10-30) of handcrafted, carefully structured examples rather than generating large volumes of synthetic or dummy data."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.48
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Curated Dataset Strategy

A recurring failure pattern in AI development: teams create hundreds or thousands of synthetic or dummy data points for evaluation, only to discover the data is poorly structured, the wrong format, or doesn't capture the actual edge cases that matter. ^[extracted]

## The Principle: Quality Over Quantity

The curated dataset strategy flips this: start with a small number (10-30) of handcrafted, carefully structured data points. Get the format and structure right first. Then expand the dataset only as real edge cases emerge from production logs and human review. ^[extracted]

## The Process

1. **Collect from real usage**: Curate data points from production logs, thumbs-down feedback, and internal dogfooding rather than generating synthetic examples. ^[extracted]
2. **Start small**: "Let's make it 10 things first and make sure it's formatted the way that you want" — structure matters more than volume. ^[extracted]
3. **Validate structure**: Before running any evals, confirm the dataset format produces the insights you need. A large dataset in the wrong format is worse than a small dataset in the right one. ^[inferred]
4. **Expand organically**: Add data points as real failures surface, not preemptively. ^[extracted]
5. **Maintain structure discipline**: Each new data point must match the established format, ensuring the dataset remains analyzable. ^[inferred]

## Why It Works

- **LLM-as-judge scoring is precision-limited**: No matter how many data points you have, the signal from an LLM judge is limited by the quality of each judge prompt. More data with weak judges adds noise. ^[inferred]
- **Human evaluators are a bottleneck**: "Quality is much more important than quantity in terms of the insights and things that you extract" — human review and annotation resources are scarce, so each data point needs to earn its keep. ^[extracted]
- **Structural consistency**: A small, well-structured dataset produces cleaner comparisons across experiments than a large, messy one. ^[inferred]
- **Iteration speed**: Small datasets run faster, enabling tighter [[concepts/ai-iteration-loop|iteration loops]] during development. ^[inferred]

## At Notion

Notion uses data specialists — a role combining PM, data analysis, and annotation — to curate datasets from internal dogfooding logs and thumbs-down feedback. Their datasets represent real edge cases that users have encountered, not hypothetical scenarios. This dogfooding advantage (Notion eats its own dogfood extensively) means they generate high-signal evaluation data naturally from their own usage. ^[extracted]

## When to Scale Up

The curated approach does not mean staying at 10 data points forever. The scaling triggers are:

- **Real edge cases found in production**: Add data points that represent genuine failures observed in user interactions or human review. ^[inferred]
- **New features or capabilities**: When launching a new feature (e.g., a JIRA connector), create a small targeted dataset for that feature's specific evaluation needs. ^[extracted]
- **Model switching safety**: A curated dataset of known regressions and edge cases provides the safety net for testing new models before deploying. ^[inferred]

## Relationship to Other Approaches

- [[concepts/task-specific-evals|Task-Specific Evals]] — the small size of curated datasets enables per-element evaluation with custom judge prompts
- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]] — complementary: synthetic generation creates initial coverage, curation sharpens it with real data
- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — curated datasets are the natural home for per-element scoring
- [[concepts/ai-regression-testing|AI Regression Testing]] — curated datasets of known failure modes become the regression test suite

## Sources

- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — AI Engineer World's Fair 2025
