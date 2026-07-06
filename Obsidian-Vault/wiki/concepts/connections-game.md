---
title: Connections Game
tags:
- word-game
- puzzle
- new-york-times
- nlp-benchmark
- daily-puzzle
- abstract-reasoning
aliases:
- Connections
- NYT Connections
sources:
- 'https://www.youtube.com/watch?v=p_uhfgh4j9y'
summary: NYT daily puzzle grouping 16 words into 4 categories of 4. Second-most-played NYT game with hundreds of millions of plays. Used as a reproducible LLM benchmark.
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/nyt-games]]'
  type: published_by
- target: '[[entities/shafik-quoraishee]]'
  type: analyzed_by
- target: '[[concepts/graph-coloring]]'
  type: modeled_as
- target: '[[concepts/system-1-system-2-thinking]]'
  type: solved_using
- target: '[[entities/wordle]]'
  type: compared_to
category: concepts
---

# Connections Game

Connections is a daily word puzzle published by [[entities/nyt-games|NYT Games]] that challenges players to group 16 words into four categories of four related words. ^[extracted]

## Mechanics

Each daily puzzle provides 16 words. The goal is to identify four groups of four words where each word in a group shares a common theme or connection. ^[extracted]

- Each word belongs to exactly one group — no overlaps
- Players may make up to four incorrect guesses before losing
- The game ends when all four groups are correctly identified (win) or after four wrong guesses (loss)

## Difficulty Tiers

Connections uses a four-tier color-coded difficulty structure: ^[extracted]

| Tier | Color | Difficulty | Description |
|------|-------|------------|-------------|
| 1 | Yellow | Easy | Most obvious connections, immediate recognition |
| 2 | Green | Medium | Slightly less obvious, requires some stretching of associations |
| 3 | Blue | Hard | Trickier themes — sayings, idioms, lexical patterns, trivia-based |
| 4 | Purple | Very Hard | Infamous difficulty; uses decoy/overlap/mislead patterns |

The yellow category contains the most obvious connections. Green requires a bit more thought but becomes obvious once found. Blue involves trickier thematic connections. Purple is the hardest tier and the one that most commonly prevents perfect scores. ^[extracted]

## Decoy Pattern

The purple category is distinguished by its use of **decoy words** — words that appear to belong to an easier category but actually belong to purple. This creates a misdirection pattern where: ^[extracted]

- A word might seem to fit a yellow or green category through superficial similarity
- The correct grouping requires deeper semantic understanding
- Players who fall for decoys waste guesses, increasing the chance of losing

This decoy design is what makes Connections a valuable benchmark for AI — it tests whether a model can resist overfitting to surface-level patterns. ^[extracted]

## Scale and Popularity

- Launched in beta: June 2023
- Official release: August 2023
- Second-most-played NYT game (after [[entities/wordle|Wordle]])
- Hundreds of millions of plays within first year ^[extracted]

## Connections as an AI Benchmark

Connections has unique properties that make it valuable for AI research: ^[extracted]

1. **Reproducible** — Same puzzles are playable by everyone, enabling consistent benchmarking
2. **Progressive difficulty** — Four tiers allow granular capability measurement
3. **Tests abstract reasoning** — Purple category requires reasoning beyond pattern matching
4. **Tests overfitting resistance** — Decoys force models to distinguish signal from noise
5. **Explainable solutions** — Each solution requires clean, well-aligned reasoning

No LLM has achieved a 100% solve rate across all Connections puzzles. ^[extracted]

## Human Solving Strategy

Most human players use a combination of fast intuitive recognition (System 1) for obvious categories and slow deliberate reasoning (System 2) for ambiguous groupings. ^[extracted] This mirrors the challenge faced by AI systems. ^[inferred]

## Related Pages

- [[concepts/graph-coloring|Graph Coloring Problem]] — Computational formulation of Connections
- [[concepts/system-1-system-2-thinking|System 1 / System 2 Thinking]] — Human solving approach
- [[concepts/abstract-reasoning|Abstract Reasoning]] — AI capability tested
- [[entities/nyt-games|NYT Games]] — Publisher
- [[entities/shafik-quoraishee|Shafik Quoraishee]] — Analyst
