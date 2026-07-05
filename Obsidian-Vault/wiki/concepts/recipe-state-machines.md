---
title: "Recipe State Machines"
category: concepts
tags:
  - cooking
  - state-machines
  - recipe-execution
  - food-perception
  - robotics
  - foundation-models
summary: Modeling recipes as state machines driven by thermal and visual embeddings, where each state transition depends on the current sensory state of the food rather than a fixed time schedule.
sources:
  - "[[sources/watchv=mbwgiwjdlso]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.84
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/robotic-culinary-automation]]"
    type: uses
  - target: "[[concepts/thermal-computer-vision]]"
    type: uses
  - target: "[[concepts/robot-foundation-models]]"
    type: related_to
---

Recipe state machines are a computational model for cooking where a recipe is represented as a finite state machine, with transitions driven by the current sensory state of the food rather than fixed timers or step sequences.

In traditional cooking programs, steps are time-based: "cook for 7 minutes, then add onions." In CloudChef's system, transitions depend on the food's actual state as perceived by thermal and visual embeddings — "are the onions brown enough?" is the condition for transitioning from one state to the next.

This approach addresses the fundamental variability of cooking ingredients:

- **Ingredient variation across time.** "Onions today might require seven minutes to sauté. It'll require nine minutes to sauté tomorrow." A fixed-time approach fails here; a state-based approach adapts.
- **Ingredient variation across batches.** Different onions, different moisture content, different sugar levels — all affect caramelization speed.
- **Appliance variation.** Different stoves, different pan materials, different heat distributions.
- **Portion size variation.** Cooking 2 servings vs 20 servings in the same pan changes heat dynamics.

The state machine is driven by "embedding models at the core" — the thermal and visual perception models that CloudChef trained on hundreds of thousands of live-cooked meals. These embeddings provide a continuous representation of food state that the state machine uses to determine when to transition between recipe steps.

CloudChef has more than 1,000 recipes modeled as state machines across a mix of cuisines.
