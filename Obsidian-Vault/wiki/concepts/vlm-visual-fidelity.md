---
title: VLM Visual Fidelity Gap
category: concepts
tags: [vlm, visual-fidelity, visual-generalization, linguistic-generalization, multimodal, grounding-dino]
summary: Current VLMs excel at linguistic generalization but fail at visual generalization — they can understand novel class names in text but cannot detect those objects visually without extensive fine-tuning.
sources:
  - "[[sources/watchv=iqc05ecvnye]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vision-language-models|vision-language-models]]"
    type: extends
  - target: "[[concepts/clip-limitations|clip-limitations]]"
    type: related_to
  - target: "[[concepts/rf100vl|rf100vl]]"
    type: related_to
---

Visual language models exhibit a fundamental asymmetry: they are excellent at generalizing out-of-distribution in the linguistic domain but "absolutely hopeless" at generalizing in the visual domain.

On [[concepts/rf100vl|RF100VL]], a YOLOv8 model trained from scratch on just 10 examples per class outperforms Qwen2.5-VL-72B — a 72-billion-parameter state-of-the-art visual language model. This is a stark demonstration that parameter count and linguistic capability do not translate to visual detection ability.

**The grounding problem**: [[concepts/grounding-dino|Grounding DINO]] benchmarks on RF100VL show:
- Zero-shot Grounding DINO: ~19 mAP average (decent but not great)
- Fine-tuned Grounding DINO with federated loss: highest performing model on the dataset (~25+ mAP)
- YOLOv8 Nano fine-tuned from scratch on 10-shot examples: ~25 mAP (worse than fine-tuned Grounding DINO but better than zero-shot)

The implication is that current VLMs cannot leverage the rich visual features they should have from pre-training. They understand the word "fibrosis" or "volleyball block" linguistically but cannot visually detect these concepts without extensive task-specific fine-tuning.

The open challenge is building VLMs that can leverage annotator instructions, visual examples, and class names simultaneously — no existing model can use all three inputs to outperform any single one alone. This requires a "genuine model" that bridges the gap between visual and linguistic understanding.
