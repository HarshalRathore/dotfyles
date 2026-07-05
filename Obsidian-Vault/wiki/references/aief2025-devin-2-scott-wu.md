---
title: "AIEF2025 - Devin 2.0 and the Future of SWE — Scott Wu, Cognition"
category: references
tags:
  - aief2025
  - talk
  - devin
  - cognition
  - scott-wu
  - ai-agents
  - software-engineering
sources:
  - "[[sources/watchv=mi83but_23o]]"
summary: "Scott Wu (Cognition) presents Moore's Law for AI agents (70-day doubling in code), traces the tiered evolution from tab completion to cross-file diagnosis, and explains why agent interfaces change every 2-3 months."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AIEF2025 - Devin 2.0 and the Future of SWE

**Speaker:** Scott Wu, Founder and CEO of Cognition
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=MI83buT_23o

## Summary

Scott Wu presents the evolution of AI software engineering agents over 12-18 months of building Devin, introducing the concept of "Moore's Law for AI agents" and tracing the capability tiers from tab completion to cross-file diagnosis.

## Key Themes

### 1. Moore's Law for AI Agents

The capability of an AI agent — measured as uninterrupted work before human intervention — follows exponential growth:

- **General LLMs**: ~7 month doubling time (GPT-3 → GPT-3.5 → GPT-4)
- **Code-specific**: ~70 day doubling time (2-3 months)
- **Annual impact**: 16-64x improvement per year (4-6 doublings)

This has been consistent for the last several years observed. ^[extracted]

### 2. The Tiered Evolution of Agent Capabilities

Each tier represents a step change in what agents can reliably do:

| Tier | Capability | Timeframe | Key Challenge |
|------|-----------|-----------|---------------|
| 1 | Tab completion (line prediction) | Late 2023 | Basic language modeling |
| 2 | Repetitive migrations (JS→TS, Angular upgrades) | Summer 2024 | Instruction following |
| 3 | Isolated bug fixes and features | Fall 2024 | Repo setup, CI execution |
| 4 | Cross-file diagnosis and fixes | Late 2024 | Code hierarchy understanding |

### 3. Interface Evolution

The right way to interact with agents changes every 2-3 months. As capabilities advance to the next tier, the bottleneck shifts and the optimal interface changes. This means:

- There is no single "right" agent UX
- Each capability tier has its own optimal interaction model
- The field is in rapid flux — what works today may be obsolete in months

### 4. Key Systems Built for Devin

- **Playbooks** — Step-by-step instruction system for reliable migration execution
- **Repository snapshots** — Set up, snapshot, reload, and roll back repository states
- **Agent memory/knowledge** — Maintain learnings across repeated tasks
- **Code hierarchy understanding** — Call hierarchies, language servers, git commit history

### 5. The Pattern of AI Adoption

AI consistently takes over the most tedious, repetitive, boilerplate work first, freeing humans for more creative tasks. This pattern has held from tab completion through to cross-file diagnosis.

## Notable Quotes

- "If you think about doubling every 70 days, every two to three months means you get four to six doublings every year, which means the amount of work an AI agent can do in code goes something between 16 and 64x in a year."
- "The answer to what is the right interface or the most important capabilities to solve for actually is: it changes every two or three months."
- "AI has always done these more boilerplate tasks and the more tedious stuff and the more repetitive stuff, and we get to do the more fun creative stuff."

## Related Pages

- [[entities/scott-wu]] — Speaker and founder of Cognition
- [[entities/cognition]] — Company behind Devin
- [[entities/devin]] — AI agent product
- [[concepts/moore-law-for-ai-agents]] — Moore's Law for AI agents framework
- [[concepts/agent-capability-tiers]] — Tiered evolution of agent capabilities
- [[concepts/playbook-pattern]] — Playbook pattern for step-by-step execution
- [[concepts/agent-memory-knowledge]] — Agent memory and knowledge retention
- [[concepts/agent-interfaces-evolution]] — Interface evolution as capabilities advance
- [[concepts/repetitive-migrations]] — Repetitive migrations as first PMF use case
