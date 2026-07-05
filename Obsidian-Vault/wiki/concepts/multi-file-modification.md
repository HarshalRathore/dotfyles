---
title: "Multi-File Modification Challenge"
category: concepts
tags:
  - code-generation
  - agentic-coding
  - multi-file
  - repository-understanding
  - graphrag
aliases:
  - multi-file editing
  - cross-file modification
sources:
  - "AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag-code|GraphRAG for Code]]"
    type: solved-by
  - target: "[[concepts/code-translation|Code Translation with LLMs]]"
    type: related_to
  - target: "[[concepts/agent-rails|Agent Rails]]"
    type: relates_to
---

# Multi-File Modification Challenge

The multi-file modification challenge is the difficulty AI coding tools face when making changes that span multiple files in a codebase. Standard AI coding agents edit one file well but often break other files in the process, because they lack a holistic understanding of how files interconnect. ^[extracted]

## The Problem

When attempting to add a feature to an existing codebase (e.g., adding a jump mechanic to the Doom game), AI coding tools typically:

1. Do a great job editing the primary target file
2. Break other files that depend on the modified code
3. The errors compound as the agent iterates, producing increasingly broken code ^[extracted]

This happens because the agent lacks repository-level understanding — it cannot see how a change in one file ripples through the dependency graph. ^[inferred]

## GraphRAG as Solution

[[concepts/graphrag-code|GraphRAG for Code]] addresses this by providing the structural context that AI agents lack. By building a knowledge graph of the codebase, GraphRAG captures cross-file dependencies and relationships, enabling coherent multi-file modifications. ^[extracted]

The [[entities/jonathan-larson|Jonathan Larson]] team demonstrated this by adding a jump mechanic to Doom — a feature the original game did not have — using GraphRAG to guide the multi-file modifications. ^[extracted]

## Broader Implications

The multi-file modification challenge is a fundamental bottleneck in agentic coding. As AI coding tools become more capable at single-file editing, the bottleneck shifts to cross-file coordination. Systems that provide repository-level structural understanding (like GraphRAG) are positioned to solve this bottleneck. ^[inferred]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
