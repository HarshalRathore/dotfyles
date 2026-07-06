---
title: "Five Hard Earned Lessons About Evals — Ankur Goyal, Braintrust"
category: references
tags:
  - reference
  - talk
  - aief2025
  - braintrust
  - evaluation
  - loop
  - cloud-4
  - automated-evals
  - system-optimization
  - tool-design
aliases: [AIEF2025 Five hard earned lessons evals, Five lessons about evals, Ankur Goyal Braintrust evals talk]
sources:
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: >-
  "AIEF2025 talk by Ankur Goyal presenting five lessons: evals must provide value, must be engineered, scorers are specs, modern prompts are about context, and you must optimize the entire system.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AIEF2025 - Five Hard Earned Lessons About Evals — Ankur Goyal, Braintrust

> [!tldr] Ankur Goyal of [[entities/braintrust|Braintrust]] presents five hard-earned lessons about AI evaluation at AI Engineer World's Fair 2025: evals must provide measurable value, must be actively engineered, scorers are product specs, modern prompts require context engineering beyond system prompts, and you must optimize the entire system holistically.

## Speaker

[[entities/ankur-goyal|Ankur Goyal]] — Braintrust. ^[extracted]

## Lesson 1: Evals Must Provide Value

Evals are only worthwhile if they provide measurable organizational value. Goyal identifies three concrete signs: ^[extracted]

### Sign 1: 24-Hour Model Integration

When a new model releases, your evals should prepare you to launch a product update incorporating it within 24 hours. ^[extracted] [[entities/sarah-sachs|Sarah Sachs]] from [[entities/notion|Notion]] demonstrated this: for every recent model release, Notion incorporates the new model within 24 hours. This is a strong indicator that evals are well-engineered and the model-switching pipeline is automated. ^[extracted]

### Sign 2: User Complaint → Eval Pipeline

When a user complains, there should be a clear path to add that complaint into your evals. This enables incorporating real user feedback into evaluation. Without this path, valuable user signal is lost. ^[extracted]

### Sign 3: Playing Offense

Evals should be used to play offense — understanding which use cases you can solve and how well before shipping, not just to catch regressions like unit tests. ^[extracted] Before launching a new product, you should have a good idea of how well it might work based on what your evals say. ^[extracted]

See [[concepts/three-signs-evals-provide-value|Three Signs Evals Provide Value]] for the full treatment. ^[inferred]

## Lesson 2: Evals Must Be Engineered

Great evals don't come for free with synthetic datasets and generic LLM-as-judge scores. ^[extracted]

### No Dataset Perfectly Aligns with Reality

Any dataset created ahead of time will not represent what users are actually experiencing. ^[extracted] The best datasets are those you can continuously reconcile as you experience what actually happens in production. ^[extracted] This requires significant engineering investment. ^[extracted]

### Scorers Are Not Off-the-Shelf

Every sufficiently advanced company writes its own scoring functions and modifies them constantly. Generic or open-source scorers are specs for someone else's project, not yours. ^[extracted]

See [[concepts/evals-must-be-engineered|Evals Must Be Engineered]] and [[concepts/scorers-as-specs|Scorers as Specs]]. ^[inferred]

## Lesson 3: Modern Prompts Are About Context

Traditional prompt engineering focuses on the system prompt. But modern prompt engineering has evolved: it's the entire context that matters. ^[extracted]

### The Modern Agent Prompt

A modern agent prompt consists of a system prompt plus a for loop that iterates LLM calls, issues tool calls, incorporates tool outputs, and repeats. In real agent trajectories, the vast majority of tokens in the average prompt are NOT from the system prompt. ^[extracted]

### Tool Design for LLMs

You cannot just take tools as a reflection of your APIs. You have to think about tools in terms of what the LLM wants to see. ^[extracted] Writing good tools is often very disruptive — it's not just an API layer on top of what you already have. ^[extracted]

### Output Format Matters

