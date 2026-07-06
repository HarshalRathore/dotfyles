---
title: Structural vs. Superficial Understanding in Code
category: concepts
tags:
- code-understanding
- llm
- graphrag
- context-length
- knowledge-graph
aliases:
- structural understanding
- superficial familiarity
sources:
- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/graphrag|GraphRAG]]'
  type: provides
- target: '[[concepts/context-length-scaling|Context Length Scaling]]'
  type: competes-with
- target: '[[concepts/semantic-understanding-in-code|Semantic Understanding in Code Analysis]]'
  type: related_to
summary: Structural vs. Superficial Understanding in Code
---

# Structural vs. Superficial Understanding in Code

**Structural understanding** is an AI system's grasp of how code components interconnect — the dependency graph, cross-file relationships, and architectural patterns. **Superficial familiarity** is surface-level pattern recognition from training data exposure without understanding how pieces fit together. ^[extracted]

## The Doom Experiment

The [[entities/jonathan-larson|Jonathan Larson]] team at [[entities/microsoft|Microsoft Research]] conducted a critical experiment on the Doom source code (~100K lines, 231 files, ~30 years old). They initially worried that LLMs might already know Doom code from their training data. Tests confirmed: LLMs *did* know Doom code superficially — but when asked to make meaningful modifications to the codebase, they failed completely. ^[extracted]

This revealed the key distinction: knowing code from training data is not the same as understanding how it works. The models had surface-level familiarity but lacked structural understanding of file interconnections. ^[extracted]

## Implications for Context Length Scaling

[[concepts/context-length-scaling|Context length scaling]] (1M+ token context windows) attempts to solve code understanding by feeding entire codebases directly to LLMs. The Doom experiment showed this is insufficient: even with the full codebase in context, models trained on similar code cannot make meaningful modifications without structural understanding. ^[extracted]

[[concepts/graphrag|GraphRAG]] provides the structural understanding that raw context length cannot — a knowledge graph capturing how files relate to each other, enabling coherent reasoning about cross-file dependencies. ^[inferred]

## The Two Types of "Knowledge"

| Dimension | Superficial Familiarity | Structural Understanding |
|---|---|---|
| Source | Training data exposure | Knowledge graph construction |
| Scope | Pattern recognition per file | Cross-file relationship mapping |
| Modification ability | Fails at meaningful changes | Enables coherent multi-file changes |
| Example | LLMs trained on Doom code | GraphRAG over Doom codebase |

## Why This Matters

This distinction explains why standard RAG and direct context feeding fail at repository-level tasks: they provide superficial familiarity without structural understanding. GraphRAG's knowledge graph construction is what enables the system to reason about code as an interconnected system rather than a collection of independent files. ^[inferred]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
