---
title: "Code Translation with LLMs"
category: concepts
tags:
  - code-translation
  - llm
  - code-generation
  - multi-file
  - graphrag
aliases:
  - LLM code translation
  - language migration
sources:
  - "AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag-code|GraphRAG for Code]]"
    type: enabled-by
  - target: "[[concepts/multi-file-modification|Multi-File Modification Challenge]]"
    type: relates_to
---

# Code Translation with LLMs

Code translation is the task of converting source code from one programming language to another using LLMs. While straightforward for small, self-contained files, it becomes significantly harder for real codebases where files have cross-references, shared types, and interdependent logic. ^[extracted]

## The Challenge

When a codebase is fed directly to an LLM for translation (e.g., Python to Rust), the generated code often fails to compile. The LLM may produce syntactically plausible code but misses subtle dependencies between files, leading to compilation errors. ^[extracted]

## GraphRAG for Code Solution

The [[entities/jonathan-larson|Jonathan Larson]] team at [[entities/microsoft|Microsoft Research]] demonstrated successful Python-to-Rust translation of a terminal game (200 lines, 7 files) using [[concepts/graphrag-code|GraphRAG for Code]]: ^[extracted]

1. **Standard LLM approach** — Feed all Python source files to an LLM with prompts → generates Rust code that does not compile ^[extracted]
2. **GraphRAG for Code approach** — Build a knowledge graph of the Python codebase → use GraphRAG's translate function → generates compilable Rust files across the entire codebase ^[extracted]

The key difference: GraphRAG's structured representation of the codebase captures cross-file dependencies that a raw text feed to an LLM misses. ^[inferred]

## Relation to Multi-File Modification

Code translation is closely related to the [[concepts/multi-file-modification|multi-file modification]] challenge: both require understanding how changes in one file affect others. Standard AI coding tools excel at single-file edits but break when modifications span multiple files. ^[inferred]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
