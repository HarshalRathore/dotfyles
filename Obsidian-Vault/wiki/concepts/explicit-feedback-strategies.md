---
title: Explicit Feedback Strategies
category: concepts
tags:
- feedback
- user-experience
- evals
- ai-agents
- ux-design
aliases:
- explicit feedback
- feedback collection
sources:
- 'AIEF2025 - Turning Fails into Features: Zapier''s Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/implicit-feedback-signal|Implicit Feedback Signals]]'
  type: contrasts-with
- target: '[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]'
  type: feeds-into
summary: Explicit Feedback Strategies
---

# Explicit Feedback Strategies

Explicit feedback strategies are designed approaches to collecting direct user feedback (thumbs up/down, ratings, comments) that maximize response rates by asking at the right moment in the user journey. While explicit feedback is high-signal, it is rare — most users do not click feedback buttons. The key is to ask for feedback when users are most motivated to provide it. ^[extracted]

## Context-Aware Feedback Requests

The most effective strategy is to request feedback at critical moments in the user journey:

- **Post-run feedback** — After an agent finishes running (even a test run), show a feedback call-to-action: "Did this run do what you expected? Give us feedback now." This simple change produced a surprisingly large bump in feedback submissions at Zapier. ^[extracted]
- **Satisfaction moments** — Ask when users are happy and satisfied, they are naturally inclined to provide positive feedback
- **Frustration moments** — Ask when users are angry and want to report problems

The principle is: you can be more aggressive about asking for feedback when you are in the right context and have not bothered the user beforehand. ^[extracted]

## Thumbs Up/Down as Baseline

Thumbs up and thumbs down provide a good benchmark and baseline metric, but teams should go beyond them to find critical moments where users will most likely provide feedback. The goal is to identify the specific interaction points in your product where feedback requests will be most effective. ^[extracted]

## Limitations

Even with optimized strategies, explicit feedback remains rare. Detailed and actionable explicit feedback is even harder to obtain because users are generally not interested in providing it. This makes implicit feedback signals and traditional user metric mining essential complements. ^[extracted]

## Related

- [[concepts/implicit-feedback-signal|Implicit Feedback Signals]] — The implicit feedback counterpart
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — Explicit feedback feeds the flywheel
- [[entities/zapier|Zapier]] — Case study provider

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
