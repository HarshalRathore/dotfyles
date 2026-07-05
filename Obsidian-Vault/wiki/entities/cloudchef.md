---
title: "CloudChef"
category: entities
tags:
  - company
  - robotics
  - cooking
  - automation
  - ai
  - aief2025
  - food-tech
  - commercial-kitchen
summary: CloudChef builds wheeled two-arm robots deployed in real commercial kitchens, using thermal/RGB perception and foundation models to cook 1000+ recipes autonomously.
sources:
  - "[[sources/watchv=mbwgiwjdlso]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/nikhil-abraham]]"
    type: related_to
  - target: "[[concepts/robotic-culinary-automation]]"
    type: related_to
  - target: "[[concepts/thermal-computer-vision]]"
    type: related_to
  - target: "[[concepts/robot-foundation-models]]"
    type: related_to
  - target: "[[concepts/wheeled-robotics-over-humanoids]]"
    type: related_to
---

CloudChef is a robotics company founded by [[entities/nikhil-abraham|Nikhil Abraham]] and a small, fast-growing team. The company's mission is to make high-quality, nutritious food affordable by automating all commercial kitchen labor.

CloudChef's core product is a wheeled robot with two arms, deployed in real commercial kitchens. The robot is described as being hired at hourly wages around $12/hour, with no overtime, no turnover, and no sick days. It can plug into any arbitrary novel kitchen and learn new recipes from a single expert demonstration.

The system is approximately 95% autonomous and 5% teleoperated. It handles ingredient variation, appliance variation, and arbitrary portion sizes. CloudChef claims the robot "does better than even expert chefs in their cuisine of training" on live-cooking state estimation benchmarks.

The company collects proprietary data by installing sensors in active commercial kitchens — hundreds of thousands of live-cooked meals across recipes, cuisines, and seasons. This data is used to train culinary-specific thermal and visual perception models.

CloudChef is actively hiring in software, ML, and robotics.
