---
title: "Web Trajectories and RL for Browsing"
category: concepts
tags: [web-trajectories, reinforcement-learning, computer-use-models, browsing, rl, training-data]
sources:
  - "AIEF2025 - The Web Browser Is All You Need - Paul Klein IV, Browserbase - https://www.youtube.com/watch?v=YRGjll7uu5w"
summary: "Training AI models on web trajectories via reinforcement learning to teach them not just which button to click, but how to reason across multiple pages toward a goal."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]]"
    type: related_to
  - target: "[[concepts/web-agent-vs-browser-tool|Web Agent vs Browser Tool]]"
    type: related_to
  - target: "[[concepts/computer-use-models|Computer-Use Models]]"
    type: extends
---
# Web Trajectories and RL for Browsing

Web trajectories are sequences of actions a model takes while browsing the web — clicks, scrolls, form fills, navigation — that can be used as training data for reinforcement learning. This approach teaches models not just to pick the right button on a page, but to reason across multiple pages about the right path to take. ^[extracted]

## The Approach

Previously, web agents used stock image models (general-purpose vision models) for browsing. The new approach trains specialized models on web trajectories:

1. **Collect trajectories**: Record sequences of browser actions during successful browsing tasks
2. **Reinforcement learning**: Train models to maximize the probability of successful task completion
3. **Multi-page reasoning**: Models learn to plan across pages, not just react to individual pages ^[extracted]

## Why It Matters

Stock models are good at single-page tasks but struggle with multi-step, cross-page reasoning. Training on web trajectories gives models:
- Understanding of web navigation patterns
- Ability to plan ahead across pages
- Better error recovery when a page doesn't behave as expected ^[inferred]

## Related Papers

Paul recommends papers on web trajectories and RL for browsing (linked in the talk). This is an active research area with several groups publishing on the topic. ^[extracted]

## Related Pages

- [[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]] — Agent types that use browsing
- [[concepts/web-agent-vs-browser-tool|Web Agent vs Browser Tool]] — Web agents benefit from trajectory training
- [[concepts/computer-use-models|Computer-Use Models]] — Models trained specifically for computer use
- [[entities/paul-klein-iv|Paul Klein IV]] — Speaker who referenced this research area
