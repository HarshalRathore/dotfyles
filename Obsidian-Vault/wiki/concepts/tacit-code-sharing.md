---
title: Tacit Code Sharing
category: concepts
tags:
- knowledge-sharing
- ai-native
- organizational-learning
- aief2025
aliases:
- tacit code sharing
- tacit knowledge sharing
summary: 'Compounding engineering''s second-order effect: tacit knowledge becomes trivially shareable via prompts, sub-agents, and slash commands.'
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/compounding-engineering|Compounding Engineering]]'
  type: extends
- target: '[[concepts/tacit-knowledge-codification|Tacit Knowledge Codification]]'
  type: implements
- target: '[[concepts/level-of-stack|Level of Stack]]'
  type: related_to
sources: []
---

# Tacit Code Sharing

**Tacit Code Sharing** is a second-order effect of [[concepts/compounding-engineering|compounding engineering]] where tacit knowledge — the intuitions, patterns, and decisions that individual engineers accumulate — becomes trivially shareable across the entire organization.

## The Mechanism

In traditional engineering, tacit knowledge is embedded in code patterns, documentation, and individual expertise. Sharing it requires:

- Reading and understanding code
- Reading documentation (which may be outdated)
- Pair programming or mentoring sessions
- Conferences and talks

In compounding engineering, tacit knowledge is captured during the **codify** step and converted into:

- Prompts in `.cursorrules` / `.clinerules` files
- Sub-agents with specialized instructions
- Slash commands for recurring tasks

These artifacts are inherently more shareable than code or documentation because:

1. **They are executable** — you don't need to understand the implementation to use them
2. **They are portable** — the same prompt works across different codebases and projects
3. **They are explicit** — the knowledge is written down as instructions, not embedded in code patterns

## The Buy-In Effect

Shipper identifies that tacit code sharing creates a natural path to 100% AI adoption. When engineers see that their tacit knowledge is being captured and made available to everyone, they are more motivated to use AI tools. The system gets better as more people use it, creating a self-reinforcing cycle.

## Connection to Level of Stack

Tacit code sharing is easier at a higher [[concepts/level-of-stack|level of stack]] because prompt patterns (English instructions) are inherently more portable and shareable than code patterns (language-specific implementations). As engineers move from Python/JavaScript to English, the tacit knowledge they accumulate becomes more easily codified and shared.

## Sources

- AIEF2025 - Dispatch from the Future: building an AI-native Company – Dan Shipper, Every, AI & I - https://www.youtube.com/watch?v=MGzymaYBiss
