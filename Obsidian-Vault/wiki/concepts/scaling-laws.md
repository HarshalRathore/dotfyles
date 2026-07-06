---
title: Scaling Laws
category: concepts
tags:
- scaling-laws
- scaling
- llm
- model-training
aliases:
- scaling laws
sources:
- 'https://www.youtube.com/watch?v=u0s6cfzay5c'
- 'AIEF2025 - Waymo''s EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM'
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/360brew]]'
  type: demonstrated_by
- target: '[[concepts/data-scaling-recommendation]]'
  type: related_to
- target: '[[concepts/model-size-scaling]]'
  type: related_to
- target: '[[concepts/context-length-scaling]]'
  type: related_to
- target: '[[entities/waymo]]'
  type: demonstrated_by
summary: Scaling Laws
---
# Scaling Laws

Scaling laws describe how model performance changes as a function of data volume, compute, and model size. In [[concepts/360brew|360Brew]], three scaling levers were experimentally validated for recommendation systems: data scaling, model size scaling, and context length scaling. ^[extracted]

## Three Scaling Levers in 360Brew

1. **Data scaling** — more user behavior data → better performance (monotonic improvement observed)
2. **Model size scaling** — larger models (7B → 8×22B) → better quality
3. **Context length scaling** — more user history in context → better performance (with diminishing returns at very long contexts) ^[extracted]

## Broader Context

The literature on scaling laws primarily focuses on LLMs trained for language tasks. 360Brew demonstrates that similar scaling principles apply to recommendation systems, though with domain-specific nuances — particularly around context length, where recommendation models show different behavior than language models. ^[inferred]

## Autonomous Driving Scaling

Waymo validated scaling laws in autonomous driving on their Remote Open Motion dataset (100k clips, 100× larger than academic datasets like NewSync). They showed that larger foundation models (Gemini) and larger datasets yield continuous quality improvements in driving performance. This extends the scaling laws concept beyond LLMs to embodied AI. ^[extracted]

## Related

- [[concepts/360brew|360Brew]] — three scaling levers validated experimentally
- [[concepts/data-scaling-recommendation|Data Scaling in Recommendation]] — lever 1
- [[concepts/model-size-scaling|Model Size Scaling]] — lever 2
- [[concepts/context-length-scaling|Context Length Scaling in Recommendation]] — lever 3
