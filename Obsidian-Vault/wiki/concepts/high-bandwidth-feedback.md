---
title: High-Bandwidth Feedback
category: concepts
tags:
  - feedback
  - user-research
  - product-development
  - metrics
  - observation
summary: High-quality, high-bandwidth feedback from real users — through direct observation, personal relationships, and deep engagement — rather than surface-level metrics and dashboards. The difference between quantitative signals and qualitative understanding.
sources:
  - AIEF2025 - Shipping something to someone always wins — Kenneth Auchenberg (ex. Stripe, VSCode) - https://www.youtube.com/watch?v=mHzJhXppwUA
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/rapid-iteration-loop]]"
    type: extends
  - target: "[[concepts/llm-evaluation-framework]]"
    type: related_to
---

## Definition

High-bandwidth feedback is qualitative, high-signal user feedback obtained through direct observation, personal relationships, and deep engagement — as opposed to surface-level quantitative metrics pulled from dashboards. It provides the kind of understanding that helps you know how things are really going, not just that things are going.

## The Contrast

Kenneth Auchenberg draws a sharp distinction between two approaches:

- **Low-bandwidth**: "Slap on some metrics and pull the dashboard." This gives you numbers but no understanding of how things are really going. Metrics tell you what happened, not why.
- **High-bandwidth**: Shadow customers, text with them directly, get them into Slack/Discord, monitor API responses to see where they get stuck. This gives you visual, contextual understanding of how users actually interact with your product.

## Methods for High-Bandwidth Feedback

Kenneth describes several methods, drawn from his experience at [[entities/stripe|Stripe]]:

1. **Shadow customers**: Go to customer offices and watch them integrate APIs. See where they struggle, where they succeed, where they get confused.
2. **Direct messaging**: The best customer relationships Kenneth has had are with people he's texting with directly — available, eager to share how they're using the product.
3. **Slack/Discord channels**: Get customers into communication channels where they can ask questions and share frustrations in real time.
4. **API response monitoring**: Rigorously monitor API responses to identify where users get stuck — error patterns, retry behavior, abandoned flows.
5. **Personal relationships**: Work with a very small set of users and make them extremely happy. This creates deep feedback loops that are impossible to achieve at scale through metrics alone.

## The Professional Services Mindset

Kenneth's key insight: when you do high-bandwidth feedback well, "you should feel like you're running a professional services firm." This means:

- Deep investment in a few users rather than shallow engagement with many
- Personal availability and responsiveness
- Understanding each user's specific context and problems
- Making those few users so happy that they become advocates

## Relationship to AI Product Development

In the AI era, high-bandwidth feedback is especially critical because:

1. AI products are novel — there are no established patterns to measure against
2. User expectations around AI interaction are still being formed
3. Metrics alone cannot capture whether an AI product feels useful, trustworthy, or delightful
4. AI tools enable rapid iteration, making high-bandwidth feedback loops more feasible than ever

## Related Concepts

- [[concepts/rapid-iteration-loop|Rapid Iteration Loop]] — High-bandwidth feedback is the fuel for rapid iteration
- [[concepts/llm-evaluation-framework|LLM Evaluation Framework]] — The contrast between evals (structured metrics) and high-bandwidth feedback (qualitative understanding)
- [[concepts/ship-confidently|Ship Confidently]] — Confidence in shipping comes from both evals and real user feedback
