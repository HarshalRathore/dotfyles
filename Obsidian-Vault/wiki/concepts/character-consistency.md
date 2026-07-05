---
title: "Character Consistency"
category: concepts
tags:
  - consistency
  - video-generation
  - characters
  - lip-sync
aliases:
  - Character Identity
  - Character Control
sources:
  - "AIEF2025 - Veo 3 for Developers — Paige Bailey, Google DeepMind - https://www.youtube.com/watch?v=hlcAZ2lX_ZI"
summary: "The capability to maintain a character's identity, appearance, and movement across video frames — including mouth movement control, reference-space movement control, and lip-sync to audio scripts."
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
  - target: "[[concepts/visual-consistency|Visual Consistency]]"
    type: extends
  - target: "[[entities/veo-2|Veo 2]]"
    type: related_to
---

# Character Consistency

Character consistency is the capability to maintain a specific character's identity, appearance, and movement across frames in generated video. It encompasses mouth movement control, reference-space movement, and lip-sync to audio.

## Capabilities (Veo 2)

- **Mouth movement control** — Characters' mouths move in sync with generated or provided audio
- **Reference-space movement** — Characters maintain their position and orientation relative to the scene
- **Lip-sync to audio scripts** — Characters can be given a script and voice tone, then map their lips to produce sound consistent with the scene location
- **Reference-powered character control** — A reference image of a character can be used to maintain identity across generated frames

## Importance

Character consistency is critical for:
- Narrative video generation (stories with recurring characters)
- Advertising and marketing content
- Educational and training videos
- Any application requiring recognizable, stable characters

## Related

- [[concepts/visual-consistency|Visual Consistency]] — Broader category
- [[entities/veo-2|Veo 2]] — Model with character control features
- [[concepts/reference-powered-generation|Reference-Powered Generation]] — Technique for character identity
