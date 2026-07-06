---
title: Azure AI Evaluation SDK
category: concepts
tags:
- evaluation
- azure-ai-foundry
- azure-ai-eval-sdk
- agents
- microsoft
- automated-evals
aliases:
- Azure AI Eval SDK
- Azure AI Foundry evaluators
relationships:
- target: '[[concepts/agent-evaluation-pipeline]]'
  type: implements
- target: '[[concepts/llm-judge-best-practices]]'
  type: extends
- target: '[[concepts/multimodal-evaluation]]'
  type: extends
sources:
- 'https://www.youtube.com/watch?v=j4vpq2i0qze'
- 'https://www.youtube.com/watch?v=jhjkgramfiu'
provenance:
  extracted: 0.8
  inferred: 0.17
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Azure AI Evaluation SDK
---

# Azure AI Evaluation SDK

The Azure AI Evaluation SDK is a Python-based toolkit within [[entities/azure-ai-foundry|Azure AI Foundry]] for programmatically evaluating AI agents and LLM applications at scale. ^[extracted] It provides built-in quality, NLP, and risk/safety evaluators that can be configured via Python notebooks. ^[extracted]

## Evaluator Categories

The SDK ships with three categories of evaluators: ^[extracted]

### Quality Evaluators
Measure conversational quality across multiple dimensions:
- **Groundedness** — Does the response stay faithful to the source/context?
- **Fluency** — Is the response well-written and natural?
- **Coherence** — Does the response maintain logical consistency?
- **Relevance** — Does the response address the query?
- **Similarity** — How closely does the response match expected output?

### NLP Benchmark Metrics
Classic NLP scoring for quantitative benchmarking:
- F1 score, BLEU, ROUGE ^[extracted]

### Risk & Safety Evaluators
AI-assisted assessments of harmful content, violence, and other risk categories. These return graded scores (1–5) rather than binary pass/fail, enabling domain-specific threshold configuration. ^[extracted]

## Custom Evaluators

Organizations can build custom evaluators for domain-specific criteria not covered by the built-in set. ^[extracted]

## Multimodal Evaluation

The SDK supports evaluation of multimodal inputs (text + images). Evaluators can assess whether images contain harmful or violent content and return graded scores. ^[extracted] This is particularly important for agents that process or generate visual content. ^[inferred]

## Usage Model

Evaluators are configured in Python notebooks within Azure AI Foundry. The `evaluate` function takes a dataset, a list of evaluators, and runs bulk evaluation across all data points. Results include per-sample scores and can be filtered by threshold. ^[extracted]

## Agentic Evaluators

Microsoft introduced a new category of evaluators specifically for agentic behavior — assessing whether agents follow instructions, use tools appropriately, and maintain safety constraints across multi-step interactions. ^[extracted] These sit alongside quality evaluators, risk/safety evaluators, and [[concepts/ai-red-teaming|red teaming]] in the broader evaluation framework. ^[extracted]

## Relationship to Evaluation-First Development

The Azure AI Evaluation SDK operationalizes [[concepts/evaluation-first-development|evaluation-first development]] at the platform level — providing the tooling for teams to run continuous, automated evaluations as part of their development workflow rather than as a one-time validation step. ^[inferred]

## Related

- [[concepts/agent-evaluation-pipeline]] — Microsoft's broader agent evaluation pipeline (CI/CD integration, red teaming, observability)
- [[concepts/evaluation-first-development]] — Methodology for building with early and continuous evaluation
- [[concepts/llm-judge-best-practices]] — LLM-as-judge design principles
- [[concepts/multimodal-evaluation]] — Multimodal evaluation capabilities
- [[entities/azure-ai-foundry]] — Platform hosting the SDK

## Sources

- Agentic Excellence: Mastering AI Agent Evals w/ Azure AI Evaluation SDK — Cedric Vidal, Microsoft. https://www.youtube.com/watch?v=J4vPq2i0QzE
