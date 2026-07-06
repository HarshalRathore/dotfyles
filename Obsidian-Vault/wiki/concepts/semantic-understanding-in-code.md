---
title: Semantic Understanding in Code Analysis
category: concepts
tags:
- code-understanding
- semantic-analysis
- llm
- graphrag
aliases:
- code semantics
sources:
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag-code|GraphRAG for Code]]'
  type: demonstrated-by
- target: '[[concepts/context-length-scaling|Context Length Scaling]]'
  type: competes-with
- target: '[[concepts/retrieval-augmented-generation|Retrieval Augmented Generation]]'
  type: improves
summary: Semantic Understanding in Code Analysis
---

# Semantic Understanding in Code Analysis

**Semantic understanding in code analysis** refers to an AI system's ability to comprehend what code *does* (its behavior, purpose, and relationships) rather than just what it *says* (its syntactic structure). This distinction is critical for repository-level code understanding. ^[extracted]

## The Distinction

A system with only syntactic understanding can describe code structure: "The application is configured through a main function with separate classes and functions." This is accurate but useless. ^[extracted]

A system with semantic understanding can describe code behavior: "A terminal-based game where a player character jumps vertically, obstacles move horizontally, and the space bar triggers jumps." This captures the actual functionality. ^[extracted]

## How GraphRAG Achieves Semantic Understanding

The [[entities/jonathan-larson|Jonathan Larson]] team demonstrated that [[concepts/graphrag|GraphRAG]] achieves semantic understanding by constructing a knowledge graph that connects entities across files. The graph captures not just what each file contains, but how the pieces relate — enabling the system to answer questions about the codebase as a whole. ^[extracted]

Larson explicitly called this "semantic understanding" in his talk, contrasting it with the superficial pattern-matching that standard RAG performs. ^[extracted]

## Why Context Length Alone Is Insufficient

[[concepts/context-length-scaling|Context length scaling]] to 1M+ tokens allows entire codebases to fit in the context window, but Larson's Doom experiments showed this is insufficient: LLMs trained on Doom code could not meaningfully modify it. The models had surface-level familiarity but lacked structural understanding of how files interconnect. ^[extracted]

GraphRAG provides structural understanding that raw context length cannot replicate. ^[inferred]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
