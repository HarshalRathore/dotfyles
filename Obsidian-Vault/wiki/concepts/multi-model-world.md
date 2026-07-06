---
title: Multi-Model World
tags:
- concept
- ai
- infrastructure
- strategy
aliases:
- multi-model strategy
- model commoditization
- model market competition
sources:
- 'https://www.youtube.com/watch?v=3mzs5gnelzm'
- 'https://www.youtube.com/watch?v=3wv1vt0b0cg'
summary: The model market is rapidly commoditizing — plan for a world with multiple model providers, competitive pricing, and open-source alternatives. Last year's model is a commodity.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Multi-Model World

The thesis that AI application builders should plan for a world with multiple competitive model providers, rapidly declining costs, and open-source alternatives. Articulated by [[entities/sarah-guo|Sarah Guo]].

## Evidence of Commoditization

### Price Collapse

| Milestone | Price per M tokens | Timeframe |
|---|---|---|
| GPT-4 launch | $30 | — |
| GPT-4 current | $2 | 18 months later |
| Distilled versions | ~$0.10 | — |

"Sam Altman himself said it best: last year's model is a commodity." ^[extracted]

### Market Fragmentation

Data from [[entities/openrouter|OpenRouter]] shows: ^[extracted]
- Claude ([[entities/anthropic|Anthropic]]) has cut into [[entities/openai|OpenAI]]'s market share
- Gemini (Google) has "come roaring back"
- New credible entrants: Safe Superintelligence Inc. (SSI), Thinking Machines
- [[entities/deepseek|DeepSeek]] releases base and reasoning models at a "claimed fraction of the training cost"

### Open Source

"We should just assume that open source will do as open source does, and we can rely on the model market to compete for our business." ^[extracted]

## Implications for Builders

1. **Don't tie your product to any single model** — design for model interchangeability ^[inferred]
2. **The value is at the application layer** — with models commoditizing, the thick [[concepts/cursor-for-x|Cursor-for-X]] wrapper is where defensibility lives ^[inferred]
3. **Inference cost is on a trajectory toward zero** — below a cent per million tokens is foreseeable ^[extracted]
4. **Tools like OpenRouter and inference platforms help manage multi-model strategy** ^[extracted]
5. **Be comfortable with multi-model** — "I am" (Guo) ^[extracted]

## Enterprise Drivers

Beyond the consumer and startup market, enterprises face distinct pressures accelerating multi-model adoption: ^[extracted] [Source: Haghighat, Baseten]

- **Quality for narrow tasks** — Major health plans have shown that fine-tuned open models on proprietary labeled data outperform frontier models on domain-specific tasks like medical document extraction (procedure codes, diagnosis codes). Generic API models are not always the right tool for specific enterprise workflows. ^[extracted]
- **Latency requirements** — Voice AI and real-time applications need low time-to-first-token, but frontier models and shared API endpoints are "optimized for high throughput and high QPS at the expense of latency." ^[extracted]
- **Unit economics under agentic workloads** — Agent-based use cases can generate 50 inference calls per user action, ballooning API costs. Self-hosting open models turns enterprises from price-takers to price-makers. ^[extracted]
- **Strategic differentiation ("destiny")** — CIOs increasingly ask: if we use the same frontier models as our competitors, what is our advantage? In-house AI capability becomes a differentiator at the model layer. ^[extracted]


## The Winner-Take-All Question

[[entities/alex-atallah|Alex Atallah]] of [[entities/openrouter|OpenRouter]] posed and answered the central market question: "Will inference be winner-take-all?" His answer — **no** — was the founding thesis of OpenRouter. ^[extracted]

### Evidence from OpenRouter's Data

OpenRouter's platform data over two years shows a market trending toward fragmentation, not concentration: ^[extracted]

- **Google Gemini** grew from ~2-3% token share in June 2024 to 34-35% over 12 months ^[extracted]
- **Anthropic models** are among the most popular on the platform ^[extracted]
- **OpenAI** holds significant share but is underrepresented in the data because many developers use OpenRouter to get "OpenAI-like behavior for all other models" ^[extracted]
- The number of active models on OpenRouter has steadily grown; users don't "hop from model to model" — model stickiness is high, but the catalog keeps expanding ^[extracted]

### Inference as Commodity

"Claude from Bedrock, we want to make it look exactly the same as Claude from Vertex." The two hyperscalers deliver "fundamentally the same commodity at different rates, different performances." For a developer, the who-behind-the-model becomes noise — selection and routing become the value. ^[extracted]

Inference will be a "dominant operating expense" and "selecting and routing will be crucial." ^[extracted]

### The Distillation Unlock

A key technical enabler of the multi-model world was the **Alpaca distillation** (March 2023): Stanford took Llama 1, generated outputs on GPT-3, and fine-tuned for under $600. This was "the first time I saw the transference of both style and knowledge from a large model onto a small one" — proving that unique data could be made available as a service in the form of a language model. ^[extracted] This unlocked the long tail: "tens of thousands of these, maybe hundreds of thousands." ^[extracted]

### The Infrastructure Answer: Model Switchboards

[[entities/microsoft|Microsoft]]'s model switchboard ([[concepts/model-ensemble-routing|model ensemble routing]]) is the infrastructure answer to the multi-model world: intelligent routing across 10,000+ open and proprietary models with security, reliability, and data residency guarantees. ^[extracted] [[entities/asha-sharma|Asha Sharma]]'s thesis: "no one model is right for every single product, and oftentimes the best products have an ensemble or a mixture of models that are finely tuned for every single job to be done." ^[extracted] This turns the multi-model reality from a build challenge into a platform capability — the platform routes each task to the best model automatically. ^[inferred]

## Related

- [[concepts/cursor-for-x]] — Why thick wrappers matter more as models commoditize
- [[concepts/execution-as-moat]] — Defensibility in a commoditized model market
- [[concepts/model-commoditization]] — The underlying pricing trend
- [[concepts/closed-model-assumption]] — Why enterprises are rethinking closed-model reliance
- [[concepts/enterprise-inference-infrastructure]] — The operational challenges of self-hosting
- [[concepts/agent-cost-predictability]] — Why cost transparency matters as agent inference costs scale
- [[entities/amir-haghighat]] — Enterprise adoption perspective
- [[entities/openrouter]] — Inference marketplace data supporting multi-model thesis
- [[entities/alex-atallah]] — Co-founder of OpenRouter, articulated the "not winner-take-all" thesis
- [[entities/openai]] — Model provider
- [[entities/anthropic]] — Model provider
## Sources
- AI Engineer World's Fair 2025 — The Rise of Open Models in the Enterprise, Amir Haghighat, Baseten. https://www.youtube.com/watch?v=3WV1vT0B0cg
- AI Engineer World's Fair 2025 — Spark to System: Building the Open Agentic Web, Asha Sharma, Microsoft. https://www.youtube.com/watch?v=7Hrw6rtXaHc
- AI Engineer World's Fair 2025 — Fun stories from building OpenRouter and where all this is going, Alex Atallah, OpenRouter. https://www.youtube.com/watch?v=84Vtz2IL1Ug
