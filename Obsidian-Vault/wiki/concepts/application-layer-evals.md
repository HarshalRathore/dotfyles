---
title: "Application-Layer Evals"
category: concepts
tags:
  - evals
  - application-layer
  - production-ai
  - reliability
  - testing
relationships:
  - target: "[[concepts/eval-ingredients-task-dataset-score]]"
    type: implements
  - target: "[[concepts/model-data-application-harmony]]"
    type: extends
  - target: "[[concepts/demo-savvy-problem]]"
    type: related_to
  - target: "[[concepts/basketball-court-metaphor]]"
    type: implements
sources:
  - "[[sources/watchv=mc55hdwlq4o]]"
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
---

# Application-Layer Evals

Application-layer evals are evaluation practices focused on how AI apps work for real users in production, rather than model-layer benchmarks cited by research labs at model release time. ^[extracted] The core insight: the model is now in the wild, out of the lab, and needs to work for your specific use case. ^[extracted]

## Model-Layer vs Application-Layer Evals

Model-layer evals measure raw model capability — what research labs publish when releasing new models. Application-layer evals measure whether the model, combined with your prompts, data, and architecture, works reliably for your users' actual queries. ^[inferred]

## The Demo-Savvy Problem

AI apps have a unique property: they're very demo-savvy. You demo it, it looks super good, you show it to coworkers, you ship to production, and then hallucinations appear. ^[extracted] This gap between demo quality and production reliability is the primary motivation for application-layer evals. ^[inferred]

## The 95% Problem

In production AI apps, approximately 95% of the code works 100% of the time — unit tests and end-to-end tests cover login, sign-out, and all non-LLM functions. But that most crucial 5% (the LLM portion) can fail unpredictably, making the entire app unusable. ^[extracted] Application-layer evals target this 5%. ^[inferred]

## Key Principles

- **Understand your court** — Map the boundaries of your app's domain and the queries your users actually ask ^[extracted]
- **Put constants in data, variables in the task** — Keep user queries as constant data; test different system prompts, RAG strategies, and preprocessing as variables ^[extracted]
- **Share code between evals and production** — Use the same middleware (e.g., Vercel AI SDK middleware) for both ^[extracted]
- **Prefer deterministic scoring** — Keep scores simple and pass/fail for easier debugging ^[extracted]
- **Run evals in CI** — Visualize how changes affect the entire "court" of test cases ^[extracted]
- **Add structured output hints** — For harder-to-score outputs, add a prompt hint like "output your final answer in these answer tags" to make string matching easy ^[extracted]

## Related
- [[concepts/loop-automated-eval-optimization|Loop — Automated Eval Optimization Agent]] — automated application-layer eval optimization
- [[concepts/dashboard-dumpster-diving|Dashboard Dumpster Diving]] — the manual eval pattern Loop replaces
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — AIEF2025 Talk]] — Ankur Goyal's talk on the future of automated evals
