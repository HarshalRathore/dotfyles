---
title: Indian Ethnic Occasion Taxonomy
category: concepts
tags:
- india
- ethnic-wear
- occasions
- fashion-taxonomy
- context
aliases:
- occasion knowledge cards
- Indian occasions
- haldi mehendi sangeet taxonomy
relationships:
- target: "[[concepts/fashion-taste-dimensions]]"
  type: uses
- target: "[[concepts/closet-first-wardrobe-memory]]"
  type: related_to
sources:
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md
summary: The Indian ethnic-wear occasion system — haldi, mehendi, sangeet, griha pravesh, puja, reception — encoded as knowledge cards supplying implicit dress-code and context for outfit reasoning.
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Indian Ethnic Occasion Taxonomy

The Indian occasion system is the product wedge for an ethnic-first wardrobe app: weddings and festivals are high-spend, high-decision-anxiety moments where outfit advice is most valuable. The taxonomy names the occasions (haldi, mehendi, sangeet, griha pravesh / housewarming, puja, reception, shaadi, Diwali) and the garments that map to them (saree, salwar suit, kurta, lehenga, sherwani, dupatta). ^[extracted]

## Occasion Knowledge Cards

Occasion knowledge cards encode implicit context that a human already knows but a system must be told: what the event is, its typical dress code, season/weather relevance, regional variation, and what the user is likely deciding between. They supply the "obvious" context for reasoning rather than acting as a hard rule engine. ^[extracted]

- **Haldi** — daytime, yellow-heavy palette, informal, often outdoor
- **Mehendi** — daytime, bright/printed, green-heavy informal
- **Sangeet** — evening, performance-ish, festive and heavier than mehendi
- **Griha pravesh / housewarming** — religious + social, regionally varied formality
- **Puja** — religious, modest/covered, region-specific
- **Reception** — formal evening, heavier embellishment than sangeet

The specific palette/weight cues above are illustrative readings of the occasion list, not vendor-published rules. ^[ambiguous]

## Why It Matters

The market research positions occasion-wear decisions as the wedge "where Indians already spend a lot and feel decision anxiety"; the design session makes the occasion the primary axis the outfit reasoner draws on, with weather/location/regional/user context as modifiers. ^[extracted]

## Related

- [[concepts/fashion-taste-dimensions|Fashion Taste Dimensions]] — occasion/formality/weather/regional context is one dimension of taste
- [[concepts/closet-first-wardrobe-memory|Closet-First Wardrobe Memory]] — the wardrobe layer this taxonomy animates
- [[concepts/outfit-ranking-vs-outfit-generation|Outfit Ranking vs Generation]] — the reasoning frame that consumes occasion context
- [[projects/ai-wardrobe-india/entities/kya-pehne|Kya Pehne]] — ships occasion features (office/sangeet/mehendi/haldi/puja/Diwali) as a direct competitor
- [[projects/ai-wardrobe-india/references/ai-wardrobe-market-india-2026-08|AI Wardrobe Market India (2026-08)]] — market evidence for the wedge

## Sources

- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-market-india.md` — occasion list and wedge evidence
- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md` — occasion knowledge-card design
