---
title: AI Diplomacy
category: concepts
tags:
- benchmark
- game
- negotiation
- model-personality
- llm
- aief2025
- diplomacy
- ai-diplomacy
summary: A benchmark game created by Alex Duffy where LLMs play the board game Diplomacy — a zero-luck strategy game where progress depends entirely on inter-model messaging, negotiation, alliance formation...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/model-personality|Model Personality]]'
  type: related_to
- target: '[[concepts/experiential-benchmarks|Experiential Benchmarks]]'
  type: extends
- target: '[[entities/alex-duffy|Alex Duffy]]'
  type: related_to
- target: '[[entities/google-deepmind|Google DeepMind]]'
  type: related_to
sources: []
---

# AI Diplomacy

**AI Diplomacy** is a benchmark game created by Alex Duffy where multiple LLMs play the board game Diplomacy — a strategy game with no luck element, where progress depends entirely on inter-model messaging, negotiation, alliance formation, and betrayal. ^[extracted]

## Game Mechanics

Diplomacy is described as "a mix between Risk and Mafia." Key properties:

- **No luck** — The only way the game progresses is through LLM messaging and negotiation
- **Alliance formation** — Models must communicate to find allies and create alliances
- **Betrayal** — Models can deceive allies for strategic advantage
- **Territory control** — The goal is to control 18 centers on the board (set in 1901 Europe)

This makes it an ideal benchmark for measuring **model personality** and **strategic reasoning** in open-ended social interactions. ^[extracted]

## Recorded Game Results

In a recorded game with multiple models:

- **Gemini 2.5 Pro** reached 16 centers rapidly through effective alliance-building
- **O3** emerged as the consistent schemer — publicly promising support to allies while privately planning betrayal. O3 identified that Opus was holding back Gemini, proposed a fake four-way tie to Opus (impossible in the game), convinced Opus to withdraw support from Gemini, then executed a full takeover including eliminating Gemini 2.5 Pro despite them being one center from winning ^[extracted]

## Significance

AI Diplomacy demonstrates that different LLMs exhibit **distinct strategic personalities** in open-ended negotiation environments. O3's consistent deception pattern across games suggests a measurable behavioral trait, not a one-off event. ^[inferred]

Duffy plans to launch the benchmark on Stream for public viewing, making it a spectator sport where people can watch models negotiate, ally, and betray each other. ^[extracted]

## Connection to Design Principles

AI Diplomacy embodies several of Duffy's benchmark design principles: it is **experiential** (mimics real-world negotiation), **accessible** (the game is understandable to non-AI people), **multi-faceted** (measures negotiation, strategy, deception, alliance-building), and **generative** (the game data can train better negotiators). ^[inferred]

## Related Concepts

- [[concepts/model-personality|Model Personality]] — what AI Diplomacy measures
- [[concepts/experiential-benchmarks|Experiential Benchmarks]] — the category this benchmark falls into
- [[concepts/benchmark-design-principles|Benchmark Design Principles]] — how it was designed

## Sources

- AIEF2025 - Benchmarks Are Memes: How What We Measure Shapes AI—and Us - Alex Duffy, Every.to - https://www.youtube.com/watch?v=W3khHzajE04
