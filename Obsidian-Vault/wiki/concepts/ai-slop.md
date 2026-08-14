---
title: AI Slop
category: concepts
tags: [ai-slop, ai-detection, substack, content-quality, deception]
sources:
  - "https://x.com/i/status/2080171634103840976"
summary: "Low-quality AI-generated content flooding platforms; Substack's Pangram war on it; 'workslop' in workplaces; Chris Best's 'Claudefishing' deception frame."
provenance:
  extracted: 0.60
  inferred: 0.30
  ambiguous: 0.10
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: "2026-08-14"
tier: supporting
created: "2026-08-14T00:00:00Z"
updated: "2026-08-14T00:00:00Z"
relationships:
  - target: "[[concepts/ai-writing-tells]]"
    type: related_to
  - target: "[[entities/substack]]"
    type: related_to
---

# AI Slop

**AI slop** = low-quality, mass-produced AI-generated content that floods platforms and workplaces. The term carries a quality judgment, not just an origin judgment — lazy prompting ("an incorrect use of AI") produces the stereotypical style cataloged in [[concepts/ai-writing-tells]]. ^[extracted]

## The platform war (2026-07)

- [[entities/substack|Substack]]'s CEO [[entities/chris-best|Chris Best]] announced a [[entities/pangram|Pangram]] AI scan built into the Substack app: "we're sick of slop and we don't want substack to turn into LinkedIn" — positioning LinkedIn as the cautionary example. ^[extracted]
- A 2025 study (uncited in the article) estimated **53.7% of long-form LinkedIn posts (100+ words) were AI-generated**. ^[extracted] ^[ambiguous]

## Workslop

**Workslop** — AI slop inside work: when a teammate's lazy AI draft becomes your job to decode, guess what they meant, rewrite, or return. The word for the hidden tax AI-generated drafts impose on colleagues. ^[extracted]

## Claudefishing

**Claudefishing** (Chris Best's coinage) — "the deception when you think you're getting a human connection but there's no one on the other end": AI-mediated social interaction presented as human. Best's frame: "The problem is not people using AI, it's Claudefishing." ^[extracted]

## Detection limits (why the war is unwinnable at the text level)

- Detectors are pattern-matching machines over overlapping distributions; humans write robotic text and AI writes natural text. ^[extracted]
- Short text gives detectors almost nothing — one-line texts are effectively undetectable. ^[extracted]
- Style prompting (e.g. ADS-STE100 Simplified Technical English) moves the output outside the trained "AI text" distribution. ^[extracted]
- [[entities/andrej-karpathy|Andrej Karpathy]]: detectors "can be defeated in various ways, and are in principle doomed to fail". ^[extracted]
- [[references/how-to-bypass-ai-detectors|Ruben Hassid's test]]: a single em dash → colon edit flipped Pangram's verdict from 100% AI to 100% human. ^[extracted]

## 2026-08-14: source note

This page is distilled from the Ruben Hassid X Article ([[misc/web-x-com-i-status-2080171634103840976]]). It does not yet cover the PostHog "stop AI slop" eval perspective — that lives at [[misc/web-posthog-com-blog-stop-ai-slop|Stop AI slop (PostHog)]] and covers product-quality evals rather than writer-side tells. ^[inferred]

## Related

- [[concepts/ai-writing-tells]] — the recognizability side of slop
- [[entities/substack]] · [[entities/pangram]] · [[entities/chris-best]] — the platform war
- [[skills/anti-ai-skill]] — an instrument of the bypass side
