---
title: LIFE Leaderboard
category: concepts
tags: [evaluations, benchmarking, leaderboard, production-telemetry, real-world-evaluation]
aliases: [LIFE Leaderboard, Life Leaderboard, real-world AI leaderboard]
relationships:
  - target: '[[concepts/agent-arena]]'
    type: related_to
  - target: '[[concepts/agent-evaluation-pipeline]]'
    type: part_of
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A real-world evaluation leaderboard powered by 10 million users and 700 million traces, ranking frontier models across text, image, video, code, and agent capabilities — achieving 100M ARR in 8 months.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# LIFE Leaderboard

**LIFE Leaderboard** is a real-world evaluation platform presented at the AI Engineer World's Fair 2026. It ranks frontier AI models based on actual user interactions — 10 million users producing 700 million traces across text, image, video, code, and agent modalities. ^[extracted]

## Scale and Business Impact

- **100M ARR** achieved in just **8 months** after releasing the evaluation product
- **10 million users** contributing evaluations
- **700 million traces** collected — one of the largest agent evaluation datasets
- Ranked among the top GenAI products globally by unique monthly visitors (ACS&Z analysis) ^[extracted]

## Coverage

The leaderboard evaluates models across five modalities: ^[extracted]

1. **Text** — language understanding and generation
2. **Image** — visual recognition and generation
3. **Video** — video understanding and generation
4. **Code** — programming and software engineering
5. **Agent** — autonomous task completion

This multi-modal coverage enables users to find the best model for any specific use case. ^[inferred]

## Differentiator

Unlike controlled benchmarks, LIFE Leaderboard is based on **real-world evaluations** — actual users performing real tasks. This provides a more reliable signal for model selection than synthetic benchmarks. ^[extracted]

## Related

- [[concepts/agent-evaluation-pipeline|Agent Evaluation Pipeline]] — the pipeline LIFE Leaderboard implements
- [[concepts/evaluate-pyramid|Evaluation Pyramid]] — the framework for multi-level evaluation
- [[concepts/agent-arena|Agent Arena]] — another large-scale agent evaluation platform
- [[concepts/agent-as-judge|Agent as Judge]] — using agents to evaluate other agents
- [[concepts/eval-scoring-flywheel|Eval Scoring Flywheel]] — how evaluation drives model improvement

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
