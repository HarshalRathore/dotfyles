---
title: Closed Model Assumption
tags:
- concept
- ai
- enterprise
- strategy
- inference
aliases:
- closed-model reliance
- closed frontier model assumption
- API model dependency
sources:
- 'https://www.youtube.com/watch?v=3wv1vt0b0cg'
summary: The assumption that enterprises can sustainably build on closed frontier API models (OpenAI, Anthropic) indefinitely — and the four cracks (quality, latency, unit economics, destiny) that are break...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Closed Model Assumption

The closed model assumption is the implicit belief that enterprises can build their AI strategy on top of closed frontier API models ([[entities/openai|OpenAI]], [[entities/anthropic|Anthropic]], Google) indefinitely. Articulated by [[entities/amir-haghighat|Amir Haghighat]] of [[entities/baseten|Baseten]] based on observations from 100+ enterprise conversations. As of 2025, "cracks" in this assumption have become "palpable." ^[extracted]

## The Enterprise Adoption Journey

According to Haghighat, enterprises follow a predictable progression: ^[extracted]

1. **Start with closed frontier models** — Dedicated deployments of [[entities/openai|OpenAI]] or [[entities/anthropic|Anthropic]] models on Azure or AWS for security, privacy, and compliance.
2. **Build production use cases** — By 2024, 40-50% of enterprises had something in production on these models.
3. **Hit the cracks** — The assumption that closed models suffice breaks for specific reasons.

## The Four Cracks

### 1. Quality

For general tasks, enterprises know they cannot build a better GPT-4 than [[entities/openai|OpenAI]]. But for specific, narrow tasks with proprietary data, fine-tuned open models can outperform frontier models. ^[extracted]

> Healthcare example: Major health plans need medical document extraction — procedure codes (CPT), diagnosis codes, prescriptions from millions of medical documents. Giving this task to Claude or GPT directly doesn't work well, but using labeled data accumulated over years to fine-tune models produces better results. ^[extracted]

> Transcription example: In healthcare, understanding medical jargon requires specialized transcription models that outperform generic API-based models. ^[extracted]

### 2. Latency

Closed frontier models and open models served through shared APIs are "optimized for high throughput and high QPS at the expense of latency." As voice AI and AI phone calls become more critical, time-to-first-token and time-to-first-sentence become decisive. Enterprise use cases requiring low latency cannot simply use frontier models as-is because they are optimized for different trade-offs. ^[extracted]

### 3. Unit Economics

Agentic use cases have ballooned inference costs — "every single user action can result in literally 50 inference calls." The cost problem that enterprises assumed would "take care of itself" (because per-token pricing was plummeting) has instead exploded. Running models on owned compute, paying for infrastructure directly, and being a price-maker rather than a price-taker becomes economically necessary to demonstrate ROI. ^[extracted]

### 4. Destiny / Strategic Differentiation

If every enterprise uses the same frontier models, what is the competitive advantage? Haghighat reports hearing CIOs and CTOs increasingly question: "if we use just the frontier models and so do our competitors, what is our advantage, what is our alpha?" Moving AI capability in-house becomes a differentiation strategy not just at the application layer but at the AI layer itself. ^[extracted]

## What the Cracks Are NOT

Haghighat explicitly identifies common misconceptions about why enterprises would move away from closed models: ^[extracted]

- **Vendor lock-in is not a concern** — There are now multiple frontier providers, largely interoperable via OpenAI-compatible API specs.
- **Ballooning per-token costs were not a concern in 2024** — Enterprises assumed price-per-token decline would handle it (until 2025 proved otherwise).
- **Compliance, privacy, and security are largely handled** — Cloud providers (CSPs) enable dedicated deployments within enterprise VPCs.

## Implications

Moving beyond the closed-model assumption shifts enterprises from a simple "call an API and run with it" world to the complex landscape of [[concepts/enterprise-inference-infrastructure|enterprise inference infrastructure]] — building, fine-tuning, distilling, and operating open models in production. ^[inferred]

## Related

- [[concepts/enterprise-inference-infrastructure]] — The operational challenges that follow abandoning the closed-model assumption
- [[concepts/multi-model-world]] — The broader model commoditization trend
- [[concepts/agent-cost-predictability]] — Why cost transparency becomes critical as agent inference costs escalate
- [[entities/amir-haghighat]] — The speaker who articulated this framework
- [[entities/baseten]] — The inference platform addressing these cracks
- [[references/rise-of-open-models-enterprise-amir-haghighat]] — Source talk

## Sources
- AI Engineer World's Fair 2025 — The Rise of Open Models in the Enterprise, Amir Haghighat, Baseten. https://www.youtube.com/watch?v=3WV1vT0B0cg
