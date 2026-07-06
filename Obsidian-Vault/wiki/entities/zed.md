---
title: Zed
category: entities
tags:
- code-editor
- ai-native
- rust
- gpu-shaders
- agentic-editing
- stochastic-evals
sources:
- 'AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss'
relationships:
- target: '[[entities/nathan-sobo|Nathan Sobo]]'
  type: implements
- target: '[[entities/claude-code|Claude Code]]'
  type: related_to
- target: '[[entities/vs-code|VS Code]]'
  type: replaces
- target: '[[concepts/stochastic-evals|Stochastic Evals]]'
  type: uses
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.9
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Zed
---

# Zed

AI-enabled code editor implemented entirely from scratch in Rust, explicitly not a fork of VS Code. Zed is engineered around approximately 1,200 lines of shader programs running on the GPU, with the entire system architecture organized to deliver frames at 120 frames per second.

## Agentic Editing

Zed launched agentic editing capabilities, which required a fundamentally different testing approach from traditional deterministic CI. The team moved from standard unit tests to stochastic evaluations — running each eval 200 times with a requirement that 100% pass before merging. ^[extracted]

## Engineering Architecture

Zed's performance model treats the editor like a video game: GPU-accelerated rendering via shaders drives the UI, while the rest of the system is structured to deliver frames rapidly. This architecture enables the smooth, responsive experience that distinguishes Zed from VS Code forks. ^[extracted]

## Empirical Testing Culture

Zed maintains tens of thousands of tests and runs 50+ iterations with every random interleaving of concurrent operations. This deterministic testing approach worked for all non-AI features until LLM-based agentic editing required embracing stochastic behavior. ^[extracted]
