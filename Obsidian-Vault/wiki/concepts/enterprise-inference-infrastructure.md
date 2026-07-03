---
title: "Enterprise Inference Infrastructure"
tags:
  - concept
  - ai
  - infrastructure
  - enterprise
  - inference
aliases: [enterprise inference dragons, self-hosted inference challenges, production inference ops]
sources:
  - "AI Engineer World's Fair 2025 - Critical AI Inference your CIO can Trust — Sahil Yadav, Hariharan Ganesan, Telemetrak - https://www.youtube.com/watch?v=6Tpm4m1YxHk"
  - "AI Engineer World's Fair 2025 - The Rise of Open Models in the Enterprise — Amir Haghighat, Baseten - https://www.youtube.com/watch?v=3WV1vT0B0cg"
  - "AIEF2025 - How fast are LLM inference engines anyway? — Charles Frye, Modal - https://www.youtube.com/watch?v=DeFF3J8T5Pk"
summary: "The operational challenges ('dragons') that enterprises face when moving from API-based frontier models to self-hosted inference with open models — spanning performance, reliability, scaling, observability, and trust. The economic case for self-hosting is now supported by production-viable open models and mature inference engines."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.48
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Enterprise Inference Infrastructure

Enterprise inference infrastructure refers to the operational stack required to run open-source models in production at enterprise scale. Articulated by [[entities/amir-haghighat|Amir Haghighat]] of [[entities/baseten|Baseten]] as the "dragons" that enterprises encounter after choosing to move beyond the [[concepts/closed-model-assumption|closed-model assumption]]. Haghighat emphasizes that "picking a model, VLM or SGLang, some GPUs, and putting them together" is not sufficient for production inference. ^[extracted]

## The Open Models Flipping Point

[[entities/charles-frye|Charles Frye]] of [[entities/modal|Modal]] argues that the combination of production-viable open-weight models (Llama, Qwen, DeepSeek) and mature inference engines ([[entities/vllm|vLLM]], [[entities/sglang|SGLang]]) has "flipped the playing field" — self-hosting now makes practical sense unless you are "the U.S. government or running on an air-gapped system." ^[extracted]

This reverses the dynamic from 2023 where running open models required ideological commitment. Frye's prediction from the first AI Engineer Summit (2023) — that if capabilities requirements saturate, open models would catch up and dominate — has been validated. ^[extracted]

The [[entities/modal|Modal]] LLM Almanac provides the benchmark data enterprises need to make informed self-hosting decisions, with per-replica throughput numbers that serve as the base unit for capacity planning. ^[extracted]

## The Dragons

### 1. Performance Optimization (Model Level)

Optimizing inference for latency requires expertise across rapidly evolving techniques: ^[extracted]

- **Speculative decoding** — choosing draft models, evaluating options like Medusa heads, Eagle 3, or MTP (Multi-Token Prediction)
- **Model-level optimization pace** — Eagle 3 paper came out "like six months ago" and meaningful production impact requires staying current with research, not flipping switches in SGLang or VLM

These optimizations require specialized talent that is hard for enterprises to hire and retain.

### 2. Performance Optimization (Infrastructure Level)

Model-level optimizations "bleed into" infrastructure requirements: ^[extracted]

- **Prefix caching** — critical when prompts are massive and similar across calls (common in agentic use cases)
- **Disaggregated serving** — separating prefill and decode phases to independently optimize time-to-first-token and P99 latency

### 3. Reliability (Four Nines)

Mission-critical inference demands four nines (99.99%) availability, but the standard formula of "VLM or SGLang on some GPUs" does not guarantee more than two nines: ^[extracted]

- **Hardware failures** — when hardware fails underneath, systems must recover without user impact
- **Framework crashes** — VLM and SGLang crash "often," Triton crashes regularly, driving tail latencies through the roof during recovery
- **Minimizing overprovisioning** — guaranteeing reliability while preserving unit economics requires sophisticated architecture

### 4. Auto-scaling Under Burst

When a burst of traffic arrives, models must scale up fast. Haghighat cites an example of a major soft drink enterprise: "it takes us eight minutes when you want to bring up a new replica of the same model." With microservices-level latency sensitivity, eight-minute replica spin-up times are catastrophic for tail latencies. ^[extracted]

### 5. Tooling and Observability

Production inference introduces a "massive iceberg" of operational concerns beneath the surface: ^[extracted]

- **Lifecycle management** — model versioning, deployment, rollback
- **Observability** — logging, metrics, tracing specific to inference performance
- **Controls and audit** — enterprise governance requirements around model behavior, access, and compliance

## The Build vs. Buy Decision
Enterprises that encounter these dragons face a fundamental build vs. buy decision. Haghighat argues they should "buy this layer of infrastructure and platform" rather than building it in-house, but acknowledges this is "sometimes harder than it seems." ^[extracted]


## The Trust Dimension

Beyond the technical dragons of performance, reliability, and scaling, [[entities/telemetrak|Telemetrak]]'s [[concepts/ai-trust-pillars|trust framework]] argues that enterprise inference infrastructure must also address the trustworthiness of AI outputs. The technical stack only solves availability and latency — it does not guarantee that inferences are explainable, traceable, or operating within safe guardrails. ^[inferred]

The [[concepts/x-tops|X-TOPS framework]] proposes adding trust as a first-class operational concern in inference infrastructure:

- **Explainability layer** — Models should not just return predictions but also provide natural-language explanations for why a particular inference was made. ^[extracted]
- **Verifiable traceability** — Every inference should be digitally signed and traceable back through the decision chain, analogous to a flight recorder. ^[extracted]
- **Adaptive guardrails** — Dynamic controls that understand context and can block or escalate risky inferences in real time. ^[extracted]

Two key metrics for measuring trust in inference infrastructure:
- **[[concepts/mttre|MT-T-R-E]]** (Mean Time to Resolve Explainable Errors) — how quickly unexpected AI behavior can be diagnosed and fixed
- **[[concepts/trust-adjusted-risk|Trust Adjusted Risk & Dollars]]** — quantifying the business cost of trust failures


## Related
- [[concepts/closed-model-assumption]] — The strategic shift that leads enterprises to face these dragons
- [[concepts/multi-model-world]] — Why enterprises need infrastructure for multiple concurrent model strategies
- [[concepts/agent-cost-predictability]] — The cost pressure that drives self-hosted inference decisions
- [[concepts/ai-trust-pillars]] — Trust dimensions essential for enterprise inference infrastructure
- [[concepts/x-tops]] — Operational framework for trustworthy inference
- [[concepts/silent-ai-failures]] — The risk of undetected inference failures
- [[entities/amir-haghighat]] — Speaker
- [[entities/baseten]] — Inference platform
- [[references/rise-of-open-models-enterprise-amir-haghighat]] — Source talk

## Sources

- AI Engineer World's Fair 2025 — The Rise of Open Models in the Enterprise, Amir Haghighat, Baseten. https://www.youtube.com/watch?v=3WV1vT0B0cg
- [[references/critical-ai-inference-cio-trust-telemetrak-2025|Critical AI Inference Your CIO Can Trust — AI Engineer World's Fair 2025]]
