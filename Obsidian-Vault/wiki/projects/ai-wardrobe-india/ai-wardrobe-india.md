---
title: AI Wardrobe India
category: project
tags:
- ai-wardrobe
- india
- fashion-tech
- ethnic-wear
- virtual-try-on
- recommendation
aliases:
- AI Wardrobe Project
- Kya Pehne Kahan
sources:
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md
summary: Project exploring a closet-first, Indian-occasion-first AI wardrobe app for ethnic wear — market gap, unit economics, MVP wedge, and the wardrobe-memory + taste-data moat.
provenance:
  extracted: 0.6
  inferred: 0.3
  ambiguous: 0.1
base_confidence: 0.6
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# AI Wardrobe India

Project exploring an AI wardrobe app for Indian users with first-class support for Indian ethnic wear (saree, salwar suit, kurta, lehenga, sherwani) and occasion-aware outfit recommendations. The market research (Source A) finds the category is real but has no entrenched ethnic-first incumbent — [[projects/ai-wardrobe-india/entities/kya-pehne|Kya Pehne]], a brand-new iOS-only app, is the closest direct competitor — while the design session (Source B) frames the durable product as a closet-first memory layer whose long-term moat is Indian ethnic-fashion preference data and a specialized ranker. ^[extracted]

## Key Concepts

- [[concepts/closet-first-wardrobe-memory|Closet-First Wardrobe Memory]] — the wardrobe-catalog + taste-profile + wear-history layer that shopping platforms do not build
- [[concepts/indian-ethnic-occasion-taxonomy|Indian Ethnic Occasion Taxonomy]] — haldi/mehendi/sangeet/griha pravesh/puja/reception semantics as first-class objects
- [[concepts/outfit-ranking-vs-outfit-generation|Outfit Ranking vs Generation]] — styling as candidate generation + ranked selection, not one correct answer
- [[concepts/fashion-taste-dimensions|Fashion Taste Dimensions]] — taste is color harmony + silhouette + fabric + pattern + visual weight + jewelry–neckline fit + context, not color matching
- [[concepts/outfit-ranker-evaluation|Outfit Ranker Evaluation]] — blinded pairwise agreement, top-choice/top-3 success, constraint-violation rate, actual-wear feedback
- [[concepts/ai-virtual-tryon-landscape|AI Virtual Try-On Landscape]] — PointAI/Google/Myntra are shop-first VTO, not closet-first memory

## Project-Scoped Pages

- [[projects/ai-wardrobe-india/concepts/ai-wardrobe-unit-economics|AI Wardrobe Unit Economics]] — ~$0.03–2.80/user/month AI cost; images dominate paid tiers
- [[projects/ai-wardrobe-india/skills/ai-wardrobe-mvp-wedge-and-validation|AI Wardrobe MVP Wedge & Validation]] — occasion-first wedge and 90-day low-burn validation plan
- [[projects/ai-wardrobe-india/synthesis/wardrobe-memory-and-taste-data-moat|Wardrobe Memory & Taste Data Moat]] — synthesis of the defensibility argument
- [[projects/ai-wardrobe-india/references/ai-wardrobe-market-india-2026-08|AI Wardrobe Market India (2026-08)]] — full market-research distillation

## Competitors & Ecosystem

- [[projects/ai-wardrobe-india/entities/kya-pehne|Kya Pehne]] — direct ethnic-first competitor (iOS, released 2026-08-06, ₹100/mo premium)
- [[projects/ai-wardrobe-india/entities/pointai-my-wardrobe|PointAI My Wardrobe]] — physics-based VTO infrastructure powering Amazon/Flipkart/Myntra
- [[projects/ai-wardrobe-india/entities/myntra|Myntra]] — shopping-first (MyFashionGPT search, 8–12% creator affiliate)

## Related

- [[entities/gemini|Gemini]] — candidate stack: Flash-Lite ingestion/styling + Nano Banana 2 image gen
- [[entities/openai|OpenAI]] — gpt-5.6-luna as the budget text+vision routing option (~$0.0014/styling)
- [[concepts/model-ensemble-routing|Model Ensemble Routing]] — cheap-by-default / frontier-on-difficulty routing
- [[concepts/re-ranking|Re-ranking]] — candidate generation + ranker architecture
- [[concepts/recommendation-serving-cost|Recommendation Serving Cost]] — cost as the constraint that shapes architecture
- [[concepts/virtual-try-on|Virtual Try-On]] — VTO as a clear e-commerce product-market fit

## Sources

- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md` — market research, AI cost model, monetization (compiled 2026-08-15)
- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md` — design-session synthesis (2026-08-15)
