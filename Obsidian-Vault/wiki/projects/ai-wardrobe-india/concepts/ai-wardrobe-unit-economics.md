---
title: AI Wardrobe Unit Economics
category: concepts
tags:
- unit-economics
- cost-model
- llm-cost
- wardrobe-app
- image-generation
aliases:
- wardrobe AI cost model
- AI cost per user wardrobe
relationships:
- target: "[[concepts/recommendation-serving-cost]]"
  type: related_to
- target: "[[concepts/model-ensemble-routing]]"
  type: uses
sources:
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md
summary: The AI cost model for a wardrobe app — ~$0.03–0.08 (light) to $1.60–2.80 (heavy) per active user per month; text+vision is ~90% of marginal cost and image generation dominates paid tiers.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# AI Wardrobe Unit Economics

The AI unit-cost model for a wardrobe app, computed in the 2026-08 market research under stated token assumptions. Prices are as of 2026-08-15 and will drift. ^[extracted]

## Assumptions

- Garment photo ≈ 400 input / 400 output tokens; styling interaction ≈ 4,000 input / 500 output tokens.
- Ingestion on Gemini Flash-Lite (3.5: $0.30/$2.50 per 1M; 2.5: $0.10/$0.40).
- Styling on Gemini 3.5 Flash-Lite; context caching ≈ $0.03/M cached input.
- Image gen on Nano Banana 2 ($0.067 1K / $0.101 2K) or Nano Banana 2 Lite ($0.034).

## Per-Unit Costs

| Operation | Cost |
|---|---|
| Ingestion/item (3.5 Flash-Lite) | $0.00112 |
| Ingestion/item (2.5 Flash-Lite) | $0.00020 |
| Styling/interaction (no cache) | $0.00245 |
| Styling/interaction (cached) | ≈$0.00137 |
| Styling/interaction (gpt-5.6-luna) | ≈$0.0014 |
| Image gen (Nano Banana 2 Lite / 2 / Pro) | $0.034 / $0.067–0.101 / $0.134–0.24 |

## Per Active User per Month

| Tier | Wardrobe | Text | Images | AI cost/user/month |
|---|---|---|---|---|
| Light | 50 items (amortized) | 10 | 0 | ~$0.03–0.08 (≈₹3–7) |
| Standard | 150 items | 30 | 5 (Nano Banana 2) | ~$0.45–0.75 (≈₹38–63) |
| Heavy + image gen | 150 items | 100 | 20 | ~$1.60–2.80 (≈₹135–235) |

First-month bulk ingestion for 150 items ≈ $0.17 (3.5 FL) or $0.03 (2.5 FL) — negligible, so batch ingestion on signup is safe to give away free. ^[extracted]

## The Conversation's Cheaper-Model Estimate

Under the research's gpt-5.6-luna prices ($0.20/$1.20) and the same 4,000/500 token assumption, one styling interaction is ≈ **$0.0014 ≈ ₹0.12**, and **30 interactions ≈ ₹3.60**. This is a **time-sensitive estimate** based on Source A pricing (luna took an 80% price cut in Jul 2026) — recompute before reuse. ^[extracted]

## Secondary Costs

Storage ≈ $0.001/user/month (150 items ≈ 45 MB compressed webp); text embeddings ≈ $0.0034 one-time; image embeddings ≈ $0.018 one-time; vector search is free-tier/pennies at seed scale. Conclusion: AI text+vision is ~90%+ of marginal cost, images dominate paid tiers, storage is noise. ^[extracted]

## Related

- [[projects/ai-wardrobe-india/references/ai-wardrobe-market-india-2026-08|AI Wardrobe Market India (2026-08)]] — source distillation
- [[concepts/recommendation-serving-cost|Recommendation Serving Cost]] — the general lesson that serving cost shapes architecture
- [[concepts/model-ensemble-routing|Model Ensemble Routing]] — cheap-by-default routing as the cost lever
- [[projects/ai-wardrobe-india/skills/ai-wardrobe-mvp-wedge-and-validation|AI Wardrobe MVP Wedge & Validation]] — how cost floors the free tier
- [[projects/ai-wardrobe-india/ai-wardrobe-india|AI Wardrobe India]] — project overview

## Sources

- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md` — cost model (2026-08-15)
- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md` — luna cost estimate (2026-08-15)
