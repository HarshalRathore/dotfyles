---
title: "Terminal Game Demo — 200-Line Codebase Experiment"
category: references
tags:
  - graphrag
  - code-understanding
  - demonstration
  - microsoft-research
  - aief2025
aliases:
  - 200-line game demo
sources:
  - "AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4"
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag-code|GraphRAG for Code]]"
    type: demonstrates
  - target: "[[concepts/semantic-understanding-in-code|Semantic Understanding in Code Analysis]]"
    type: demonstrates
  - target: "[[concepts/local-global-queries|Local and Global Queries in GraphRAG]]"
    type: demonstrates
---

# Terminal Game Demo — 200-Line Codebase Experiment

## TL;DR

A 200-line terminal-based game across 7 files was used as a controlled experiment to demonstrate [[concepts/graphrag-code|GraphRAG for Code]]'s superiority over standard RAG. The codebase is small enough for humans to know the ground truth holistically but complex enough to confuse LLMs given raw code. ^[extracted]

## Problem & Motivation

The demo codebase was deliberately chosen because: ^[extracted]

1. **Small enough for human ground truth** — A human can understand all 7 files and verify the correctness of any AI-generated answer
2. **Complex enough to confuse LLMs** — Despite only 200 lines, feeding the raw code to an LLM produces generic, useless answers
3. **Self-contained** — No external dependencies or hidden context needed to understand the game mechanics

## Results

### Standard RAG Answer
"The application is designed as a game that is configured and initiated through a main function. The game leverages a configuration file and has its main components such as the game screen, game logic encapsulated in separate classes and functions." ^[extracted]

This answer is technically true but contains zero actionable information. ^[extracted]

### GraphRAG for Code Answer
"The application is a terminal-based interactive game designed to run in a curses-based terminal environment. It features a player character that can jump vertically, obstacles that move horizontally across the screen, and a static background layer. The game controls via keyboard input, specifically using the space bar to trigger the player's jump action." ^[extracted]

This answer demonstrates **semantic understanding** — the ability to synthesize information across files into a coherent, precise description of game mechanics. ^[extracted]

## Why This Demo Matters

This controlled experiment isolates the variable: same codebase, same question, different retrieval systems. The stark contrast between the two answers demonstrates that the difference is not in the LLM's capability but in the retrieval architecture. Vector-based RAG cannot aggregate semantic understanding across multiple files; GraphRAG's knowledge graph can. ^[inferred]

## Sources

- AIEF2025 - GraphRAG methods to create optimized LLM context windows for Retrieval — Jonathan Larson, Microsoft - https://www.youtube.com/watch?v=c5qJHr3DnT4
