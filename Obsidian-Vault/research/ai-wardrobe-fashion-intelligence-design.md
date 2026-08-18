# AI Wardrobe — Fashion Intelligence & Design-Session Synthesis

> **Design-session synthesis, compiled 2026-08-15.** This document distills the core *design reasoning* of an AI wardrobe product conversation for Indian ethnic wear. It is a session-derived design artifact, not a market report: the hypotheses here are the conversation's design positions, not verified facts. Market figures it references come from the companion research note `ai-wardrobe-market-india.md` (pricing, competitor listings, affiliate rates). Treat every claim in this file as a design hypothesis unless explicitly labeled otherwise.

---

## 1. Wardrobe ingestion is one-time structured capture

- Each wardrobe image is ingested **once** into structured attributes (category, colour, fabric, pattern, occasion-fit, season) rather than being re-analyzed on every request.
- The original image, its embeddings, the extraction confidence, and any human corrections are all **retained** so the record can be re-derived and improved without re-running the whole pipeline.
- Ingestion cost is low and amortized, which is what makes "give bulk photo import away free" a safe onboarding move. ^[inferred]

## 2. Catalog data provides inventory, not taste

- Catalog/inventory data (what exists in a closet, what is in stock on a shopping site) tells you what items are *available*, not which combination is *right* for this person, on this occasion, in this place.
- Taste — the preference signal — is a separate layer that has to be learned per user and per occasion. Confusing "we know the inventory" with "we know what looks good on you" is the central failure mode to design against. ^[inferred]

## 3. Frontier models know garments but their fashion judgment is not automatically trustworthy

- Frontier multimodal models may recognize Indian garments and occasion vocabulary (saree, lehenga, sherwani, haldi, sangeet), so they are usable as a *knowledge* layer.
- But their fashion judgment is not automatically reliable or defensible — a confident-sounding outfit suggestion is not evidence it is tasteful, culturally appropriate, or even consistent with the user's own closet. Design must treat fashion advice as low-trust model output until proven otherwise.

## 4. Occasion knowledge cards give implicit context

- Occasion knowledge cards encode implicit context for Indian events: haldi, mehendi, sangeet, griha pravesh / housewarming, puja, reception, and similar.
- The card supplies what is "obviously" known to a human but rarely stated: what the event is, its typical dress code, season/weather relevance, regional variation, and what the user is likely deciding between. This is the substrate the outfit reasoner draws on rather than a hard rule engine.

## 5. Taste is multidimensional — not merely color matching

Taste spans at least these dimensions:

- **Color harmony** (palette-level, not single-color matching)
- **Silhouette / proportion**
- **Fabric**
- **Pattern density** (how busy a print is)
- **Visual weight** (heavy vs light garments, balance across the outfit)
- **Jewelry–neckline compatibility** (choker vs long neckline, earrings vs dupatta)
- **Occasion / formality / weather / regional / user context**

Reducing styling to color matching is a deliberate trap to avoid; the ranking signal must be a composition of these dimensions. ^[inferred]

## 6. Styling is candidate generation + pairwise/ranked selection

- Frame the styling problem as **candidate generation followed by pairwise or ranked outfit selection** — not a single "objectively correct" generated answer.
- Multiple plausible outfits exist for a given (closet, occasion, weather, user) tuple; the product's job is to present a small ranked set with reasons, and to learn from which ones the user picks.

## 7. Few-shot retrieval and the durable moat

- Few-shot retrieved examples can lift cheap models (a small model given a few good in-context examples performs closer to a large one on routine cases).
- The long-term moat is **Indian ethnic-fashion preference data and a specialized ranker** — not a prompt or a tool call. Prompts and tools are replicable; the taste dataset and the ranker trained on it are not.

## 8. Evaluation is behavior-based and disagreement-aware

Proposed evaluation design (hypotheses, not measurements):

- **Blinded human pairwise agreement** — humans compare two outfits blind; the system's ranking should agree with human preference.
- **Top-choice acceptance** — does the user pick the system's #1?
- **Top-3 success** — is the right outfit in the top three?
- **Constraint-violation rate** — how often does a suggestion break a hard constraint (wrong occasion, wrong weather, item not in closet)?
- **Paraphrase consistency** — same request phrased differently should give equivalent results.
- **Actual-wear feedback** — what the user actually wore (wear diary) as ground truth.
- **Explicitly preserve reviewer disagreement** — when human reviewers disagree, keep that as a probabilistic label rather than collapsing to a single "correct" answer.

## 9. Model routing: cheap models by default, frontier models on difficulty

- Route **cheap models** to routine, high-confidence cases (the majority of "what do I wear tomorrow" asks).
- Route **frontier multimodal models** to ambiguous, low-confidence, unknown, or premium cases (difficult visual reasoning, novel garments, high-stakes events).
- **Benchmark blind** and choose the cheapest model that passes the quality threshold — cost is a first-class selection criterion, not an afterthought.

## 10. Text-only rankers vs multimodal ranking

- Text-only rankers depend on rich extraction and can still miss **visual relations** (how a blouse sits with a skirt, how a print interacts with jewelry) that are only visible in the image.
- For difficult cases, the eventual direction is **multimodal ranking** — a ranker that sees the garments — rather than relying on text attributes alone. ^[inferred]

## 11. Cost example (time-sensitive estimate)

- Under the research note's gpt-5.6-luna prices ($0.20/M input, $1.20/M output) and a 4,000-input + 500-output token assumption for one styling interaction, each interaction costs **≈ $0.0014**, roughly **₹0.12**.
- **30 interactions ≈ ₹3.60.**
- Label: **time-sensitive estimate** based on Source A pricing (gpt-5.6-luna received an 80% price cut in Jul 2026 per the market note); recompute before reuse.

---

*End of design-session synthesis. Prepared 2026-08-15. Companion market data lives in `ai-wardrobe-market-india.md`.*
