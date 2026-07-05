---
title: "Annika and Aastha"
category: entities
tags:
  - speaker
  - robotics
  - nvidia
  - groot
  - physical-ai
  - humanoid
aliases:
  - Annika
  - Aastha
  - Asta
sources:
  - "AIEF2025 - What Is a Humanoid Foundation Model? An Introduction to GR00T N1 - Annika & Aastha - https://www.youtube.com/watch?v=mWKYvT9Lc50"
summary: "Two GR00T team members from Vidya who presented at AIEF2025 on the GR00T N1 humanoid foundation model, the data pyramid strategy, and the dual-system (System One / System Two) robotics architecture.
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: peripheral
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/vidya|Vidya]]"
    type: employed_by
  - target: "[[entities/nvidia-gr00t|NVIDIA Project GR00T]]"
    type: contributes_to
---

# Annika and Aastha

**Annika** and **Aastha** (also referred to as "Asta") are two GR00T team members from [[entities/vidya|Vidya]] who presented at AIEF2025 on the [[entities/nvidia-gr00t|GR00T N1]] humanoid foundation model.

## Annika

Annika opened the talk with framing around the Physical AI challenge: ^[extracted]

- McKinsey finding: 4.2x ratio of jobs-to-workers in advanced economies
- Industries at risk: leisure, hospitality, healthcare, construction, transportation, manufacturing
- These cannot be solved by ChatGPT alone — they require "operating instruments and devices in the physical world"
- Humanoid form is chosen for environmental compatibility, not aesthetics
- The data pyramid: real data (top), synthetic data (middle), internet data (bottom)
- DreamGen: data multiplication through world foundation models

## Aastha

Aastha presented on the GR00T N1 architecture: ^[extracted]

- System One / System Two dual-system design (inspired by Kahneman's *Thinking Fast and Slow*)
- Input pipeline: image observation + robot state + language prompt
- Output: robot action trajectory as floating-point joint vectors
- Noise-to-action learning paradigm
- System Two: slow planner; System One: fast executor at ~120 Hz

## Related

- [[entities/vidya|Vidya]] — Their employer
- [[entities/nvidia-gr00t|NVIDIA Project GR00T]] — The project they contributed to
- [[concepts/physical-ai|Physical AI]] — The challenge they framed
- [[concepts/data-pyramid|Data Pyramid]] — The data strategy they described
- [[concepts/system-one-system-two-robotics|System One / System Two Robotics]] — The architecture they explained
