---
title: AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers — Jaspreet Singh, Intuit
tags:
- reference
- talk
- aief2025
- enterprise-ai
- tax
- gen-ai
- evaluation
aliases:
- Intuit LLMs Taxes AIEF2025
- Jaspreet Singh TurboTax AIEF2025
sources:
- AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers - Jaspreet Singh, Intuit - https://www.youtube.com/watch?v=_zl_zimMRak
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/jaspreet-singh|Jaspreet Singh]]'
  type: speaker
- target: '[[entities/intuit|Intuit]]'
  type: affiliation
category: references
summary: AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers — Jaspreet Singh, Intuit
---

# AIEF2025 - How Intuit uses LLMs to explain taxes to millions of taxpayers — Jaspreet Singh, Intuit

**Speaker:** Jaspreet Singh, Senior Staff Engineer at Intuit
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=_zl_zimMRak

## Summary

Jaspreet Singh presented how Intuit uses LLMs at massive scale — 44 million tax returns for tax year 2023 — to help taxpayers understand their refunds, credits, and deductions. The talk covered Intuit's proprietary GenOS platform, model selection (Claude as primary, OpenAI for Q&A), static vs dynamic query patterns, fine-tuning experiments on GPT-3.5 High Q via AWS Bedrock, a phased evaluation system with human tax analysts as prompt engineers and judges, and hard-won lessons about vendor lock-in and latency in consumer-facing LLM applications.

## Key Topics

### GenOS Platform
Intuit's proprietary generative AI platform, built because off-the-shelf GenOS tooling didn't support their regulatory, safety-critical use cases. Components include GenUX (UI layer), Orchestrator (routing between different LLM solutions), and Intuit Assist (the branded consumer experience). ^[extracted]

### Model Strategy
- **Claude** is the primary model, used for static queries (pre-defined prompts with user tax data injected). Intuit has a multi-million dollar contract with Anthropic.
- **OpenAI** (GPT-4 mini) used for other Q&A use cases and dynamic queries.
- Model switching is harder than expected — even within the same vendor, upgrading models year-over-year requires significant effort. ^[extracted]

### Static vs Dynamic Queries
- **Static queries**: Prepared-statement style, e.g., explaining a user's overall tax refund based on known constituents (deductions, credits, standard deduction, W-2).
- **Dynamic queries**: Open-ended user questions, e.g., "Can I deduct my dog?" ^[extracted]

### Fine-Tuning Experiment
Fine-tuned GPT-3.5 High Q on AWS Bedrock for static queries. Quality was good and fewer instructions were needed post-fine-tuning, but the model became too specialized for its specific use case, limiting reusability. ^[extracted]

### Evaluation System
Phased evaluation with three pillars: accuracy, relevancy, and coherence. Human tax analysts serve as both prompt engineers and initial evaluators, with LLM-as-judge providing automated evaluation on top of golden datasets from AWS Ground Truth. ^[extracted]

### Key Learnings
- LLM contracts are expensive; long-term contracts help but create vendor lock-in.
- Prompts are a form of lock-in — not easy to migrate.
- Model switching within the same vendor is harder than expected.
- Latency is a major concern: consumer-facing LLM responses take 3-10 seconds, far from backend-service SLAs of 100-200ms. ^[extracted]

## Related Pages

- [[entities/jaspreet-singh|Jaspreet Singh]] — Speaker
- [[entities/intuit|Intuit]] — Company
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — Eval systems described
- [[concepts/vendor-lock-in-llm|Vendor Lock-in in LLM]] — Key learning about contracts and migration
- [[concepts/fine-tuning-for-specialization|Fine-Tuning for Specialization]] — GPT-3.5 fine-tuning experiment
- [[concepts/static-vs-dynamic-llm-queries|Static vs Dynamic LLM Queries]] — Query patterns at Intuit
- [[concepts/llm-latency-in-consumer-apps|LLM Latency in Consumer Apps]] — 3-10 second latency reality
