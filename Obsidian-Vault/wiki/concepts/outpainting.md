---
title: "Outpainting"
category: concepts
tags:
  - outpainting
  - image-expansion
  - video-generation
  - composition
aliases:
  - Out Paint
sources:
  - "AIEF2025 - Veo 3 for Developers — Paige Bailey, Google DeepMind - https://www.youtube.com/watch?v=hlcAZ2lX_ZI"
summary: "The technique of extending a scene or frame beyond its original boundaries, generating content that matches the original view — enabling expansion of narrow views into wider scenes."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/veo-2|Veo 2]]"
    type: related_to
  - target: "[[concepts/reference-powered-generation|Reference-Powered Generation]]"
    type: related_to
---

# Outpainting

Outpainting is the technique of extending a scene or frame beyond its original boundaries, generating content that is visually consistent with the original view. It enables the expansion of narrow or cropped views into wider, more complete scenes.

## How It Works

Given a scene or individual frame of a video:
1. The model analyzes the existing content (composition, style, lighting, perspective)
2. It generates plausible content that extends the scene in the desired direction(s)
3. The extended content maintains visual consistency with the original

## Use Cases

- **Cinematography** — Expand a tightly framed shot into a wider establishing shot
- **Wizard of Oz sphere project** — Used for a project involving the sphere around Wizard of Oz, extending scene boundaries ^[extracted]
- **Content reformatting** — Adapt content for different aspect ratios
- **Creative exploration** — Imagine what exists outside the current frame

## Related

- [[entities/veo-2|Veo 2]] — Model with outpainting capability
- [[concepts/reference-powered-generation|Reference-Powered Generation]] — Related conditioning technique
- [[concepts/inpainting|Inpainting]] — Complementary technique (filling in missing regions)
