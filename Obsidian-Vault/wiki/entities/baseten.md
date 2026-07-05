---
title: "Baseten"
tags:
  - organization
  - company
  - inference
  - infrastructure
aliases: [B10, Baseten]
sources:
  - "[[sources/watchv=3wv1vt0b0cg]]"
summary: "Inference platform company founded in 2019. Provides horizontal AI infrastructure for enterprises to run and optimize model inference at production scale."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Baseten

Baseten (also known as B10) is an inference platform company founded in 2019. The company provides horizontal AI infrastructure focused on the operational challenges of deploying, running, and optimizing model inference in production environments. Their customers span Fortune 50 enterprises across multiple industries. ^[extracted]

## Market Position

Co-founder and CTO [[entities/amir-haghighat|Amir Haghighat]] describes Baseten as selling "very horizontal AI tooling" — infrastructure that enterprises use to build their own AI applications, as opposed to verticalized AI solutions (AI for sales, AI for customer service). ^[extracted] This position gives Baseten visibility into how enterprises across industries approach AI infrastructure.

## Enterprise Perspective

Baseten's observation of 100+ enterprise conversations reveals: ^[extracted]

- Enterprises typically start with [[entities/openai|OpenAI]] and [[entities/anthropic|Anthropic]] on dedicated cloud deployments in Azure or AWS
- Closed-model reliance faces growing pressure from quality needs, latency requirements, unit economics, and strategic differentiation concerns
- Self-hosting inference introduces significant operational challenges — the "dragons" of building inference infrastructure at scale
## Inference Stack

Baseten runs a multi-runtime inference stack spanning [[entities/sglang|SGLang]], [[entities/vllm|vLLM]], and TensorRT-LLM. Each model uses the runtime best suited to it — SGLang is valued for its configurability, extensibility, and open-source codebase that makes it easy to contribute fixes back. ^[extracted] Baseten's engineers contribute improvements upstream rather than waiting for core developers to implement model support. ^[extracted]

## Related

- [[entities/amir-haghighat]] — Co-founder and CTO
- [[entities/sglang]] — Serving framework used in Baseten's inference stack
- [[concepts/enterprise-inference-infrastructure]] — The operational challenges Baseten addresses
- [[concepts/closed-model-assumption]] — The assumption driving enterprises toward platforms like Baseten
- [[references/rise-of-open-models-enterprise-amir-haghighat]] — Haghighat's talk


## Sources
- AI Engineer World's Fair 2025 — The Rise of Open Models in the Enterprise, Amir Haghighat, Baseten. https://www.youtube.com/watch?v=3WV1vT0B0cg
- AI Engineer World's Fair 2025 — Introduction to LLM serving with SGLang, Philip Kiely & Yineng Zhang. https://www.youtube.com/watch?v=Ahtaha9fEM0
- AI Engineer World's Fair 2025 — Optimizing inference for voice models in production, Philip Kiely. https://www.youtube.com/watch?v=gmTHs5T_YAE
