---
title: Roboflow
category: entities
tags: [company, computer-vision, ml-platform, open-source, vision-models, aief2025]
summary: Platform for building and deploying vision models. Created RF100VL benchmark and RF-DeTter detection transformer. Maintains Roboflow Universe with ~750k datasets.
sources:
  - "[[sources/watchv=iqc05ecvnye]]"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vision-language-models|vision-language-models]]"
    type: related_to
  - target: "[[concepts/rf100vl|rf100vl]]"
    type: related_to
  - target: "[[concepts/object-detection-transformers|object-detection-transformers]]"
    type: related_to
---

Roboflow is a platform for building and deploying vision models. The company maintains [[entities/roboflow-universe|Roboflow Universe]], an open-source collection of approximately 750,000 datasets used for training computer vision models.

Roboflow's strategy centers on making their platform freely available to researchers, particularly in medical and biological domains, with the expectation that contributors return their data to the community as open-source datasets. Many datasets on the platform originate from papers cited in Nature and similar publications.

The company created [[concepts/rf100vl|RF100VL]], a benchmark dataset designed to measure the domain adaptability and visual intelligence of object detection models beyond what COCO can capture. They also developed [[concepts/rf-detter|RF-DeTter]], a real-time object detection model that uses DINOv2 as its pre-trained backbone.

Roboflow's website for RF100VL is available at RF100VL.org, which hosts the archive paper, code utilities for dataset download, and the dataset is also available on Hugging Face.
