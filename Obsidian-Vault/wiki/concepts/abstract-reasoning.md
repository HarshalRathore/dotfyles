---
title: Abstract Reasoning
tags:
- ai-capability
- llm-evaluation
- pattern-recognition
- generalization
- connections
aliases:
- Abstract Reasoning
- AI Abstract Reasoning
- LLM Abstract Reasoning
sources:
- 'https://www.youtube.com/watch?v=p_uhfgh4j9y'
summary: Identifying patterns beyond surface features. Connections tests LLMs' abstract reasoning via decoys that penalize superficial similarity matching.
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
- target: '[[concepts/connections-game]]'
  type: tested_by
- target: '[[concepts/semantic-similarity]]'
  type: contrasts_with
- target: '[[concepts/system-1-system-2-thinking]]'
  type: requires
- target: '[[concepts/llm-benchmarking]]'
  type: benchmarked_by
category: concepts
---

# Abstract Reasoning

Abstract reasoning is the ability to identify patterns, relationships, and categories beyond surface-level or superficial features. In AI, it represents a capability that distinguishes genuine understanding from pattern matching. ^[extracted]

## Abstract Reasoning in LLMs

Connections has challenged LLMs to achieve a 100% solve rate, specifically testing their ability to perform abstract reasoning. ^[extracted] The game's intentional decoys test whether AI can: ^[extracted]

1. **Avoid overfitting** to superficial similarities between words
2. **Distinguish signal from noise** in ambiguous groupings
3. **Form categories** based on deeper semantic relationships rather than lexical patterns

This is why Connections is described as a game that "challenges AI's ability to abstractly reason." ^[extracted]

## Surface Pattern Matching vs. Abstract Reasoning

| Surface Pattern Matching (System 1) | Abstract Reasoning (System 2) |
|-----------------------------------|------------------------------|
| Matches based on word appearance | Matches based on conceptual relationship |
| Falls for decoy words | Resists decoy misdirection |
| Fast, low effort | Slow, high effort |
| Works on yellow/green categories | Required for blue/purple categories |

LLMs that rely primarily on pattern matching (their default mode) struggle with Connections puzzles where the correct grouping requires abstract reasoning about word meanings rather than surface features. ^[inferred]

## Why Connections Tests Abstract Reasoning

The Connections puzzle design specifically creates ambiguity: ^[extracted]

- **Decoy words** in the purple category appear to belong to easier categories
- **Semantic overlap** between categories creates genuine ambiguity
- **Trickier themes** in blue (idioms, sayings) require cultural knowledge, not just word associations

Solving these requires reasoning about what words *mean* rather than how they *look* — the essence of abstract reasoning. ^[inferred]

## Progress in LLM Abstract Reasoning

Third-party benchmarks have used Connections to demonstrate progressive improvement in LLM capabilities across model generations. However, no model has achieved a perfect solve rate, indicating that abstract reasoning remains an area of ongoing improvement. ^[extracted]

## Related Pages

- [[concepts/connections-game|Connections Game]] — The benchmark being used
- [[concepts/system-1-system-2-thinking|System 1 / System 2 Thinking]] — The cognitive framework
- [[concepts/semantic-similarity|Semantic Similarity]] — The mechanism being tested
- [[concepts/llm-benchmarking|LLM Benchmarking]] — How this capability is measured
