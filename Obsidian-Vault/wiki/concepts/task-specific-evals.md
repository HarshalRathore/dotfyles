---
title: "Task-Specific Evals"
tags:
  - ai
  - evaluation
  - metrics
  - testing
  - product
sources:
  - "AI Engineer World's Fair 2025 talk — Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear - https://www.youtube.com/watch?v=-T6uZYYzkWw"
  - "AI Engineer World's Fair 2025 — How to build world-class AI products — Sarah Sachs (AI lead @ Notion) & Carlos Esteban (Braintrust) - https://www.youtube.com/watch?v=6YdPI9YbjbI"
summary: "Generic evaluation metrics (groundedness, factuality, bias) don't measure whether an AI application works for users. Metrics must be reverse-engineered from specific business outcomes and user expectations."
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Task-Specific Evals

Standard data science metrics — groundedness, factuality, bias, and other generic measures — do not tell you whether an AI solution is working correctly for end users. A response can be fully grounded and factual yet still fail to provide the answer the user actually needs. ^[extracted]

## The Problem with Universal Metrics

Teams often start with what seems reasonable: measuring generic quality dimensions. But these abstractions don't translate to product outcomes. For example, a customer support team tracking factuality might miss that the real problem is the rate at which conversations escalate from the AI bot to human support — a metric that directly reflects whether users are getting the help they need. ^[extracted]

## Reverse-Engineering Metrics

The correct approach is to derive metrics from the product experience and specific business outcomes:

1. Identify what users actually want from the solution
2. Determine how to mimic real user scenarios in testing
3. Define very specific success criteria for each scenario
4. Measure those criteria — not something generic

For a customer support bot, this means defining per-question checklists of required information that must appear in every correct answer. For a text-to-SQL system, it means verifying that generated queries return the correct results against known data. ^[extracted]

## Practical Approach

Use a capable LLM to reverse-engineer evaluation criteria from source materials (FAQs, documentation, etc.):

- Generate realistic user questions based on the materials
- Define specific criteria that the answer must satisfy
- Account for different [[concepts/synthetic-eval-generation|personas]] who might ask the same question in different ways
- Generate variations of each question to test robustness

This creates a [[concepts/checklist-based-evaluation|checklist-based evaluation]] for each capability, enabling precise measurement of whether the solution is working — not just whether it sounds plausible. ^[inferred]

## Implementing Task-Specific Evals: LLM-as-Judge Approaches

Task-specific evals require a scoring mechanism that can evaluate diverse criteria across different data points. Two LLM-as-judge approaches exist: ^[extracted]

**Generic LLM-as-judge**: One scoring prompt judges everything in the dataset against uniform criteria (conciseness, faithfulness). Low effort to set up, but limited in signal — a single judge is either too conservative (always passes) or too strict (always fails) across varied inputs. ^[extracted]

**Per-element LLM-as-judge**: Each data point has its own scoring prompt encoding the specific rules for what a correct response should look like for that exact input. Developed by [[entities/sarah-sachs|Sarah Sachs]] at [[entities/notion|Notion]] and described in detail as [[concepts/per-element-llm-judge|Per-Element LLM Judge]]. ^[extracted]

The per-element approach avoids the problem of golden reference outputs going stale. Instead of specifying exact output text, it defines structural criteria ("the first result should be the most recent document about the Q1 offsite") that remain valid even as the underlying data changes. This is particularly effective for search and retrieval evals where the corpus evolves. ^[extracted]

### Pitfall: Over-Reliance on Judges

A critical lesson from Notion's experience: judge prompts that start narrow (e.g., checking only markdown formatting) accumulate scope and power without scrutiny. Few people investigate the losses, making the judges a source of false confidence. The remedy is to either scope judges to specific tasks (separate judges for formatting, language-following, completeness) and commit to reviewing their failures, or keep a very small set of judges and monitor them closely. ^[extracted]

## Related

- [[concepts/evaluation-first-development|Evaluation-First Development]] — the practice of building evals before optimizing
- [[concepts/ai-regression-testing|AI Regression Testing]] — why frequent testing with task-specific evals is critical
- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — the per-element approach to LLM-as-judge scoring
- [[concepts/voice-agent-evals|Voice Agent Evals]] — domain-specific application of task-specific evaluation principles

## Sources

- [[references/ai-eng-worlds-fair-2025-talk-practical-tactics-reliable-ai|Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear]] — Conference talk
- [[references/notion-ai-building-world-class-products|How to build world-class AI products — Sarah Sachs (Notion) & Carlos Esteban (Braintrust)]] — Conference talk
