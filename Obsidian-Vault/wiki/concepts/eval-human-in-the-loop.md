---
title: "Human-in-the-Loop Evals"
category: concepts
tags:
  - evals
  - human-review
  - user-feedback
  - production-ai
  - braintrust
sources:
  - "AIEF2025 - Evals 101 — Doug Guthrie, Braintrust - https://www.youtube.com/watch?v=bk0TmxoZlUY"
  - "AIEF2025 - How to run Evals at Scale: Thinking beyond Accuracy or Similarity — Muktesh Mishra, Adobe - https://www.youtube.com/watch?v=coKKKKh8Vns"
provenance:
  extracted: 0.80
  inferred: 0.12
  ambiguous: 0.08
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/eval-flywheel-effect|Eval Flywheel Effect]]"
    type: enables
  - target: "[[concepts/online-evals|Online Evals]]"
    type: complements
  - target: "[[concepts/llm-as-judge|LLM as Judge]]"
    type: grounds
---

# Human-in-the-Loop Evals

Human-in-the-loop evals incorporate two types of human judgment into the evaluation system: **human review** of production logs and **user feedback** from real users. Both feed back into the eval dataset, closing the flywheel. ^[extracted]

## Two Types of Human Evaluation

### 1. Human Review

Subject matter experts or annotators manually score or audit specific data points, logs, or experiment results. ^[extracted]

- Dedicated interface optimized for evaluation speed
- Custom score types: yes/no, slider, free text, A/B/C/D selection
- Establishes ground truth for calibrating LLM-as-judge prompts
- Used for reviewing production traces flagged by online scoring

### 2. User Feedback Capture

Direct feedback from real users, logged against specific spans in the trace: ^[extracted]

- **Thumbs-up/thumbs-down** — Binary signal on output quality
- **Free-text comments** — Qualitative feedback on specific responses
- Logged via a `logFeedback()` function in the application code
- Filterable into views (e.g., "all thumbs-down traces")
- Can be added directly to offline eval datasets

## The Feedback Loop

```
Production → User feedback / Human review → Add to dataset → Improve eval → Improve app
```

This is the core mechanism of the [[concepts/eval-flywheel-effect|eval flywheel]]: human judgment on production outputs becomes new test cases for offline evals, ensuring the system improves against real-world failure modes. ^[inferred]

## Human vs LLM Judgment

| Aspect | Human Review | LLM-as-Judge |
|---|---|---|
| **Accuracy** | High (ground truth) | Depends on judge quality |
| **Scale** | Limited by human capacity | Unlimited |
| **Cost** | High per evaluation | Low per evaluation |
| **Use** | Calibration, edge cases | Continuous monitoring |

Human review establishes the ground truth that LLM-as-judge scores are calibrated against. ^[extracted]


## The Fidelity vs. Speed Balance

Muktesh Mishra frames human-in-the-loop evals as one end of a fidelity-speed spectrum. The trade-off is fundamental: ^[extracted]

- **Human-in-the-loop** provides high fidelity (real human judgment) but lower speed and limited scale
- **Automated evals** provide high speed but variable fidelity depending on scorer quality
- **No fixed strategy** — the optimal balance depends on the use case
- **Process over tools** — the evaluation process must be defined before relying on any tool

This trade-off is central to [[concepts/adaptive-evals|adaptive evals]]: different application types require different positions on the fidelity-speed spectrum. ^[inferred]

## Related

- [[concepts/eval-flywheel-effect|Eval Flywheel Effect]] — Human judgment feeds the flywheel
- [[concepts/online-evals|Online Evals]] — Where human review of production logs occurs
- [[concepts/llm-as-judge|LLM as Judge]] — Human review calibrates the judge
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — Where production traces are reviewed
- [[concepts/fidelity-vs-speed-tradeoff|Fidelity vs. Speed Trade-off]] — Human evals are the high-fidelity extreme
- [[concepts/process-over-tools-evals|Process Over Tools in Evals]] — Process defines the human/automated balance
