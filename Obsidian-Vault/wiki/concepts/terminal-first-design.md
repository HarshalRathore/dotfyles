---
title: Terminal-First Design
tags:
- design-philosophy
- terminal
- developer-tools
- ux
- aief2025
aliases:
- terminal-first
- terminal-first-ux
sources:
- 'https://www.youtube.com/watch?v=lue8k2jqfkk'
summary: A design philosophy that starts with the terminal as the primary interface, providing low-level access to AI models while remaining productive. Used by Claude Code as a response to rapid model evol...
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: concepts
---

# Terminal-First Design

Terminal-first design is a product philosophy that uses the terminal as the primary interface, providing users with low-level access to AI models while maintaining productivity. It is the design approach behind [[entities/claude-code|Claude Code]].

## Core Principles

1. **Low-level access** — Give the user as direct access to the model as possible
2. **Unopinionated** — Don't impose a specific workflow or UI structure
3. **General-purpose** — Works in any environment: terminals, IDEs, GitHub
4. **Minimal scaffolding** — No flashy UI, no opinions about what the product should look like

## Rationale

Terminal-first design is a response to a specific problem: **the model is improving exponentially, but the product is struggling to keep up.**

When you don't know what the right UX is yet (because the model keeps getting better), the best strategy is to start simple and stay unopinionated. Claude Code's approach:

> "We actually just don't know [what the right UX is]. We're starting simple." ^[extracted]

By providing a minimal, terminal-based interface, Claude Code can adapt as the model's capabilities evolve without being locked into a specific UI paradigm.

## Deployment Flexibility

Claude Code works across multiple environments:

- **Any terminal** — iTerm2, WSL, SSH, tmux, VS Code terminal, Cursor terminal
- **IDE mode** — More integrated experience with IDE diffs and diagnostics
- **GitHub** — Runs on user's compute, data stays local

This flexibility is a direct consequence of the terminal-first approach: terminals are universal, so the tool works everywhere. ^[extracted]

## Trade-offs

Terminal-first design trades polish for flexibility:

- **Pros**: Works everywhere, low friction, model-focused, adapts to evolution
- **Cons**: Less polished than IDE-native products, steeper learning curve, fewer visual features

Boris Cherny acknowledges that products like Cursor and Windsurf are "awesome" and that he uses them every day. Claude Code fills a different niche — raw model access rather than polished UX. ^[extracted]

## Related

- [[entities/claude-code]] — Product that uses this approach
- [[concepts/unopinionated-product-design]] — The companion philosophy
- [[concepts/agentic-coding]] — The paradigm terminal-first design serves
- [[concepts/evolution-of-programming]] — Why terminal-first makes sense in this context
- [[entities/cursor-ai]] — Alternative: IDE-first, opinionated approach
- [[entities/windsurf]] — Alternative: IDE-first, opinionated approach
