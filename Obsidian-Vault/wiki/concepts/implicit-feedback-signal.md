---
title: "Implicit Feedback Signals"
category: concepts
tags:
  - feedback
  - user-behavior
  - evals
  - ai-agents
  - user-signal
  - data-mining
aliases:
  - implicit feedback
  - behavioral signals
sources:
  - "AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o"
  - "AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/explicit-feedback-strategies|Explicit Feedback Strategies]]"
    type: contrasts-with
  - target: "[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]"
    type: feeds-into
  - target: "[[concepts/ai-observability-production-logging|AI Observability & Production Logging]]"
    type: uses
---

# Implicit Feedback Signals

Implicit feedback signals are behavioral indicators extracted from user interactions that reveal satisfaction or frustration without explicit user input. Because explicit feedback (thumbs up/down) is rare and detailed actionable feedback is even rarer, implicit signals provide a critical complementary data source for [[concepts/eval-flywheel-effect|eval flywheel]] improvement. ^[extracted]

## High-Signal Implicit Indicators

### Positive Signals

- **Turning on an agent after testing** — A user who tests an agent and then enables it for production use provides strong positive implicit feedback. This indicates the agent met their expectations during the test run. ^[extracted]
- **Copying a model's response** — Users who copy an agent's output are signaling that the result was useful enough to reuse. This behavior is used by OpenAI for ChatGPT as well. ^[extracted]

### Negative Signals

- **User tells agent to "stop slacking around"** — Direct commands to improve performance are clear implicit negative feedback. ^[extracted]
- **Re-phrasing the same prompt** — When a user sends a follow-up message that mostly rehashes their previous request, it often indicates the LLM didn't interpret the original phrasing well. This is a subtle but valuable signal. ^[extracted]
- **Cursing and frustration expressions** — Users express frustration through profanity and emotional language. LLM-based detection and grouping of frustrated interactions can surface patterns that manual review would miss. ^[extracted]

## Mining Traditional User Metrics

Beyond interaction-level signals, traditional business metrics contain implicit feedback:

- **Churn analysis** — Examine the last interactions of customers who churned in the last seven days to find quality signals
- **Business KPIs** — Identify what metrics your business cares about and track them to distill implicit signals from the data ^[extracted]

## LLM-Based Frustration Detection

Zapier uses an LLM to detect and group user frustrations, producing a weekly report posted in their Slack. This required significant tinkering to train the LLM on what frustration means specifically within their product context. The approach is promising but not plug-and-play — expect iterative refinement. ^[extracted]

## Conversation Transcript Mining

Jason Liu (567) at AIEF2025 emphasized that the richest implicit feedback lives in conversation transcripts rather than explicit feedback widgets. Users naturally embed corrections like "try again" and "be less lazy" in their messages — these are direct, actionable signals that would be lost without systematic conversation analysis. ^[extracted]

## Relationship to Explicit Feedback

Implicit feedback complements [[concepts/explicit-feedback-strategies|explicit feedback strategies]]: explicit feedback provides high-signal but rare data points, while implicit feedback provides volume and coverage. Together they form a more complete picture of agent quality in production. ^[inferred]

## Related

- [[concepts/explicit-feedback-strategies|Explicit Feedback Strategies]] — The explicit feedback counterpart
- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — Implicit signals feed the flywheel
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — Infrastructure for capturing signals
- [[concepts/conversation-output-analysis|Conversation Output Analysis]] — Systematic analysis of conversation transcripts for implicit signals
- [[entities/jason-liu-567|Jason Liu (567)]] — Presented conversation analysis methodology at AIEF2025

## Sources

- AIEF2025 - Turning Fails into Features: Zapier's Hard-Won Eval Lessons — Rafal Willinski, Vitor Balocco, Zapier - https://www.youtube.com/watch?v=blrovBxxN9o
- AIEF2025 - How to look at your data — Jeff Huber (Chroma) + Jason Liu (567) - https://www.youtube.com/watch?v=jryZvCuA0Uc
