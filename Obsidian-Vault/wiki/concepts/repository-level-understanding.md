---
title: Repository-Level Code Understanding
category: concepts
tags:
- code-understanding
- repository-analysis
- graphrag
- llm
- code-base
aliases:
- repo-level understanding
- codebase understanding
sources:
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag-code|GraphRAG for Code]]'
  type: enabled-by
- target: '[[concepts/local-global-queries|Local and Global Queries in GraphRAG]]'
  type: uses
- target: '[[concepts/context-length-scaling|Context Length Scaling]]'
  type: competes-with
summary: Repository-Level Code Understanding
---

# Repository-Level Code Understanding

**Repository-level code understanding** is the ability to reason about a codebase as a whole — its architecture, module interactions, and emergent behavior — rather than as a collection of individual files. ^[extracted]

## Why It Matters

Most LLM-based code tools operate at the file level: they read one or a few files and produce suggestions. This works for small, self-contained files but fails for real-world codebases where:

- Behavior emerges from interactions across multiple files
- No single file describes the overall system design
- Changes in one file have cascading effects on others ^[inferred]

## GraphRAG Approach

The [[entities/jonathan-larson|Jonathan Larson]] team at [[entities/microsoft|Microsoft Research]] demonstrated repository-level understanding on two scales: ^[extracted]

### Small Scale: 200-Line Game (7 Files)

GraphRAG correctly described the game's mechanics — player jumping, horizontal obstacles, keyboard controls — by synthesizing information across all 7 files. Standard RAG could not do this, returning only a generic "it's a game" answer. ^[extracted]

### Large Scale: Doom (100K Lines, 231 Files)

GraphRAG generated high-level documentation describing entire modules (e.g., the sound system) by understanding 20-30 files simultaneously. It also enabled feature development (adding jump to Doom) and code translation (Python to Rust) at this scale. ^[extracted]

## Contrast with Context Length Scaling

[[concepts/context-length-scaling|Context length scaling]] (1M+ token context windows) attempts to solve this by feeding entire codebases directly to LLMs. However, Larson's Doom experiments showed that even models trained on Doom code failed at meaningful modifications — they knew the codebase superficially but lacked structural understanding. GraphRAG provides the structural understanding that raw context length cannot. ^[extracted]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
