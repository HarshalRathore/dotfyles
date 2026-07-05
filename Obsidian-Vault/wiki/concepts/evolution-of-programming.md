---
title: "Evolution of Programming"
tags:
  - history
  - programming
  - abstraction
  - ux
  - software-engineering
  - aief2025
aliases:
  - history of programming
  - programming evolution
  - evolution of coding
sources:
  - "[[sources/watchv=lue8k2jqfkk]]"
summary: "The historical progression of programming from physical punch cards through higher-level languages, text editors, IDEs, and now AI coding agents — with both model capability and programming UX on exponential curves."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Evolution of Programming

The history of programming, traced from physical hardware interfaces through AI coding agents, reveals a consistent pattern: each era raises the level of abstraction, moving from hardware manipulation to natural language.

## Hardware Era (1930s-1950s)

Programming began as a physical activity:

- **Switchboards** — physical wiring to configure behavior
- **Punch cards** — physical media representing machine code
  - My grandfather was one of the first programmers in the Soviet Union, working with punch cards in the 1950s-60s
  - Punch cards were brought home from work and physically manipulated

## Text-Based Programming (1950s-1980s)

The first major abstraction: hardware → software.

- **Assembly** — first higher-level language, mapping mnemonics to machine instructions
- **COBOL** — early business-oriented language
- **Punch cards to text editors** — `ed`, the first text editor, built for teletype machines (physical printers on paper)
  - `ed` was invented by Ken Thompson at Bell Labs in the 1970s
  - Still distributed on Unix systems today, ~50 years later
  - No cursor, no scrollback, no fancy commands — built for machines without those features

## IDE Era (1980s-2000s)

Graphical interfaces transformed programming from text-only to visual:

- **Vim / Emacs** (1980s) — major innovations in text editing for programming
- **Smalltalk 80** (1980) — first graphical interface for programming
  - Had **live reload in 1980** — a feature React developers still struggle with today
  - Introduced object-oriented programming
- **Visual Basic** (1991) — first code editor to introduce a graphical paradigm to the mainstream
- **Eclipse** — brought type-ahead to the mainstream via static analysis (symbol indexing and ranking, not AI)

## Language Convergence

Programming languages have converged in their abstractions:

- TypeScript feels like Rust, which feels like Swift, which feels like Go
- The abstraction level has leveled out across the ecosystem
- The language layer is stable; the UX layer is not

## AI Coding Era (2020s+)

The newest abstraction: writing natural language instead of code.

- **GitHub Copilot** — single-line type-ahead (AI-assisted)
- **Devon / Cursor / Windsurf** — multi-line code generation from natural language
  - Devon was the first product to break through the "you don't have to write code" paradigm mainstream
- **Claude Code** — terminal-first agentic coding, unopinionated, low-level model access

## Key Insight

Two exponential curves running in parallel:

1. **Model capability** — improving exponentially
2. **Programming UX** — also on an exponential curve, about to accelerate further

The model keeps getting better, and everything around the model also increases exponentially. The more general thing usually wins. ^[extracted]

## Related

- [[concepts/agentic-coding]] — The modern paradigm where natural language becomes code
- [[concepts/software-abstraction-evolution]] — Similar but focused on software engineering abstractions, not programming UX
- [[concepts/terminal-first-design]] — Claude Code's response to rapid UX evolution
- [[concepts/unopinionated-product-design]] — Why staying unopinionated makes sense during rapid model evolution
- [[entities/boris-cherny]] — Who articulated this history at AIEF2025
- [[entities/claude-code]] — The product that embodies this evolution
