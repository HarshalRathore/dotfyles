---
title: Brownfield-First AI Adoption
tags:
- concept
- ai-adoption
- devops
- workflow
- best-practice
aliases:
- brownfield before greenfield
- existing codebase AI
- brownfield AI learning
sources:
- 'https://www.youtube.com/watch?v=c1nivhys1si'
summary: Strategy of learning effective AI-assisted development by starting with existing brownfield codebases before attempting greenfield projects — grounded in the reality that most daily work is modifyi...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Brownfield-First AI Adoption

Brownfield-first AI adoption is the strategy of introducing AI-assisted development to teams through existing codebases rather than new greenfield projects. The approach was articulated by [[entities/jon-peck|Jon Peck]] of [[entities/github-copilot|GitHub]] at AI Engineer World's Fair 2025.

## Why Brownfield First

The temptation when adopting AI coding tools is to start greenfield — it's fun, impressive, and generates immediate excitement. However, this teaches the wrong patterns because most daily engineering work involves modifying existing applications. ^[extracted]

The learning progression Peck recommends:

1. **Start with real daily work** — swap an ORM version, generate tests for existing modules, add features to a mature codebase. This teaches prompt shaping and context management in realistic conditions. ^[extracted]
2. **[[concepts/context-engineering|Learn context engineering]]** — brownfield work forces developers to pick which files to include, how to scope prompts, and how to debug when the AI misunderstands the existing codebase. ^[inferred]
3. **Develop revert fluency** — greenfield encourages keeping everything; brownfield teaches when to revert 500 changes and try again, a skill Peck emphasizes as critical. ^[extracted]
4. **Only then go greenfield** — once teams have established effective interaction patterns, apply them to new project creation. ^[extracted]

## Relationship to [[concepts/agent-loop|Agent Mode]]

Agent mode in the IDE is particularly valuable for brownfield work: it autonomously narrows context by pulling in only relevant files and folders, scoping prompts to avoid overloading the model and preventing it from modifying unrelated code. ^[extracted]

## Related

- [[concepts/ai-powered-devops]] — AI applied across the full DevOps lifecycle
- [[concepts/copilot-instructions]] — Codifying team practices for AI consumption
- [[entities/github-copilot]] — The tool through which brownfield-first adoption is practiced
- [[entities/jon-peck]] — Speaker who articulated the approach

## Sources

- AIEF2025 — Unlocking AI Powered DevOps Within Your Organization, Jon Peck, GitHub. https://www.youtube.com/watch?v=C1NivhYS1sI
