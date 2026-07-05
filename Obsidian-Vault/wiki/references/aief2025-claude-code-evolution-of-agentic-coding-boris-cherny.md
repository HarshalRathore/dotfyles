---
title: "AIEF2025 - Claude Code & the evolution of agentic coding — Boris Cherny, Anthropic"
category: references
tags:
  - aief2025
  - talk
  - claude-code
  - agentic-coding
  - anthropic
  - evolution
sources:
  - "[[sources/watchv=lue8k2jqfkk]]"
summary: "Boris Cherny (Anthropic) traces the history of programming from punch cards to AI coding agents, explains Claude Code's terminal-first unopinionated design, and presents the thesis that model capability and programming UX are both on exponential curves."
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AIEF2025 - Claude Code & the evolution of agentic coding

**Speaker:** Boris Cherny, Member of Technical Staff at Anthropic and creator of Claude Code
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=Lue8K2jqfKk

## Summary

Boris Cherny zooms out from Claude Code specifically to present a broader thesis: programming is changing faster and faster, with both model capability and programming UX on exponential curves. He traces the history of programming from the 1930s to today and explains why Claude Code's terminal-first, unopinionated design is the right response to this rapid evolution.

## Key Themes

### 1. The History of Programming Abstraction

Programming has evolved through distinct eras:

- **Hardware** (1930s-40s) — switchboards, physical configuration
- **Punch cards** (1950s-70s) — physical media for machine code
- **Assembly** (1950s) — first higher-level language
- **High-level languages** (1960s+) — COBOL, C, C++, Java, JavaScript, Python, TypeScript
- **Text editors** (1970s+) — `ed` (Ken Thompson, Bell Labs), still on Unix today
- **IDEs** (1980s+) — Smalltalk 80 (live reload in 1980), Visual Basic (1991), Eclipse (type-ahead)
- **AI coding agents** (2020s+) — natural language becomes code

### 2. Language Convergence

> "If you kind of squint all the languages sort of look the same... TypeScript feels like Rust, feels like Swift, feels like Go. The abstractions have started to converge."

The language layer has stabilized. The UX layer has not.

### 3. Two Exponential Curves

1. **Model capability** — improving exponentially
2. **Programming UX** — also on an exponential curve, about to accelerate further

> "The more general model always wins." ^[extracted]

### 4. Claude Code's Design Philosophy

- **Terminal-first** — start with the terminal, give low-level model access
- **Unopinionated** — no flashy UI, no scaffolding, no opinions about workflow
- **General-purpose** — works in any terminal, any IDE, GitHub
- **Minimal** — intentionally simple because Anthropic doesn't know what the right UX is yet

### 5. Verification Evolution

Verification has evolved alongside programming: manual debugging → probabilistic verification (fuzzing, chaos engineering) → agentic self-verification.

### 6. Claude Code Deployment Modes

- **Terminal** — works in any terminal (iTerm2, WSL, SSH, tmux, VS Code, Cursor)
- **IDE** — more integrated with IDE diffs and diagnostics
- **GitHub** — runs on user's compute, data stays local

## Notable Quotes

- "The model is moving really fast, it's on exponential, it's getting better at coding very very quickly."
- "We're trying to stay unopinionated about what the product should look like because we don't know."
- "The more general model always wins."
- "Programming is changing and it's changing faster and faster."

## Related Pages

- [[entities/boris-cherny]] — Speaker and creator of Claude Code
- [[entities/claude-code]] — Product discussed in the talk
- [[entities/anthropic]] — Speaker's company
- [[concepts/evolution-of-programming]] — Historical framework from the talk
- [[concepts/agentic-coding]] — The paradigm discussed
- [[concepts/terminal-first-design]] — Claude Code's design approach
- [[concepts/unopinionated-product-design]] — Product philosophy from the talk
- [[concepts/evolution-of-verification]] — Verification evolution from the talk
