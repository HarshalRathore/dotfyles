---
title: "GraphRAG for Code"
category: concepts
tags:
  - graphrag
  - code-understanding
  - repository-analysis
  - code-translation
  - microsoft-research
aliases:
  - GraphRAG for Code
  - GraphRack for Code
sources:
  - "AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: extends
  - target: "[[concepts/local-global-queries|Local and Global Queries in GraphRAG]]"
    type: uses
  - target: "[[concepts/code-translation|Code Translation with LLMs]]"
    type: enables
  - target: "[[entities/microsoft|Microsoft]]"
    type: developed-by
---

# GraphRAG for Code

**GraphRAG for Code** is the application of [[concepts/graphrag|GraphRAG]] architecture to repository-level code understanding, enabling LLMs to reason about codebases that are too large for any single context window. ^[extracted]

## The Problem

Standard RAG applied to code repositories produces generic, useless answers. When asked to describe a 200-line terminal game across 7 files, standard RAG returns: "The application is designed as a game that is configured and initiated through a main function." This is technically true but contains no actionable information. ^[extracted]

The root cause: vector-based retrieval cannot aggregate semantic understanding across multiple files. No single code file describes the overall game mechanics. ^[inferred]

## Demonstration: 200-Line Terminal Game

The [[entities/jonathan-larson|Jonathan Larson]] team at [[entities/microsoft|Microsoft Research]] demonstrated GraphRAG for Code on a small terminal-based game (200 lines, 7 files) built by one of Larson's engineers. The game was deliberately chosen because it is small enough for humans to know the ground truth holistically but complex enough to confuse LLMs given raw code. ^[extracted]

**Standard RAG result:** "The application is designed as a game that is configured and initiated through a main function. The game leverages a configuration file and has its main components such as the game screen, game logic encapsulated in separate classes and functions." ^[extracted]

**GraphRAG for Code result:** "The application is a terminal-based interactive game designed to run in a curses-based terminal environment. It features a player character that can jump vertically, obstacles that move horizontally across the screen, and a static background layer. The game controls via keyboard input, specifically using the space bar to trigger the player's jump action." ^[extracted]

The second answer demonstrates **semantic understanding** — the ability to synthesize information across files into a coherent description. ^[extracted]

## Demonstration: Doom Codebase (100K Lines, 231 Files)

The team scaled to the Doom source code (~30 years old, ~100K lines, 231 files) to demonstrate enterprise-scale code understanding: ^[extracted]

1. **Documentation generation** — GraphRAG produced high-level repository-level documentation, describing modules across 20-30 files (e.g., "how does the sound system work?") via global queries, with drill-down to file-level details via local queries ^[extracted]
2. **Feature development** — The team added a jump mechanic to Doom (which originally had no jump). This required multi-file modification, which standard AI coding tools fail at because they edit one file well but break others. GraphRAG's repository-level understanding enabled coherent multi-file changes ^[extracted]
3. **Code translation** — Python-to-Rust translation of the 200-line game worked end-to-end with GraphRAG for Code, producing compilable Rust code — something that failed when the same Python code was fed directly to an LLM ^[extracted]

## Key Insight

GraphRAG for Code addresses the fundamental limitation of agentic coding tools: they lack repository-level understanding. Without a structured representation of how files relate to each other, AI coding agents make changes in isolation that break the system. GraphRAG provides the structural context that enables coherent multi-file modifications. ^[inferred]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
