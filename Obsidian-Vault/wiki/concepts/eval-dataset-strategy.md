---
title: "Eval Dataset Strategy"
tags:
  - concept
  - evaluation
  - dataset
  - methodology
  - synthetic-data
  - production-logs
aliases: [dataset bootstrapping, eval dataset build strategy, test case sourcing]
sources:
  - "AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production - https://www.youtube.com/watch?v=9iN-cPnp7xg"
summary: "A phased strategy for building evaluation datasets: start small with synthetic data, ground in real logs as the system matures, and incorporate human review to establish ground truth."
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Eval Dataset Strategy

Building an evaluation dataset is a phased process: start small and iterate rather than waiting for the perfect "golden dataset." The key insight is that a minimal dataset with 10 rows and 1-2 scores provides immediate value — comprehensiveness comes through iteration. ^[extracted]

## The Phases

### Phase 1: Synthetic Data
Use an AI to generate initial test cases covering known use cases and edge cases. Synthetic data is a valid, efficient starting point: ^[extracted]

- Generate diverse phrasings of the same question to test robustness
- Cover the main user personas and interaction patterns
- Include obvious edge cases

> "Is the dataset synthetic? Can it be synthetic? And the answer is, it's a great way to get started quickly, is having an AI generate those initial use cases." ^[extracted]

### Phase 2: Ground in Production Logs
As the system runs (even in staging or internal use), capture real user interactions and add them to the dataset: ^[extracted]

- Production logs surface actual user phrasings that synthetic data may miss
- Real examples capture the long tail of unexpected inputs
- The dataset naturally grows to cover the true domain of user needs

> "If you start logging your real user interactions, even if it's just in staging or internally in your organization, you can start to increase the scope of the data set and it will start to become closer to the overall domain of use cases that users will interact with." ^[extracted]

### Phase 3: Human Review for Ground Truth
Incorporate subject matter experts to: ^[extracted]

- Review outputs and score them (thumbs up/down, criteria-based scoring)
- Provide the "expected" column for dataset rows
- Establish ground truth that the [[concepts/llm-judge-best-practices|LLM-as-judge]] can be calibrated against

## Practical Tips

**Start small, iterate** — "It doesn't need to be the largest data set of all time. It doesn't need to include all of your use cases, right? Just get started. Use synthetic data at first." ^[extracted]

**Don't wait for golden data** — "The thing to not do is wait until you have a hundred, 200, like you have this golden data set." ^[extracted]

**Use the quality matrix** — If the [[concepts/eval-quality-matrix|eval quality matrix]] shows "Bad Output × Low Score," the dataset is working correctly and you need to improve the app, not the dataset. ^[inferred]

## The Dataset Feedback Loop

[[concepts/online-evals|Online evals]] complete the loop: ^[inferred]

```
Synthetic dataset → Deploy app → Production logs → Add real examples to dataset → Improved dataset → Better evals → Better app
```

Braintrust enables this by letting users add a production trace span directly to a dataset with one click — closing the gap between observed failures and the offline eval set. ^[extracted]

## Relationship to Other Approaches

- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]] — detailed process for Phase 1 (generating synthetic test cases from source materials)
- [[concepts/curated-dataset-strategy|Curated Dataset Strategy]] — applies Phase 3's human curation at scale
- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — where the dataset fits in the eval framework

## Sources

- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
