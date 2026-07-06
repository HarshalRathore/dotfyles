---
title: 'AIEF2025 - New York Times'' Connections: A Case Study on NLP in Word Games — Shafik Quoraishee, NYT Games'
tags:
- aief2025
- connections
- nlp
- word-games
- llm-benchmarking
- graph-coloring
- talk
sources:
- 'https://www.youtube.com/watch?v=p_uhfgh4j9y'
summary: NYT Connections game presented as an NLP benchmark testing LLMs' abstract reasoning and overfitting resistance via graph coloring and System 1/System 2 thinking.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/shafik-quoraishee]]'
  type: authored_by
- target: '[[entities/nyt-games]]'
  type: about
- target: '[[concepts/connections-game]]'
  type: introduces
- target: '[[concepts/graph-coloring]]'
  type: applies
- target: '[[concepts/system-1-system-2-thinking]]'
  type: applies
- target: '[[concepts/abstract-reasoning]]'
  type: evaluates
category: references
---

# AIEF2025 — New York Times' Connections: A Case Study on NLP in Word Games

## Speaker

[[entities/shafik-quoraishee|Shafik Quoraishee]] — Game developer at [[entities/new-york-times|The New York Times]] working on the [[entities/nyt-games|NYT Games]] team. Previously in media for most of his career, with a background in machine learning, mobile development, and data science. ^[extracted]

## TL;DR

Quoraishee presents the NYT Connections game as a reproducible benchmark for testing LLM capabilities, specifically abstract reasoning and the ability to avoid overfitting to superficial similarities. He models Connections as an augmented graph coloring problem, demonstrates a custom solver, and draws parallels between human problem-solving (System 1/System 2 thinking) and AI reasoning. ^[extracted]

## Problem Statement

Connections has challenged LLMs to achieve a 100% solve rate since its launch in 2023. The game's intentional decoys test whether AI can avoid overfitting to superficial similarities and instead perform genuine abstract reasoning. ^[extracted] Because puzzles are fixed and replayable, Connections serves as a reproducible and scalable testbed for AI benchmarking — unlike open-ended benchmarks, every player and every AI model faces the same 16-word board. ^[extracted]

## Game Mechanics

Connections provides 16 words to be grouped into four categories of four. Each word belongs to exactly one group. Players may make up to four incorrect guesses before losing. ^[extracted] The difficulty structure has four tiers:

- **Yellow** — most obvious connections
- **Green** — slightly less obvious, requires some stretching
- **Blue** — trickier themes (sayings, idioms, trivia-based)
- **Purple** — infamous difficulty, uses decoy/overlap/mislead patterns ^[extracted]

The game launched in beta in June 2023 and officially in August 2023. It quickly became the second-most-played NYT game (after [[entities/wordle|Wordle]]), with hundreds of millions of plays in its first year. ^[extracted] All puzzles and game mechanics are human-made. ^[extracted]

## Connections as an NLP Benchmark

Quoraishee identifies several properties that make Connections valuable for AI research: ^[extracted]

1. **Challenges abstract reasoning** — Solving the purple category requires reasoning beyond pattern matching
2. **Tests overfitting resistance** — Intentional decoys force models to distinguish signal from noise
3. **Explainable solutions** — Each solution requires clean, well-aligned reasoning that can be inspected
4. **Fixed input = reproducible** — Same puzzles are playable by everyone, enabling consistent benchmarking
5. **Progressive difficulty** — Four tiers allow granular capability measurement

Third-party benchmarks have used Connections to demonstrate progressive LLM improvement, though no model has achieved a perfect solve rate across all puzzles. ^[extracted]

## Graph Coloring Formulation

The talk presents Connections as an **augmented graph coloring problem** from computer science. ^[extracted]

In standard graph coloring, you assign colors to vertices such that connected vertices have different colors. The chromatic number is the minimum number of colors needed. ^[extracted]

For Connections:
- **Vertices** = the 16 words on the board
- **Colors** = the four category labels (yellow, green, blue, purple)
- **Edges** = the strength of connection between words (how related they are)
- **Goal** = color each word node with one of four categories so that all four words in a category receive the same color

This formulation creates a search space for algorithms or AI to play the game effectively. Without semantic similarity edges, the solver falls into random guessing territory. ^[extracted] Quoraishee built a custom Connections solver that organizes puzzles into graph coloring groups. ^[extracted]

Graph coloring has applications in scheduling, frequency assignment, wireless networks, and compliance — and in Connections, it provides the mathematical structure underlying the game's combinatorial challenge. ^[extracted]

## Mathematics of Random Guessing

Quoraishee presents the combinatorics of winning Connections by random guessing: ^[extracted]

- **Complete random guessing** (no intuition): ~0% chance of winning
- **One category correct, then random** for remaining three: ~1 in 5,000–6,000 chance
- **Two categories correct, then random** for remaining two: ~1 in 35 chance (~10%)

Most players get stuck on the third and fourth categories, where the remaining words seem unrelated. This demonstrates why intuition (semantic understanding) is essential — random combinatorics alone cannot solve the game. ^[inferred]

## Human vs. AI Problem Solving

The talk draws parallels between human and AI reasoning using Kahneman's **System 1 / System 2** framework: ^[extracted]

- **System 1** (fast, intuitive) — Automatic recognition of obvious relationships. In Connections, this identifies the yellow category quickly.
- **System 2** (slow, deliberate) — Deep reasoning when struggling with ambiguous words. This is needed for blue and purple categories, especially when decoys are present.

Humans typically use both systems, spending time on deliberate analysis. System 1 failures occur when something seems obvious but belongs elsewhere. System 2 failures occur when overthinking an actually simple connection. ^[extracted]

The same dichotomy applies to LLMs: fast pattern-matching (superficial similarity) versus deliberate reasoning (abstract category formation). ^[inferred]

## Key Claims

- Connections has never been solved at 100% by any LLM, despite progressive improvement across model generations. ^[extracted]
- The game's decoy design specifically tests whether AI can avoid overfitting to superficial similarities. ^[extracted]
- Modeling Connections as graph coloring with semantic similarity edges creates a tractable search space for AI solvers. ^[extracted]
- Random guessing yields ~0% win rate on a full board, ~10% after two categories are solved. ^[extracted]
- All Connections puzzles and game mechanics are human-made. ^[extracted]

## Related Pages

- [[concepts/connections-game|Connections Game]] — Game mechanics and difficulty tiers
- [[concepts/graph-coloring|Graph Coloring Problem]] — CS formulation applied to Connections
- [[concepts/system-1-system-2-thinking|System 1 / System 2 Thinking]] — Human reasoning framework
- [[concepts/abstract-reasoning|Abstract Reasoning]] — LLM capability tested by Connections
- [[concepts/semantic-similarity|Semantic Similarity]] — Underlying mechanism for Connections solver
- [[entities/shafik-quoraishee|Shafik Quoraishee]] — Speaker
- [[entities/nyt-games|NYT Games]] — Publisher
- [[entities/wordle|Wordle]] — Compared to Connections
