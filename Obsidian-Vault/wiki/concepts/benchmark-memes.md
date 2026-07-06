---
title: Benchmark Memes
category: concepts
tags:
- benchmark
- meme-theory
- dawkins
- evaluation
- llm
- aief2025
summary: The thesis that benchmarks function as memes in the Dawkins sense — ideas that spread and shape AI model development. A single person's idea about what capability matters can propagate and become t...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/model-benchmarks|Model Benchmarks]]'
  type: extends
- target: '[[concepts/benchmark-saturation|Benchmark Saturation]]'
  type: related_to
- target: '[[concepts/benchmark-design-principles|Benchmark Design Principles]]'
  type: related_to
- target: '[[entities/alex-duffy|Alex Duffy]]'
  type: related_to
- target: '[[concepts/scenario-tuning-bias|Scenario Tuning Bias]]'
  type: related_to
sources: []
---

# Benchmark Memes

The **Benchmark Memes** thesis, articulated by Alex Duffy at AIEF2025, reframes AI benchmarks as **Dawkinsian memes** — ideas that spread from person to person and, once adopted, shape the behavior of the systems they measure. ^[extracted]

## Dawkinsian Origin

Richard Dawkins, the evolutionary biologist, coined "meme" in the 1970s to describe units of cultural transmission. Christianity, democracy, and capitalism are examples of ideas that spread through populations. Benchmarks operate the same way: someone proposes a capability measurement, it spreads through the community, and model providers build their training and evaluation around it. ^[extracted]

## The Power of a Single Idea

A key insight is that **a single person** can originate a benchmark idea that eventually shapes the training of the most powerful AI tools ever created. The lifecycle is:

1. Someone has an idea about what AI capability matters
2. The idea spreads and becomes a meme (e.g., "Humanity's Last Exam" gained traction despite being outside AI circles)
3. Model providers train on or test against it
4. The most powerful tool ever created becomes excellent at that specific capability

This gives benchmark creators **enormous influence** over what AI systems become good at. ^[extracted]

## Examples of Benchmark Memes in Action

- **Pelican riding a bicycle** — Started as a niche benchmark, spread to Google I/O keynote, models now pass it ^[extracted]
- **Hours and Strawberries** — Became iconic; models eventually mastered it ^[extracted]
- **Counting 1–10** — Google's new video generation benchmark; models still struggle, showing the meme is still spreading ^[extracted]
- **Pokémon benchmark** — Adopted by both Claude and Gemini releases; still midway up the adoption curve ^[extracted]

## Ethical Implications

Because benchmarks define what providers optimize for, they carry responsibility. Duffy cites the ChatGPT sycophancy incident — where "thumbs up / thumbs down" benchmarking created a model that agreed with users regardless of idea quality — as evidence that **bad benchmarks can go wrong at massive scale**. ^[extracted]

The ethical imperative is to design benchmarks that empower people and give them agency, rather than replicating social media's "original sin" of treating people as data points for engagement optimization. ^[extracted]

## Vector Search Benchmarking: A Parallel Problem

The benchmark meme thesis applies beyond LLMs to vector search systems. Philipp Krenn (Elastic) observed that nearly every vendor can claim to be both faster and slower than their competitors — benchmarks in this domain are often **scenario-tuned memes** rather than objective measurements. Cherry-picked scenarios, read-only bias, and ignored quality metrics produce glossy charts that mislead buyers, just as bad LLM benchmarks mislead developers. ^[inferred]

See [[concepts/scenario-tuning-bias|Scenario Tuning Bias]] for how benchmark authors exploit this dynamic.

## Related Concepts

- [[concepts/benchmark-saturation|Benchmark Saturation]] — what happens when models pass the meme
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — how to design benchmarks that avoid meme pitfalls
- [[concepts/model-benchmarks|Model Benchmarks]] — the broader category of evaluation metrics
- [[concepts/scenario-tuning-bias|Scenario Tuning Bias]] — how benchmark authors cherry-pick scenarios

## Sources

- AIEF2025 - Benchmarks Are Memes: How What We Measure Shapes AI—and Us - Alex Duffy, Every.to - https://www.youtube.com/watch?v=W3khHzajE04
- AIEF2025 - Vector Search Benchmarking - Philipp Krenn, Elastic - https://www.youtube.com/watch?v=YrUBFXa1KUY
