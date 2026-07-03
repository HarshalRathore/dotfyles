---
title: "The Rise of Open Models in the Enterprise — Amir Haghighat, Baseten"
tags:
  - reference
  - talk
  - ai-engineer
  - enterprise
  - open-models
sources:
  - "AI Engineer World's Fair 2025 - The Rise of Open Models in the Enterprise — Amir Haghighat, Baseten - https://www.youtube.com/watch?v=3WV1vT0B0cg"
summary: "Amir Haghighat draws on 100+ enterprise conversations to trace the shift from closed frontier API models toward open models — the four cracks in the closed-model assumption and the operational dragons of self-hosted inference."
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# The Rise of Open Models in the Enterprise — Amir Haghighat, Baseten

> **Event:** AI Engineer World's Fair 2025
> **Speaker:** [[entities/amir-haghighat|Amir Haghighat]], Co-founder & CTO of [[entities/baseten|Baseten]]
> **Source:** [YouTube](https://www.youtube.com/watch?v=3WV1vT0B0cg)

## Overview

Amir Haghighat presents a data-driven view of enterprise AI adoption drawn from over 100 conversations with Fortune 50 companies, CIOs, and enterprise AI leaders. His central thesis: the assumption that enterprises can build on closed frontier models indefinitely is cracking, driven by four specific forces — quality for narrow tasks, latency requirements, ballooning unit economics from agentic workloads, and strategic differentiation ("destiny"). However, moving to open models introduces a new set of operational challenges — the "dragons" of inference infrastructure. ^[extracted]

## The Enterprise AI Adoption Timeline

| Year | Stage | Characteristics |
|------|-------|-----------------|
| 2023 | Toying | CIOs described dedicated GPT-4 deployments as a way for engineers to "toy around," almost dismissively. ^[extracted] |
| 2024 | Production experiments | 40-50% of 100+ enterprises had something in production on closed models. ^[extracted] |
| 2025 | Cracks appearing | "Palpable" shift — enterprises questioning indefinite reliance on closed frontier models. ^[extracted] |

## The Four Cracks in the Closed-Model Assumption

### 1. Quality for Specific Tasks

> "For specific use cases, for specific tasks, we're seeing this where the frontier models are not necessarily the right tool."

Health plans doing medical document extraction found that giving the task to Claude or GPT directly did not work, but fine-tuned models trained on their own labeled data outperformed frontier models. Similarly, transcription models specialized for medical jargon outperform generic API-based models. ^[extracted]

### 2. Latency

Closed models are "optimized for high throughput and high QPS at the expense of latency." Voice AI, AI phone calls, and other latency-sensitive applications have made time-to-first-token and time-to-first-sentence critical — forcing enterprises to think differently about inference architecture. ^[extracted]

### 3. Unit Economics (Cost Blowup)

> "Every single user action can result in literally 50 inference calls."

Agents have exploded inference costs. Enterprises that assumed per-token price declines would solve the cost problem discovered in 2025 that agentic use cases ballooned their total inference spend. Self-hosting — paying for raw compute instead of per-token margins — becomes economically necessary for ROI viability. ^[extracted]

### 4. Destiny (Strategic Differentiation)

> "If we use just the frontier models and so do our competitors, what is our advantage, what is our alpha?"

Haghighat reports CIOs and CTOs increasingly asking this question. In-house AI capability becomes a differentiation strategy not just at the workflow/application layer but at the AI model layer itself. ^[extracted]

## What Does NOT Drive Open Model Adoption

Haghighat explicitly dispels common assumptions: ^[extracted]

- **Vendor lock-in** is not the concern — multiple providers exist, largely interoperable via OpenAI-compatible API specs
- **Per-token price** was not a concern in 2024 — enterprises assumed it would self-resolve (until 2025 agent cost blowup)
- **Compliance, privacy, security** are already handled by CSPs running dedicated deployments in enterprise VPCs

## The Dragons of Inference Infrastructure

Moving from API calls to self-hosting introduces operational complexity that enterprises consistently underestimate: ^[extracted]

- **Model-level optimization** — speculative decoding, Medusa heads, Eagle 3, MTP; requires staying current with fast-moving research
- **Infrastructure-level optimization** — prefix caching, disaggregated serving for time-to-first-token control
- **Four-nines reliability** — VLM and SGLang "crash often," Triton crashes drive tail latency spikes; standard setups guarantee at most two nines
- **Auto-scaling** — one enterprise cited 8-minute replica spin-up times, catastrophic for burst traffic
- **Observability and lifecycle management** — logging, metrics, model versioning, rollback, audit controls

> "Picking an open source model, SGLang or VLM, some GPUs in a data center or cloud, putting them together — you get production inference. I know for a fact that this is not true."

## Key Quotes

> "If in the 2000s enterprises were not really building tech themselves and were just buying Salesforce or products like that, then the tech industry would just not be as big. Companies like Snowflake and Databricks and Datadog would not exist." ^[extracted]

> "Look, we've picked an open source model, we've heard of SGLang or VLM or Triton, we have some GPUs in the data center or cloud, and you put these together and you get production inference. I know for a fact that this is not true." ^[extracted]

> "How do you build against those and make sure that you can still guarantee four nines and not be super overprovisioned and mess up all the unit economics?" ^[extracted]

## Pages Created from This Source

- [[entities/amir-haghighat|Amir Haghighat]]
- [[entities/baseten|Baseten]]
- [[concepts/closed-model-assumption|Closed Model Assumption]]
- [[concepts/enterprise-inference-infrastructure|Enterprise Inference Infrastructure]]

## Pages Updated from This Source

- [[concepts/multi-model-world]] — Added enterprise-specific drivers toward multi-model adoption
- [[concepts/agent-reliability-challenge]] — Added enterprise quality use case for specialized models

## Sources

- [YouTube: The Rise of Open Models in the Enterprise — Amir Haghighat, Baseten](https://www.youtube.com/watch?v=3WV1vT0B0cg)