Shifting a tool output from JSON to YAML made a significant difference in a real project. YAML is much more token-efficient and easier for an LLM to parse during analysis, even though both represent the same structured data to programming languages. ^[extracted]

See [[concepts/modern-prompt-engineering|Modern Prompt Engineering]], [[concepts/tool-design-for-llms|Tool Design for LLMs]], and [[concepts/yaml-vs-json-for-llms|YAML vs JSON for LLMs]]. ^[inferred]

## Lesson 4: Build Ambitious Evals for Future Models

Every time a new model comes out, everything might change. Engineer your product, team, and mindset so that when a new model changes everything, you can ship something that wasn't possible before. ^[extracted]

Create evals that are very ambitious and likely not viable with today's models. Construct them so that when a new model comes out, you can plug it in and immediately see if previously-infeasible use cases are now viable. ^[extracted]

### The Cloud 4 Sonnet Example

Braintrust tracked a feature eval across model releases: ^[extracted]

- GPT 4.0 → ~10%, not viable
- GPT 4.1 → slightly better
- 3.5 Sonnet → much better
- 4 Sonnet → remarkably better, crossed the viability threshold

Cloud 4 Sonnet released two weeks before Braintrust shipped this feature. They were able to ship because they had the eval ready and saw the threshold cross. ^[extracted]

Use a proxy layer so you don't need to change code to work across model providers. ^[extracted]

See [[concepts/ambitious-evals-for-future-models|Ambitious Evals for Future Models]] and [[concepts/braintrust-proxy|Braintrust Proxy]]. ^[inferred]

## Lesson 5: Optimize the Entire System

When optimizing your prompts, optimize the entire system holistically — the data, the task (prompt, agentic system, tools), and the scoring functions. ^[extracted]

### Benchmark: Prompt-Only vs System-Level

Braintrust ran the same benchmark twice: ^[extract0]

1. **Prompt-only**: Give the LLM the prompt, ask it to optimize the prompt
2. **System-level**: Give the LLM the prompt, dataset, and scores, ask it to optimize the whole system

The difference was dramatic: what went from unviable to viable under system-level optimization. ^[extracted]

### Loop: Automated System-Level Optimization

Loop is Braintrust's new feature that automatically optimizes prompts, datasets, and scorers together. Available via a feature flag. Powered by Cloud 4, which performs nearly six times better than its predecessor at improving prompts, datasets, and scorers. ^[extracted]

Loop features: ^[extracted]

- Side-by-side UI: every suggestion shown alongside the original
- Auto-optimize toggle: autonomous mode without human review
- Model selection: defaults to Cloud 4, allows any model
- Experiment-aware: uses previous results to determine improvement

See [[concepts/system-level-optimization|System-Level Optimization]] and [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization]]. ^[inferred]

## Related Pages

- [[concepts/three-signs-evals-provide-value|Three Signs Evals Provide Value]] — Lesson 1
- [[concepts/evals-must-be-engineered|Evals Must Be Engineered]] — Lesson 2
- [[concepts/scorers-as-specs|Scorers as Specs]] — Lesson 2 detail
- [[concepts/modern-prompt-engineering|Modern Prompt Engineering]] — Lesson 3
- [[concepts/tool-design-for-llms|Tool Design for LLMs]] — Lesson 3 detail
- [[concepts/yaml-vs-json-for-llms|YAML vs JSON for LLMs]] — Lesson 3 concrete example
- [[concepts/ambitious-evals-for-future-models|Ambitious Evals for Future Models]] — Lesson 4
- [[concepts/system-level-optimization|System-Level Optimization]] — Lesson 5
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization]] — Lesson 5 implementation
- [[entities/ankur-goyal|Ankur Goyal]] — Speaker
- [[entities/braintrust|Braintrust]] — Platform
- [[entities/notion|Notion]] — Referenced (24-hour model integration)
- [[entities/sarah-sachs|Sarah Sachs]] — Referenced (Notion AI lead)
