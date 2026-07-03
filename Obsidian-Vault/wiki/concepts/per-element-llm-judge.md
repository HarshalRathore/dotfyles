---
title: "Per-Element LLM Judge"
tags:
  - ai
  - evaluation
  - llm-as-judge
  - methodology
  - testing
  - product
sources:
  - "AI Engineer World's Fair 2025 — How to build world-class AI products — Sarah Sachs (AI lead @ Notion) & Carlos Esteban (Braintrust) - https://www.youtube.com/watch?v=6YdPI9YbjbI"
summary: "An evaluation methodology where each data point in a dataset has its own unique judge prompt with specific scoring criteria, rather than a single generic LLM-as-judge prompt applied to all samples."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Per-Element LLM Judge

The standard [[concepts/task-specific-evals|LLM-as-judge]] approach uses a single judge prompt for all data points in a dataset. The per-element approach inverts this: each data point gets its own scoring prompt with criteria tailored to that specific input and expected output. ^[extracted]

## The Two Approaches

**Generic LLM-as-judge**: One prompt judges everything in your dataset. Example: "Is this response concise? Is it faithful to the source?" Applied uniformly across all samples. ^[extracted]

**Per-element LLM-as-judge**: Every data point has a custom scoring prompt. Example for a specific search query: "This answer should be in Japanese. The bullets should be formatted this way. It should answer XYZ and point to page A." The scoring prompt encodes the rules for what a correct response looks like for this one case, rather than relying on a golden reference output. ^[extracted]

## Why Per-Element Works Better

Standard approaches — Levenshtein distance, regex matching, or a single judge prompt — cannot capture the nuanced variation in what "correct" means across different queries. A single judge prompt is either too conservative (always passes) or too strict (always fails). ^[extracted]

The per-element approach solves this by defining the rules for each case individually. Importantly, it does not require a golden reference output — just a description of the structural properties and constraints the output should satisfy. This makes the evaluation robust to changes in the underlying data or model, because the criteria describe what should happen, not what specific text should appear. ^[extracted]

## Practical Benefits

- **Model switching compatibility**: New models can be evaluated against the same per-element criteria to quickly identify regressions without updating any reference outputs. ^[extracted]
- **Index-agnostic evaluation**: Particularly effective for search evals where the corpus constantly changes. The criteria reference properties of the answer (e.g., "the first result should be the most recent document about the Q1 offsite") rather than specific document IDs. ^[extracted]
- **Fine-grained debugging**: For any failing data point, the specific judge prompt tells you exactly what criteria were violated, narrowing the root cause. ^[inferred]

## Notion's Implementation

At Notion, per-element LLM judges are authored by "data specialists" — a role that blends PM, data analyst, and data annotator expertise. These specialists write scoring prompts for each thumbs-down data point or edge case they want to track. The prompts live in [[entities/braintrust|Braintrust]] with some custom layering for ease of authoring. ^[extracted]

The result: Notion can test a new model across all its scoring prompts with one action, see exactly which prompts the new model struggles with, and route affected tasks to a different model or prompt. This is how they maintain the ability to offer any new frontier model to users within a day of its release. ^[extracted]

## When to Use

- **High-value data points**: When each sample in your eval set represents a significant edge case or regression you've learned from, per-element judges give precise signal. ^[inferred]
- **Search and retrieval evals**: Where the index changes over time, making golden reference outputs stale. ^[extracted]
- **Multilingual scenarios**: Where correctness criteria differ by language or locale. ^[inferred]

## When the Generic Approach Suffices

A single LLM-as-judge prompt works well for broad quality dimensions (conciseness, faithfulness, tone) where the criteria don't vary by input. Many teams start here and add per-element judges only for the high-value edge cases. ^[inferred]

## Relationship to Other Approaches

- [[concepts/task-specific-evals|Task-Specific Evals]] — per-element LLM-as-judge is an implementation strategy for task-specific evaluation
- [[concepts/evaluation-first-development|Evaluation-First Development]] — the methodology that requires this level of evaluation precision
- [[concepts/curated-dataset-strategy|Curated Dataset Strategy]] — per-element judges make the most sense with small, curated datasets where each point earns its own scoring criteria

## Sources

- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — AI Engineer World's Fair 2025
