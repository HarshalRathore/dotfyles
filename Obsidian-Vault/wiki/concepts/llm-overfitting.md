---
title: "LLM Overfitting in Word Games"
tags:
  - llm-evaluation
  - overfitting
  - superficial-patterns
  - connections
  - generalization
aliases: [LLM Overfitting, AI Overfitting, Superficial Pattern Matching]
sources:
  - "[[sources/watchv=p_uhfgh4j9y]]"
summary: "LLMs matching words by superficial similarities instead of deeper relationships. Connections' decoy design tests overfitting resistance."
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
  - target: "[[concepts/connections-game]]"
    type: tested_by
  - target: "[[concepts/abstract-reasoning]]"
    type: contrasts_with
  - target: "[[concepts/semantic-similarity]]"
    type: exploits
  - target: "[[concepts/llm-benchmarking]]"
    type: benchmarked_by
---

# LLM Overfitting in Word Games

LLM overfitting in word games occurs when models match words based on superficial similarities rather than the deeper relationships that define the correct categories. [[concepts/connections-game|Connections]] is specifically designed to test whether AI can avoid this trap. ^[extracted]

## The Overfitting Problem

Connections puzzles contain intentional **decoy words** — words that appear to belong to an easier category through superficial similarity but actually belong to a harder category. ^[extracted]

For example, a word might:
- Share a lexical pattern with words in the yellow category (e.g., same prefix, same length)
- Have high semantic similarity to words in a green category
- But actually belong to the purple category based on a deeper, less obvious relationship

LLMs that overfit to these superficial patterns will group words incorrectly, wasting guesses and potentially losing the game. ^[inferred]

## Why Connections Tests Overfitting Resistance

The game's design creates multiple layers of ambiguity: ^[extracted]

1. **Surface-level similarity** — Words share spelling patterns, lengths, or common prefixes
2. **Semantic overlap** — Words are related in multiple ways simultaneously
3. **Thematic depth** — Purple categories use abstract, cultural, or trivia-based connections

This multi-layered ambiguity forces models to determine which relationship is the *intended* one — not just which one is most similar. ^[inferred]

## Overfitting vs. Abstract Reasoning

| Overfitting (Fails) | Abstract Reasoning (Succeeds) |
|--------------------|------------------------------|
| Groups by surface features | Groups by intended category |
| Falls for decoy words | Resists decoy misdirection |
| High similarity, wrong category | Correct category, possibly lower similarity |
| Pattern matching | Conceptual understanding |

The key distinction: overfitting finds the *most similar* grouping, while abstract reasoning finds the *correct* grouping. ^[inferred]

## Connection to System 1/System 2

Overfitting is the AI equivalent of [[concepts/system-1-system-2-thinking|System 1 thinking]] — fast, automatic, pattern-based. Resisting overfitting requires System 2 — slow, deliberate reasoning about which relationships are meaningful. ^[inferred]

## Related Pages

- [[concepts/connections-game|Connections Game]] — The testbed for overfitting
- [[concepts/abstract-reasoning|Abstract Reasoning]] — The capability that prevents overfitting
- [[concepts/semantic-similarity|Semantic Similarity]] — What overfitting exploits
- [[concepts/system-1-system-2-thinking|System 1 / System 2 Thinking]] — The cognitive parallel
