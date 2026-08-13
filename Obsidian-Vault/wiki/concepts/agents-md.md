---
title: AGENTS.md
category: concepts
tags: [agents-md, context-engineering, coding-agents, claude-code, documentation]
aliases: [AGENTS.md file]
relationships:
  - target: "[[concepts/context-engineering]]"
    type: uses
  - target: "[[concepts/progressive-disclosure-forms]]"
    type: uses
  - target: "[[concepts/claude-doctor]]"
    type: related_to
sources:
  - "https://www.aihero.dev/a-complete-guide-to-agents-md"
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-04-why-one-giant-instruction-file-fails/"
summary: "The markdown file checked into a repo that customizes coding-agent behavior — an open standard sitting below the system prompt; best practice is minimal root content plus progressive disclosure."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-07"
tier: supporting
created: "2026-08-07T00:00:00Z"
updated: "2026-08-13T00:00:00Z"
---

# AGENTS.md

An `AGENTS.md` file is a markdown file checked into Git that customizes how AI coding agents behave in a repository. It sits at the top of the conversation history, right below the system prompt, acting as a configuration layer between the agent's base instructions and the actual codebase. ^[extracted]

## What It Carries

Two scopes of guidance: ^[extracted]

- **Personal scope** — commit style preferences, coding patterns you prefer
- **Project scope** — what the project does, which package manager it uses, architecture decisions

It is an open standard supported by many (but not all) tools. Notably Claude Code uses `CLAUDE.md` instead; symlinking (`ln -s AGENTS.md CLAUDE.md`) keeps both working. ^[extracted]

## The Minimal Root File

Because every token is loaded on **every request**, the ideal root `AGENTS.md` is as small as possible — the absolute minimum being: ^[extracted]

1. **One-sentence project description** — acts like a role-based prompt anchoring every decision ("This is a React component library for accessible data visualization.")
2. **Package manager** — only if not npm, or use `corepack` so the system handles it
3. **Non-standard build/typecheck commands**

Everything else should live elsewhere, reached through [[concepts/progressive-disclosure-forms|progressive disclosure]]: separate domain files (`docs/TYPESCRIPT.md`), nested documentation trees, external docs, and agent skills. ^[extracted]

## Failure Modes

- **Ball of mud** — a feedback loop where each disliked agent behavior adds a rule; hundreds of rules accumulate into conflicting, unmaintainable guidance that hurts performance. The fix is a refactor pass: find contradictions, extract the essentials, group the rest into files, delete redundant/vague/obvious instructions. ^[extracted]
- **Stale documentation poisons context** — humans can be skeptical of stale docs; agents read them every request and act on them. Documenting file paths is dangerous (files move); document capabilities and project shape instead. Domain concepts drift slower and are safer. ^[extracted]
- **Auto-generated files** — init scripts that generate AGENTS.md flood it with "useful for most scenarios" guidance that belongs behind progressive disclosure. ^[extracted]

## Monorepos

Subdirectory `AGENTS.md` files merge with the root. Root level: monorepo purpose, how to navigate packages, shared tools. Package level: package purpose, tech stack, package-specific conventions. Don't overload any level — the agent sees every merged file in context. ^[extracted]

## 2026-08 — Learn Harness Engineering (Walking Labs)

[Lecture 4 "Why One Giant Instruction File Fails"](https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-04-why-one-giant-instruction-file-fails/) deepens the "ball of mud" failure mode into five named mechanisms plus a named refactor recipe — see [[references/harness-lecture-04-giant-instruction-file-fails|the lecture deep-dive]]. ^[extracted]

- **The vicious cycle:** agent mistake → "add a rule to prevent this" → works temporarily → different mistake → another rule — a file balloons 300 → 450 → 600 lines in three months while agent performance declines. ^[extracted]
- **Five failure mechanisms:** (1) **context budget eaten alive** — a 600-line AGENTS.md consumes 10,000–20,000 tokens (8–15% of a 128K window) that then competes with source reads, tool output, and history; (2) **lost in the middle** — Liu et al. 2023 show LLMs use middle-of-context information significantly worse, so a security rule at line 300 gets ignored; (3) **priority conflicts** — hard constraints, soft guidelines, and historical lessons all render identically, so the agent can't tell what matters; (4) **maintenance decay** — deletion is uncertain while addition feels cost-free, so the file only grows (technical-debt accumulation); (5) **contradiction accumulation** — rules from different times conflict ("strict mode" vs "legacy files may use any") and the agent picks at random. ^[extracted]
- **The fix — entry file as router:** AGENTS.md stays 50–200 lines: 1–2-sentence project overview, first-run commands, ≤15 global hard constraints, and one-line topic-doc links with applicability conditions. Topic documents (50–150 lines each) hold the rest and load on demand — the "packing cubes for luggage" principle; some guidance belongs in the code itself (type definitions, interface comments) where agents see it anyway. ^[extracted]
- **Instruction hygiene:** every rule carries a source ("why added"), applicability ("when needed"), and expiry ("when removable") condition; audit regularly and delete like unused dependencies; if a rule must stay in the entry file, place it at the top or bottom — never the middle. ^[extracted]
- **Vendor convergence:** OpenAI ("short and routing-oriented") and Anthropic ("concise and high-priority") both endorse the split — consistent with the minimal-root guidance on this page. ^[extracted]
- **Measured claim (single-team anecdote):** splitting a 600-line file (80-line entry + three topic docs) lifted task success 45% → 72% and security-constraint compliance 60% → 95%; no eval methodology given. ^[ambiguous]

This extends the "Ball of mud" failure mode (2026-08-07, Matt Pocock) with quantified mechanisms and a concrete refactor recipe; both sources agree on minimal root + progressive disclosure. ^[inferred]

## Relationship to Other Concepts

- [[concepts/context-engineering]] — AGENTS.md is a context-engineering artifact; its quality is a token-selection problem
- [[concepts/instruction-budget]] — the budget that caps how much AGENTS.md may reasonably hold
- [[concepts/progressive-disclosure-forms]] — the mechanism that keeps the root file small
- [[concepts/claude-doctor]] — the /doctor command that automates rightsizing CLAUDE.md/AGENTS.md for newer models
- [[concepts/instruction-rot]] — Matt Pocock's related concept for instruction bloat in agent memory files ^[inferred]
- [[concepts/agent-readable-docs]] — the broader discipline of documentation written for agents

## Open Questions

- Where the line between "AGENTS.md + doc tree" and "agent skills" falls as a progressive-disclosure mechanism is not settled; Matt Pocock defers it to a separate article. ^[ambiguous]

## Sources

- "A Complete Guide To AGENTS.md" — Matt Pocock, AI Hero, https://www.aihero.dev/a-complete-guide-to-agents-md
