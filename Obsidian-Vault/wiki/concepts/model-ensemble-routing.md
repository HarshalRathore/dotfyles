---
title: Model Ensemble Routing
tags:
- concept
- model
- routing
- infrastructure
- ensemble
- microsoft
aliases:
- model switchboard
- intelligent model routing
- model mixture routing
- model ensemble platform
sources:
- 'https://www.youtube.com/watch?v=7hrw6rtxahc'
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md
summary: Intelligent routing layer that selects from thousands of open and proprietary models per task — no single model is right for every product, so platforms route to the best model for each job.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-08-15
category: concepts
---

# Model Ensemble Routing

Model ensemble routing (also called a model switchboard) is the infrastructure layer that routes each agent task to the optimal model from a catalog of thousands, rather than relying on a single model for all tasks. ^[extracted] Articulated by [[entities/asha-sharma|Asha Sharma]] of [[entities/microsoft|Microsoft]] at AI Engineer World's Fair 2025. ^[extracted]

## The Thesis

> "No one model is right for every single product, and oftentimes the best products have an ensemble or a mixture of models that are finely tuned for every single job to be done." ^[extracted]

## Key Characteristics

- **Catalog scale** — [[entities/microsoft|Microsoft]]'s switchboard provides access to 10,000+ open and proprietary models. ^[extracted]
- **Intelligent routing** — Tasks are routed to the model best suited for the specific job, not a one-size-fits-all. ^[extracted]
- **Built-in guardrails** — Security, reliability, and data residency guarantees backed by the platform. ^[extracted]
- **Continuous updates** — New models (e.g., [[concepts/openai-real-time-api|DeepSeek R1 updates]]) are added and available immediately on the platform. ^[extracted]

## Relationship to [[concepts/multi-model-world]]

The [[concepts/multi-model-world|multi-model world]] thesis describes the market reality of model commoditization and competition. Model ensemble routing is the *infrastructure answer* to that market reality — the platform capability that lets application builders actually take advantage of a multi-model world without rewriting their application for each model provider. ^[inferred]

## OpenRouter's Real-World Routing

[[entities/openrouter|OpenRouter]] implements model ensemble routing in production for 400+ models across 60+ providers. Key features: ^[extracted]

- **Provider aggregation** — Llama 3.3 70B has 23 providers on the platform at different price/performance points ^[extracted]
- **Uptime boosting** — Multiple providers for the same closed-source model aggregate reliability when a single provider can't keep up with demand ^[extracted]
- **30ms routing latency** — Achieved through custom cache work, claimed best in the industry ^[extracted]
- **Geographical routing** — Planned: routing users to the right GPU in the right geographic location for enterprise-level optimizations ^[extracted]
- **Feature normalization** — Providers differ on sampler support (Min-P), caching, tool calling, structured outputs; OpenRouter normalizes these so the developer doesn't need to worry about what each provider supports ^[extracted]

Whereas Microsoft's model switchboard focuses on catalog scale (10,000+ models), OpenRouter focuses on **operational heterogeneity** — making many providers for the same model look identical, and handling the real-world engineering problems (stream cancellation, latency variance, feature gaps) that emerge when you let developers freely route. ^[inferred]

## Cost-Based Routing: AI Wardrobe Case (2026-08)

The AI-wardrobe design session (2026-08-15) applies model ensemble routing to a consumer product with a clear cost-driven decision rule:

- **Cheap models** handle routine, high-confidence cases — the majority of "what do I wear tomorrow" asks — including an on-device tier (Gemma/Qwen3-VL-2B/SmolVLM or Android Gemini Nano) at zero marginal cost. ^[extracted]
- **Frontier multimodal models** handle ambiguous, low-confidence, unknown, or premium cases (difficult visual reasoning, novel garments, high-stakes events). ^[extracted]
- **Benchmark blind and choose the cheapest model that passes the quality threshold** — cost is a first-class selection criterion, not an afterthought. ^[extracted]
- Concretely: a cheap cloud VLM (Gemini 2.5/3.5 Flash-Lite or gpt-5.6-luna) for structured extraction and daily styling; image generation gated behind paid, metered tiers. ^[extracted]

This generalizes the "switchboard" thesis from platform infrastructure to per-task product routing where unit economics drive the policy. ^[inferred]

## Related

- [[concepts/multi-model-world]]
- [[entities/openrouter]] — Real-world routing implementation with 30ms latency
- [[concepts/agent-factory]]
- [[entities/azure-ai-foundry]]
- [[concepts/agentic-web]]
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma]]
- [[projects/ai-wardrobe-india/concepts/ai-wardrobe-unit-economics|AI Wardrobe Unit Economics]] — the cost model that motivates cheap-by-default routing
- [[concepts/multimodal-models|Multimodal Models]] — the frontier multimodal models routed to hard cases

## Sources

- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma. https://www.youtube.com/watch?v=7Hrw6rtXaHc
- AI Engineer World's Fair 2025 — Fun stories from building OpenRouter and where all this is going, Alex Atallah, OpenRouter. https://www.youtube.com/watch?v=84Vtz2IL1Ug
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md — design-session synthesis (2026-08-15)

