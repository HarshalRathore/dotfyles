---
title: "LLM-as-Judge Problems"
category: concepts
tags: [llm-as-judge, evaluation, scoring, reward-modeling, judge-calibration, ai-evaluation]
summary: "Off-the-shelf LLM-as-judge suffers from hallucinations, miscalibration, bias, and instability. These failures make it unreliable as a quality metric for AI evaluation and fuzz testing."
sources:
  - "[[sources/watchv=omgpvw8tbhc]]"
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/fuzz-testing-ai]]"
    type: complicates
  - target: "[[concepts/llm-judge-best-practices]]"
    type: extends
  - target: "[[concepts/eval-ingredients-task-dataset-score]]"
    type: relates_to
  - target: "[[concepts/reasoning-models]]"
    type: related_to
---

# LLM-as-Judge Problems

LLM-as-judge — using an LLM to score the output of another AI application against a rubric — is simple to implement but suffers from a large array of failure modes that make off-the-shelf judge calls unreliable for quality assurance. ^[extracted]

## Failure Modes

### Hallucination
LLM judges are themselves LLMs, so they are prone to hallucinations. They can generate plausible-sounding but incorrect evaluations. ^[extracted]

### Miscalibration
A score of "1" from an LLM does not mean the same thing as a "1" from a human. What constitutes a "5" for a human is very different from a "5" for an LLM. The judge's scoring scale is not calibrated to human judgment. ^[extracted]

### Bias
LLM judges exhibit multiple biases: ^[extracted]

- **Position bias**: Flipping the order of two responses can change the evaluation result
- **Context bias**: Changing part of the rubric or adding context changes the judge's output
- **Fickleness**: The judge is extremely sensitive to how criteria are presented

### Instability
Even with good articulation of criteria, the judge may not operationalize those criteria well into the model's actual behavior. The criteria exist in the prompt but not in the model's scoring behavior.

## The Core Problem

The fundamental question is: **how do you QA the judge itself?** ^[extracted] How do you get to a point where you can judge the judge and say it's the best gold standard metric for iterating on your underlying AI application?

This is the same challenge as reward modeling — translating human subjective criteria into quantitative measures — but applied to the evaluation layer rather than the training layer. ^[inferred]

## Why Off-the-Shelf Doesn't Work

Tang's conclusion: off-the-shelf LLM-as-judge calls are "oftentimes not going to solve your reliability issues." ^[extracted] The judge itself needs to be evaluated, calibrated, and potentially improved before its scores can be trusted.

## Proposed Solutions

Tang describes two ends of a spectrum for improving judges: ^[extracted]

1. **Train from scratch**: Build reasoning models specifically optimized for evaluation tasks, with no inductive biases
2. **Structured approaches**: Use structured methods (the transcript cuts off before this is fully described)

The broader philosophy is "scaling judge time compute" — investing more compute at the judging stage rather than just at the generation stage. ^[inferred]

## Connection to Fuzz Testing

In fuzz testing, the scoring/judging stage is one of the two "actually difficult to execute" technical challenges. If the judge is unreliable, the entire fuzz testing loop produces noisy signals that misguide the search. ^[inferred]

## Sources

- AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs. https://www.youtube.com/watch?v=OMGPvW8TBHc
