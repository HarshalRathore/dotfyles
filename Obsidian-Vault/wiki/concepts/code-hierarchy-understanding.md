---
title: Code Hierarchy Understanding
category: concepts
tags:
- ai-agents
- code-understanding
- software-engineering
- aief2025
sources:
- 'https://www.youtube.com/watch?v=mi83but_23o'
summary: Treating code as a connected hierarchy rather than just text — using call hierarchies, language servers, and git commit history to understand how files relate to one another. Critical for Tier 4 cr...
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
---

# Code Hierarchy Understanding

**Code hierarchy understanding** is the capability to treat code as a connected hierarchical system rather than just text. It involves understanding how files, functions, and modules relate to each other through call hierarchies, language server information, and git commit history.

## The Shift from Text to Structure

Early AI agents treated code primarily as text — reading files, predicting the next line, applying text transformations. As capabilities advanced, agents needed to understand code as a **system of interconnected parts**.

## Key Components

### Call Hierarchies
Understanding which functions call which, and how data flows through the codebase. This enables agents to:
- Trace the impact of a change across the codebase
- Find the root cause of a bug by following call chains
- Understand dependencies between modules

### Language Servers
Using the same infrastructure that IDEs use for code intelligence:
- Type information
- Symbol resolution
- Refactoring support
- Cross-file navigation

### Git Commit History
Understanding how files have changed over time:
- Which files are related (changed together)
- Who owns which parts of the codebase
- The evolution and intent behind code structures

## Why It Matters for Tier 4

Cross-file diagnosis and fixes (Tier 4) require understanding code as a hierarchy because:

1. **Bugs span files** — The root cause in one file may manifest in another
2. **Changes have ripple effects** — Modifying one function affects callers and callees
3. **Context is structural** — Understanding "what this function does" requires seeing its callers and callers' callers

## Related Pages

- [[entities/devin]] — Agent that uses code hierarchy understanding
- [[entities/cognition]] — Company that built the capability
- [[concepts/agent-capability-tiers]] — Tier 4 capability requirement
- [[concepts/agent-memory-knowledge]] — Memory complements structural understanding
