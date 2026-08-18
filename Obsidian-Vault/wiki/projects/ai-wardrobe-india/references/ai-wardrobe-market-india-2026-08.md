---
title: AI Wardrobe Market India (2026-08)
category: references
tags:
- market-research
- india
- wardrobe-app
- ethnic-wear
- virtual-try-on
- affiliate-marketing
aliases:
- AI Wardrobe Market Research
- ai-wardrobe-market-india-2026-08
sources:
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md
summary: Distillation of the 2026-08-15 market research on AI wardrobe apps in India — competitor landscape, Kya Pehne, PointAI, affiliate economics, AI unit costs, MVP wedge, and risks.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.44
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# AI Wardrobe Market India (2026-08)

Deep-dive of the market research compiled 2026-08-15 for an AI wardrobe app targeting Indian users with Indian ethnic-wear support. The research source verifies competitor listings, pricing, and AI model costs from primary sources (App Store/Play APIs, official pricing pages, news); vendor user-count claims remain unverified marketing. ^[extracted]

## Headline Findings

- The global category (Whering, Acloset, Indyx, Cladwell, Stylebook, Alta, OpenWardrobe, Combyne, Fits, Style DNA) is a collection of modest apps — **none treat Indian ethnic wear as a first-class citizen**. ^[extracted]
- [[projects/ai-wardrobe-india/entities/kya-pehne|Kya Pehne]] is the highest direct competitor: brand-new (iOS, released 2026-08-06), solo-dev scale, ethnic-first, ₹100/mo premium intro — the wedge is open but time-sensitive. ^[extracted]
- Adjacent VTO/shopping players ([[projects/ai-wardrobe-india/entities/pointai-my-wardrobe|PointAI]], Google Virtual Apparel Try-On India, [[projects/ai-wardrobe-india/entities/myntra|Myntra]]) are **shop-first, not closet-first** — the wardrobe-memory + taste-profile moat is unclaimed. ^[extracted]
- AI unit economics are excellent: ingestion ≈ $0.0002–0.001/item, styling ≈ $0.001–0.003, image gen $0.034–0.10/image → ~$0.03–2.80/user/month depending on tier, far below plausible subscriptions (₹100–1,000/mo). ^[extracted]
- Affiliate monetization is real but modest in India: Flipkart 8% on Fashion & Lifestyle, Myntra creator affiliate 8–12%; Amazon.in rates not itemized. Fashion returns claw back commissions, so affiliate is a complement, not a revenue model. ^[extracted]

## Verified vs Estimated (as labeled in the source)

- **Verified (primary sources):** all competitor app listings/prices/ratings; Kya Pehne existence and free/premium split; PointAI funding and launch (LiveMint 2026-07-21); Google VTO India launch (2025-12-03, excludes ethnic wear); Myntra MyFashionGPT and affiliate rates; Gemini API + Nano Banana per-image pricing; gpt-5.6-sol/terra/luna and gpt-image-2 pricing; Flipkart 8%; Gemini Nano on-device.
- **Estimates:** token counts per garment/interaction; engagement tiers; storage bytes; AOVs; affiliate conversion/return rates; Amazon.in commission range; Gemini free-tier RPM/RPD; all vendor user counts (Whering 9–10M, Acloset 7M, Style DNA 3M, Alta "TIME Best Invention 2025").

## Cost Model (key numbers)

- Token assumption: garment photo ≈ 400 in / 400 out tokens; styling interaction ≈ 4,000 in / 500 out.
- Ingestion/item: 3.5 Flash-Lite $0.00112; 2.5 Flash-Lite $0.00020.
- Styling/interaction: Gemini 3.5 Flash-Lite $0.00245 (≈$0.00137 cached); gpt-5.6-luna ≈ $0.0014.
- Per-user/month: Light ~$0.03–0.08; Standard ~$0.45–0.75 (5 images); Heavy ~$1.60–2.80 (100 interactions + 20 images).
- Storage/embeddings/vector search are noise at seed stage; **AI text+vision is ~90%+ of marginal cost, and images dominate the paid tiers**. ^[extracted]

## Recommended MVP Wedge (from the source)

Closet-first, Indian-occasion-first: bulk photo ingestion that respects ethnic garments (saree/blouse/petticoat/lehenga/choli/kurta/salwar/dupatta/sherwani), occasion-first "Ask" (e.g., "what should I wear to a sangeet in Mumbai next week, 28°C, outdoor?"), wear diary + repeat-proofing, care/repair + packing utilities, Android-first distribution. Free tier: 50 items / 10 stylings / 5 metered image previews; Premium ₹149–299/mo hypothesis. See [[projects/ai-wardrobe-india/skills/ai-wardrobe-mvp-wedge-and-validation|AI Wardrobe MVP Wedge & Validation]].

## Risks

Platform absorption (Google/Myntra shipping closet+memory), Kya Pehne/clones firming up the space in ~6–12 months, image-gen fidelity on saree draping/pallu unproven, willingness-to-pay unproven (Kya Pehne ₹100/mo is the only local price point), and DPDP privacy/consent architecture for body/selfie photos. ^[extracted]

## Related

- [[projects/ai-wardrobe-india/ai-wardrobe-india|AI Wardrobe India]] — project overview
- [[concepts/ai-virtual-tryon-landscape|AI Virtual Try-On Landscape]] — VTO player ecosystem
- [[concepts/indian-ethnic-occasion-taxonomy|Indian Ethnic Occasion Taxonomy]] — occasion/garment semantics
- [[projects/ai-wardrobe-india/concepts/ai-wardrobe-unit-economics|AI Wardrobe Unit Economics]] — the cost model in detail
- [[concepts/closet-first-wardrobe-memory|Closet-First Wardrobe Memory]] — the unclaimed memory layer

## Sources

- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md` — original research note, compiled 2026-08-15 (app store APIs, official pricing pages, Bing News RSS, Hugging Face metadata)
