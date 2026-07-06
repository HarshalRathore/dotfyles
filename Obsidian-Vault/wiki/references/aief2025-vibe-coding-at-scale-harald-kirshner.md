---
title: 'AIEF2025 - Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments - Harald Kirshner'
category: references
tags:
- aief2025
- vibe-coding
- enterprise-ai
- vscode
- github-copilot
- mcp
- templates
- model-comparison
aliases:
- vibe-coding-at-scale
- kirshner-vibe-coding-aief2025
sources:
- 'AIEF2025 - Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments - Harald Kirshner, - https://www.youtube.com/watch?v=i1uPAN6uW4s'
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/aief2025|AI Engineer World''s Fair 2025]]'
  type: part-of
- target: '[[entities/harald-kirshner|Harald Kirshner]]'
  type: by
- target: '[[entities/microsoft|Microsoft]]'
  type: by
- target: '[[concepts/yolo-structured-spectrum-vibe-coding|YOLO, Structured, Spec-Driven Spectrum of Vibe Coding]]'
  type: introduces
- target: '[[concepts/ai-design-sense|AI Design Sense]]'
  type: demonstrates
summary: 'Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments'
---

# Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments

**Speaker:** Harald Kirshner, Microsoft (VS Code / GitHub Copilot)
**Event:** AI Engineer World's Fair 2025 (AIEF2025)
**Video:** https://www.youtube.com/watch?v=i1uPAN6uW4s

## TL;DR

Harald Kirshner presents a practical framework for taking [[concepts/vibe-coding|vibe coding]] from chaotic experimentation to enterprise-grade engineering practice. He introduces a three-stage maturity spectrum (YOLO → Structured → Spec-Driven), demonstrates VS Code Agent Mode features (auto-approve, voice dictation, new workspace flow), compares model design sense across Claude Sonnet 4 / GPT 4.1 / Gemini 2.5 Pro, and shows how templates, conventions, and [[concepts/model-context-protocol|MCP]] custom tools enable enterprise customization of AI assistants.

## Key Concepts

### The Vibe Coding Spectrum

Three maturity stages for vibe coding:

1. **YOLO Vibes** — Creative exploration, auto-approve, no code review, rapid iteration. For prototyping, learning, personal projects, and building AI intuition. Not for production.
2. **Structured Vibes** — Template-based guardrails, consistent tech stack, Copilot Instructions, custom MCP tools. Enterprise-ready, handoff-safe.
3. **Spec-Driven Vibes** — Scales to large codebases, team-wide velocity, generated code fits existing architecture. The end goal for enterprise teams.

### VS Code Agent Mode Demo

Kirshner demonstrated a complete YOLO vibe coding workflow:

- Created a water hydration tracking app using React + Material UI + Apple-esque design
- Used `copilot new` for new workspace flow
- Enabled auto-approve to skip confirmation buttons
- Used voice dictation (Command-I, local model)
- Showed visual context via Simple Browser preview
- Demonstrated checkpoint/undo system

### Model Design Sense Comparison

| Model | UI Design Quality |
|-------|-------------------|
| Claude Sonnet 4 | Best — polished, Apple-esque, good color/icon sense |
| GPT 4.1 | Wireframe-y, less polished |
| Gemini 2.5 Pro | Interesting but inconsistent design sense |
| Claude (older) | Blockchain landing pages (gradients, dark, big letters) when under-specified |

### Enterprise Customization

Three pillars for enterprise-grade vibe coding:

1. **Templates** — Consistent tech stack and project structure
2. **Copilot Instructions** — `.github/copilot-instructions.md` for team conventions
3. **Custom Tools (MCP)** — Domain knowledge and context for the agent

## Notable Quotes

- "We want to fully give in to the vibes in this presentation"
- "YOLO Vibe Coding... not meant to ship to production"
- "Structured Vibes are where you bring actually that enterprise state in the end that somebody you feel comfortable handing it over"
- "Spec-driven Vibes... where I think most of you probably want to end up"
- "Use YOLO Vibe Coding... to build that AI intuition. Like, what is AI good at? What AI can't do yet?"
