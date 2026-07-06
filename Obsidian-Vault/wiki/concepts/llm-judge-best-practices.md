---
title: LLM-as-Judge Best Practices
tags:
- concept
- evaluation
- llm-as-judge
- methodology
- scoring
aliases:
- judge prompt design
- LLM judge optimization
- eval the judge
sources:
- 'https://www.youtube.com/watch?v=9in-cpnp7xg'
- 'https://www.youtube.com/watch?v=cqguvf6gsrm'
- 'https://www.youtube.com/watch?v=omgpvw8tbhc'
summary: 'Design principles for using an LLM as an evaluation judge: focused criteria per score, use a higher-quality model to grade, evaluate the judge against human ground truth, and trial averaging for no...'
provenance:
  extracted: 0.73
  inferred: 0.2
  ambiguous: 0.07
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
relationships:
- target: '[[concepts/llm-as-judge-problems]]'
  type: addresses
- target: '[[concepts/scaling-judge-time-compute]]'
  type: related_to
- target: '[[concepts/eval-ingredients-task-dataset-score]]'
  type: implements
category: concepts
---

# LLM-as-Judge Best Practices

LLM-as-judge is an evaluation technique where one LLM scores another's output against defined criteria. While powerful, it requires careful design to produce reliable, actionable scores. ^[extracted]

## Known Limitations: LLM-as-Judge Biases

Despite its widespread adoption, LLM-as-judge evaluation has documented biases relative to human judgment. [[entities/john-dickerson|John Dickerson]] (CEO, [[entities/mozilla-ai|Mozilla AI]]) published an ICLR paper (∼June 2025) finding systematic biases in LLM judges versus humans, including conciseness bias (preferring shorter outputs even when detail is needed) and helpfulness bias (preferring outputs that sound helpful regardless of factual accuracy, driven by anthropic-style training preferences). ^[extracted]

These biases mean that LLM-as-judge scores can diverge systematically from human assessment on dimensions that matter for production quality. Practitioners must "make sure you're validating this and making sure that you're not going off in some weird bias direction" — validating the judge against human ground truth is not a one-time calibration but an ongoing requirement as models and use cases evolve. ^[extracted]

This reinforces best practice #3 (Eval the Judge) below: calibration against human judgment must be continuous, not one-time.

## Tang's Taxonomy of LLM-as-Judge Problems

[[entities/leonard-tang|Leonard Tang]] (Haize Labs) at AIEF2025 provided a systematic taxonomy of LLM-as-judge failure modes, arguing that off-the-shelf judge calls are "oftentimes not going to solve your reliability issues": ^[extracted]

- **Hallucination**: Judges are themselves LLMs, so they are prone to hallucinations
- **Miscalibration**: A "1" from an LLM does not mean the same as a "1" from a human; a "5" for a human is very different from a "5" for an LLM
- **Bias**: Position bias (flipping response order changes results), context bias (changing rubric parts changes results), and general fickleness
- **Instability**: Even with good criteria articulation, the judge may not operationalize criteria into actual model behavior

Tang's central question: **how do you QA the judge itself?** ^[extracted] His proposed solution is "scaling judge time compute" — investing more compute at the judging stage rather than just at the generation stage. ^[extracted] This reframes LLM-as-judge from a free, off-the-shelf call to a compute-intensive component worth optimizing. ^[inferred]

## Core Principles

### 1. Focused Criteria Per Score
Never overload a single judge prompt with multiple criteria. Each score function should evaluate exactly one dimension: ^[extracted]

- **Accuracy** — "Is this response factually correct?"
- **Completeness** — "Does it cover all required information?"
- **Formatting** — "Does the output follow the specified structure?"

Each criterion gets its own judge prompt with explicit reasoning steps. A single judge evaluating four or five criteria produces diluted, inconsistent results. ^[extracted]

### 2. Use a Higher-Quality Model as Judge
When evaluating a cheaper or smaller model, use a more capable (more expensive) model to grade. This reduces the risk that the judge itself produces unreliable scores due to its own limitations. ^[extracted]

- **Cheaper model** → Task execution (production workload)
- **Better model** → Judge (evaluation workload)

Given the judge runs on a much smaller fraction of traffic (or only on sampled eval data), the cost difference is manageable. ^[inferred]

### 3. Eval the Judge
The judge prompt itself must be validated against human judgment. Process: ^[extracted]

1. Have human reviewers score a sample set of outputs
2. Run the LLM-as-judge on the same outputs
3. Compare scores — if they diverge, refine the judge prompt
4. Iterate until the judge's scores align with human assessment

[[entities/braintrust|Braintrust]]'s human review features (SMEs doing thumbs up/down on specific criteria) directly support this calibration workflow. ^[inferred]

### 4. Confine Context to Relevant Input/Output
The judge should only see the input and output relevant to the criterion being evaluated. Overloading the judge with full conversation history, metadata, or unrelated context introduces noise and reduces consistency. ^[extracted]

### 5. Handle Non-Determinism with Trial Averaging
LLMs are inherently non-deterministic. A single judge evaluation can vary from run to run. To compensate: ^[extracted]

- Run the same eval **multiple times** (e.g., 5 trials) per data point
- **Average the scores** across trials
- Report the mean and optionally the variance to understand judge stability

> "We see our customers do trial evals — run it maybe five times and then take the average." ^[extracted]

## Leveraging Judge Rationale

When an LLM-as-judge produces a score, it also generates a rationale explaining its reasoning. Reviewing this rationale is as important as the score itself: ^[extracted]

- **Debugging score anomalies** — If the judge gave 50%, its rationale explains which criteria were partially met
- **Tuning the judge** — Rationale reveals if the judge is applying criteria correctly or misinterpreting instructions
- **Building human trust** — Human reviewers can see why a score was assigned, not just the number ^[inferred]

> "It's really helpful when you're using an LLM as a judge to go through the Braintrust logs and read the rationale. So it will explain why it chose 100% or 75%. And you can use that to tune the LLM as a judge and improve it." ^[extracted]

## Relationship to Per-Element Judging

These best practices apply to generic LLM-as-judge prompts. [[concepts/per-element-llm-judge|Per-element LLM judge]] is a complementary approach where each dataset row gets its own custom scoring prompt — useful for high-value edge cases where the criteria differ significantly per sample. ^[inferred]

## Relationship to Code-Based Scoring

LLM-as-judge excels at subjective, qualitative assessment. [[concepts/eval-ingredients-task-dataset-score|Code-based scores]] complement it for objective, deterministic checks (regex validation, JSON schema compliance, exact match). Best practice is to use both types in combination. ^[inferred]

## Related

- [[concepts/llm-as-judge-problems|LLM-as-Judge Problems]] — Tang's taxonomy of judge failure modes
- [[concepts/scaling-judge-time-compute|Scaling Judge Time Compute]] — investing more compute at the judging stage
- [[concepts/per-element-llm-judge|Per-Element LLM Judge]] — per-row customized judge prompts
- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — diagnostic framework using judge scores
- [[concepts/checklist-based-evaluation|Checklist-Based Evaluation]] — structural criteria for judge prompts
- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — where the judge lives in the eval framework
- [[concepts/evaluation-first-development|Evaluation-First Development]] — the methodology that relies on reliable judge design

## Sources

- [[references/aief2025-year-of-evals-john-dickerson-mozilla|AIEF2025 - 2025 is the Year of Evals! Just like 2024, and 2023, and … — John Dickerson, CEO Mozilla AI]] — AI Engineer World's Fair 2025 talk
- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
