---
title: "AI Regression Testing"
tags:
  - ai
  - testing
  - regression
  - evaluation
  - reliability
sources:
  - "AI Engineer World's Fair 2025 talk — Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear - https://www.youtube.com/watch?v=-T6uZYYzkWw"
  - "AIEF2025 - Strategies for LLM Evals (GuideLLM, lm-eval-harness, OpenAI Evals Workshop) — Taylor Jordan Smith - https://www.youtube.com/watch?v=89NuzmKokIk"
summary: "In AI applications, changes to prompts, models, logic, or data that fix one issue frequently break something that previously worked — making frequent comprehensive regression testing essential."
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
updated: 2026-07-03
---

# AI Regression Testing

A defining challenge of AI application development: any change — to prompts, models, application logic, or source data — that fixes one issue often breaks something that was previously working. Without comprehensive evaluation, these regressions go undetected until they reach production. ^[extracted]

## The Regression Problem

Unlike traditional software where a bug fix is generally stable, AI systems are non-deterministic. A prompt adjustment that correctly handles one edge case may change the model's behavior on unrelated inputs. The same applies when switching models, adding RAG context, or modifying the application logic. Constant regressions are the rule, not the exception. ^[extracted]

## The Solution: Frequent Comprehensive Testing

Running a comprehensive eval suite frequently — after every significant change — is the only reliable way to catch regressions in AI applications. This is why [[concepts/evaluation-first-development|evaluation-first development]] matters: you need a baseline eval suite before you start iterating, not after. ^[extracted]

## Iteration with Safety Net

The recommended workflow is a tight iteration loop:
1. Make a change to the solution (prompt, model, logic, data)
2. Run the full eval suite
3. Check for regressions against the baseline
4. If regressions are found, investigate and address them
5. If the change improves overall results without regressions, update the baseline

This mirrors the [[concepts/agent-loop|agent loop]] pattern of continuous feedback-driven improvement applied to the development process itself. ^[inferred]

### Automating Through CI/CD

For production systems, regression testing should be automated through a CI/CD pipeline — the eval suite becomes a gate that every change passes before deployment. This is the natural extension of the iteration loop: continuous evaluation catches regressions without requiring manual trigger for each run. ^[extracted] This was highlighted during the AI Engineer World's Fair 2025 LLM Evals workshop, where the speaker framed it as "CI/CD automation implementation of an evaluation framework." ^[extracted]

## Related

- [[concepts/checklist-based-evaluation|Checklist-Based Evaluation]] — the mechanism that makes regression detection precise
- [[concepts/task-specific-evals|Task-Specific Evals]] — the type of evals needed to catch real regressions
- [[concepts/benchmark-driven-ai-optimization|Benchmark-Driven AI Optimization]] — the downstream use of a stable baseline
- [[concepts/llm-evaluation-pyramid|LLM Evaluation Pyramid]] — the tiered framework for organizing which regressions to test

## Sources

- [[references/ai-eng-worlds-fair-2025-talk-practical-tactics-reliable-ai|Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear]] — Conference talk
- [[references/ai-eng-worlds-fair-2025-llm-evals-strategies-taylor-jordan-smith|Strategies for LLM Evals — Taylor Jordan Smith, Red Hat]] — Conference workshop
