---
title: Decoy Pattern in Word Games
tags:
- puzzle-design
- misdirection
- connections
- game-design
- ai-benchmark
aliases:
- Decoy Pattern
- Decoy Words
- Misdirection Pattern
sources:
- 'https://www.youtube.com/watch?v=p_uhfgh4j9y'
summary: Words in Connections puzzles that appear to belong to an easier category but actually belong to the purple category. Designed to test whether AI and humans can resist superficial pattern matching.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/connections-game]]'
  type: used_in
- target: '[[concepts/llm-overfitting]]'
  type: causes
- target: '[[concepts/abstract-reasoning]]'
  type: tests
- target: '[[concepts/system-1-system-2-thinking]]'
  type: exploits
category: concepts
---

# Decoy Pattern in Word Games

The decoy pattern is a puzzle design technique used in [[concepts/connections-game|Connections]] where words are included that appear to belong to an easier category through superficial similarity, but actually belong to the purple (hardest) category. ^[extracted]

## Purpose of Decoys

Decoys serve two purposes: ^[extracted]

1. **For humans** — They create the infamous difficulty of the purple category, preventing perfect scores and making the game challenging
2. **For AI** — They test whether models can resist overfitting to superficial similarities and instead perform genuine abstract reasoning

The decoy design is what makes Connections a valuable benchmark for AI capabilities. ^[extracted]

## How Decoys Work

A decoy word has the following properties: ^[extracted]

- **High superficial similarity** to words in an easier category (yellow/green)
- **Different semantic relationship** to the purple category words
- **Plausible grouping** that seems correct at first glance

For example, a word might share a prefix, length, or common association with yellow-category words, but its actual connection to the purple category is more abstract or trivia-based.

## Impact on Solving

Decoys cause both humans and AI to make errors: ^[extracted]

- **Humans** fall for decoys through System 1 thinking — the connection seems obvious, so they commit to it
- **AI** falls for decoys through pattern matching — the superficial similarity score is higher than the correct grouping

Each incorrect guess costs a turn, and Connections allows only four mistakes before losing. ^[extracted]

## Decoys and LLM Performance

No LLM has achieved a 100% solve rate on Connections, and decoys are a primary reason. Models that rely on pattern matching (their default mode) consistently fall for decoy patterns in purple-category puzzles. ^[inferred]

Progressive improvement across model generations suggests that newer models are better at resisting decoys, but the challenge remains unsolved. ^[extracted]

## Related Pages

- [[concepts/connections-game|Connections Game]] — Where decoys are used
- [[concepts/llm-overfitting|LLM Overfitting]] — What decoys exploit
- [[concepts/abstract-reasoning|Abstract Reasoning]] — What resists decoys
- [[concepts/system-1-system-2-thinking|System 1 / System 2 Thinking]] — Human decoy vulnerability
