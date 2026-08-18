---
title: Fashion Taste Dimensions
category: concepts
tags:
- fashion
- taste
- styling
- color-harmony
- personalization
aliases:
- taste dimensions
- styling dimensions
- outfit aesthetics
relationships:
- target: "[[concepts/outfit-ranking-vs-outfit-generation]]"
  type: related_to
- target: "[[concepts/indian-ethnic-occasion-taxonomy]]"
  type: uses
sources:
- /home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md
summary: The multidimensional structure of fashion taste — color harmony, silhouette, fabric, pattern density, visual weight, jewelry–neckline fit, occasion/weather/regional context — not color matching.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Fashion Taste Dimensions

Fashion taste, as framed by the AI-wardrobe design session, spans at least these dimensions — and reducing it to color matching is a deliberate trap to avoid. ^[extracted]

- **Color harmony** — palette-level relationships, not single-color matching
- **Silhouette / proportion** — how the garment shapes the body line
- **Fabric** — drape, weight, texture
- **Pattern density** — how busy a print is
- **Visual weight** — heavy vs light garments and how they balance across the outfit
- **Jewelry–neckline compatibility** — choker vs long neckline, earrings vs dupatta
- **Occasion / formality / weather / regional / user context** — the situation envelope that constrains everything above

The ranking signal must be a composition of these dimensions rather than a single attribute score. ^[inferred]

## Implication for Ranker Design

Because taste is multidimensional and partly visual (how a blouse sits with a skirt, how a print interacts with jewelry), the design session argues text-only rankers depend on rich extraction and still miss visual relations — so difficult cases eventually need a multimodal ranker that sees the garments. ^[extracted]

## Related

- [[concepts/outfit-ranking-vs-outfit-generation|Outfit Ranking vs Generation]] — the ranking frame this taste model feeds
- [[concepts/indian-ethnic-occasion-taxonomy|Indian Ethnic Occasion Taxonomy]] — the occasion/context dimension
- [[concepts/outfit-ranker-evaluation|Outfit Ranker Evaluation]] — measuring whether the ranker's taste agrees with humans
- [[concepts/multimodal-models|Multimodal Models]] — the models that can see garments directly
- [[concepts/closet-first-wardrobe-memory|Closet-First Wardrobe Memory]] — the layer that accumulates per-user taste

## Sources

- `/home/harshal/dotfyles/Obsidian-Vault/research/ai-wardrobe-fashion-intelligence-design.md` — design-session synthesis (2026-08-15)
