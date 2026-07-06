---
title: "Planning in Reasoning Models"
category: concepts
tags: [reasoning-models, planning, strategy, abstraction, inference-time-compute, aief2025]
aliases: [planning, model planning, reasoning planning]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "The frontier of reasoning model capabilities: strategy (choosing the right direction), abstraction (breaking problems into tractable sub-tasks), and parallel compute. Planning is the next frontier beyond skills."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-06
updated: 2026-07-06
relationships:
  - target: "[[concepts/reasoning-models|Reasoning Models]]"
    type: applies_to
  - target: "[[concepts/calibration|Calibration in Reasoning Models]]"
    type: relates_to
  - target: "[[concepts/skill-acquisition-efficiency|Skill Acquisition Efficiency]]"
    type: extends
---

# Planning in Reasoning Models

**Planning** is the next frontier for reasoning models beyond basic skills. It encompasses strategy (choosing the right direction), abstraction (breaking problems into tractable sub-tasks), and parallel compute (calling multiple models in parallel). ^[extracted]

## Nathan Lambert's Taxonomy of Planning Traits

Nathan Lambert (AI2) proposed a taxonomy at AI Engineer World's Fair 2025: ^[extracted]

### 1. Skills (Already Achieved)
- Mapping code, math problem solving, tool use
- Inference-time scaling was useful but capabilities become more researchy over time
- These are low-level skills that continue to improve

### 2. Calibration
- Models overthink dramatically — need to calibrate output tokens relative to problem difficulty
- Critical for product usability as inference costs increase

### 3. Strategy (New Frontier)
- Going in the right direction and knowing different things to try
- Hard for LLMs to change course — they can backtrack a little but restarting their plan is difficult
- Current models (e.g., deepseek r1-0528) go straight into solving without sketching the problem first
- This wastes 10–40K tokens and potentially multiple dollars

### 4. Abstraction (New Frontier)
- The model must choose how to break down a problem into tractable sub-tasks
- Currently humans do this; for very hard tasks, models need to do it natively
- Requires the model to make plans with sub-tasks that are actually tractable, or call a bigger model

## Planning vs. Skills

- **Skills** are about doing the right thing at the right level
- **Planning** is about organizing what to do and when
- O3 is extremely skilled at search but lacks planning in deep research — sometimes a masterpiece, sometimes a dud
- Better planning would make deep research more thorough and reliable

## Implementation Considerations

- **Memory management** — Claude Code compresses memory when context fills; we don't know if this is optimal
- **Parallel compute** — o1 pro and o3 pro use parallel compute to make solutions more robust
- **Human effort** — skills like backtracking and verification required 12–18 months of human data from OpenAI (QStar → Strawberry → o1)
- Planning outputs are more intuitive to collect from humans than reasoning traces

## The Provocation: Training vs. Post-Training

- o1 was ~1% of compute post-training relative to pre-training
- o3 increased post-training compute by 10×
- DeepSeek v3 used 0.18% of compute on post-training; R1 training took weeks
- Scaling RL is real — soon parity between pre-training and post-training compute is possible ^[inferred]

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
