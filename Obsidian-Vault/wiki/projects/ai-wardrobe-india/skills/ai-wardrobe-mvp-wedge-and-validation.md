---
title: AI Wardrobe MVP Wedge & Validation
category: skills
tags:
- mvp
- validation
- wardrobe-app
- india
- product-strategy
aliases:
- wardrobe MVP wedge
- wardrobe validation plan
sources:
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md
summary: The recommended MVP wedge ("Kya pehne, kab, kahan?") and 90-day low-burn validation plan for an Indian ethnic-first AI wardrobe app — occasion-first asks, free ingestion, metered try-on previews.
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.44
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# AI Wardrobe MVP Wedge & Validation

The recommended MVP wedge and validation plan from the 2026-08 market research: build a **closet-first, Indian-occasion-first** MVP and validate willingness-to-pay before scaling. ^[extracted]

## The Wedge ("Kya pehne, kab, kahan?")

1. **Closet ingestion that respects ethnic garments** — bulk photo import; cloud VLM extracts category (saree/blouse/petticoat/lehenga/choli/kurta/salwar/dupatta/sherwani), colour, fabric, pattern, occasion-fit, season; auto-crop background. *Give this free* (cost ≈ $0.03–0.17 per user one-time).
2. **Occasion-first "Ask"** — "What should I wear to a sangeet in Mumbai next week (28°C, outdoor)?" → outfit from *your own* closet + reasoning (colour logic, occasion fit, unworn items) → a small number of "wear this" image previews via **Nano Banana 2** (user selfie + garment refs), **metered** (e.g., 5 previews/mo free, then ₹/credit), since image gen is the dominant cost driver.
3. **Wear diary + repeat-proofing** — log what you wore (photo + note), calendar, "don't repeat at the next shaadi" reminders. This is the retention/memory moat no shopping platform builds.
4. **Care & repair + packing** — cheap utility features matching Kya Pehne; low AI cost.
5. **Distribution** — Android-first (India ~95% Android share [estimate]), then iOS; UPI/Paytm IAPs; Hindi + vernacular; WhatsApp/ShareChat creator loop.

## Cost-Control Architecture

- **Tier 0 – On-device (zero marginal cost):** Gemma/Qwen3-VL-2B/SmolVLM or Android Gemini Nano (AICore) for coarse garment tagging and image description; cloud fallback when offline/unsupported.
- **Tier 1 – Cheap cloud VLM:** Gemini 2.5/3.5 Flash-Lite (or gpt-5.6-luna) for structured attribute extraction and daily styling; context caching for static wardrobe context.
- **Tier 2 – Image gen (paid-only, metered):** Nano Banana 2 Lite for drafts; Nano Banana 2 for "user wearing outfit" with selfie + garment references.
- **Guardrails:** cap free image gens/serverless quota; abuse detection on bulk ingestion; privacy-first copy (photos never used for training on paid tier).

This tiering is the concrete realization of cheap-by-default routing from [[concepts/model-ensemble-routing|Model Ensemble Routing]]. ^[inferred]

## Validation Plan (90 days, low burn)

1. **Landing + waitlist** (2 wks): value-prop centered on "never repeat an outfit at a wedding again"; target 500–1,000 waitlist.
2. **Concierge MVP** (4 wks): manually curate 20–30 beta users' wardrobes (photos → tags → occasion outfits) to validate *outfit quality* and *occasion taxonomy* before automating; price-ladder "would you pay ₹X" (₹99/149/299).
3. **Automated MVP** on Gemini Flash-Lite + Nano Banana 2 (6 wks): measure ingestion accuracy on 100 real Indian garments (saree/lehenga/sherwani failure modes), styling acceptance rate, retention (D7/D30 wear-diary logging), and image-preview conversion.
4. **Gate check:** if ≤30% of users create an occasion-based ask in week 1 or D30 retention <20%, pivot messaging from "digital closet" to "occasion wear advisor".
5. **Paid pilot** (₹149/mo, 100 users) to prove willingness-to-pay and measure real AI cost/user against the unit-economics model before fundraising.

## Related

- [[projects/ai-wardrobe-india/concepts/ai-wardrobe-unit-economics|AI Wardrobe Unit Economics]] — the cost model this plan prices against
- [[projects/ai-wardrobe-india/entities/kya-pehne|Kya Pehne]] — competitor whose free/premium split anchors pricing
- [[concepts/indian-ethnic-occasion-taxonomy|Indian Ethnic Occasion Taxonomy]] — the occasion semantics the MVP tests
- [[concepts/outfit-ranker-evaluation|Outfit Ranker Evaluation]] — the metrics the concierge phase starts collecting
- [[projects/ai-wardrobe-india/ai-wardrobe-india|AI Wardrobe India]] — project overview

## Sources

- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md` — §9–11 (assessment, MVP wedge, validation plan)
