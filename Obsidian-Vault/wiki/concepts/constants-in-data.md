---
title: Constants in Data, Variables in Task
category: concepts
tags:
- evals
- test-design
- dataset
- task-design
- reusability
relationships:
- target: '[[concepts/eval-ingredients-task-dataset-score]]'
  type: implements
- target: '[[concepts/application-layer-evals]]'
  type: extends
- target: '[[concepts/online-evals]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=l8ooyedi_ls'
summary: 'Eval design pattern: put constant user queries in the dataset (data), and put what you''re testing (system prompts, RAG, preprocessing) in the task. Enables clarity, reuse, and generalization across...'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
---

# Constants in Data, Variables in Task

"Constants in data, variables in the task" is an eval design pattern inspired by math and programming conventions. ^[extracted] It means factoring constants into the dataset so they improve clarity, reuse, and generalization across experiments. ^[extracted]

## The Pattern

- **Data (dataset)** — Contains constant user queries that never change throughout the app's lifetime. Example: "how many R's in strawberry" is constant data for a fruit letter counter.
- **Task** — Contains what you're actually testing: different system prompts, different preprocessing, different RAG strategies, different models.

## Why It Matters

When you put constants in data and variables in the task, changing your system prompt doesn't require redoing all your data. The dataset scales independently from the task. ^[extracted] This is the key to building evals that actually scale as your app evolves. ^[inferred]

## Example

For testing a system prompt improvement:

| Dataset (constant) | Task (variable) |
|---|---|
| "how many R's in strawberry" | System prompt v1 |
| "how many R's in banana" | System prompt v2 |
| "how many R's in pineapple" | System prompt v3 |

Each system prompt is evaluated against the same constant dataset, enabling clean A/B comparison. ^[inferred]

## Middleware Integration

This pattern pairs well with middleware abstractions like Vercel AI SDK middleware, which can encapsulate all pre-processing logic (RAG, system prompt, etc.) and be shared between the production API route and the eval task. ^[extracted] This ensures the eval practice is as similar as possible to the real game. ^[extracted]

## Related

- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — The three-component eval model this pattern operates within
- [[concepts/application-layer-evals|Application-Layer Evals]] — The broader evaluation paradigm
- [[entities/braintrust|Braintrust]] — Platform that supports this pattern natively
