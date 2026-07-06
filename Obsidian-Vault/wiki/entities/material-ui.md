---
title: Material UI
category: entities
tags:
- entity
- framework
- ui-library
- react
- aief2025
aliases:
- MUI
- material-ui
sources:
- 'AIEF2025 - Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments - Harald Kirshner, - https://www.youtube.com/watch?v=i1uPAN6uW4s'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/react|React]]'
  type: built-for
- target: '[[concepts/vibe-coding|Vibe Coding]]'
  type: used-by
summary: Material UI
---

# Material UI

Material UI (MUI) is a React component library implementing Google's Material Design system. It was used in Harald Kirshner's AIEF2025 demo as the design framework for a water hydration tracking app built via [[concepts/vibe-coding|vibe coding]] with [[entities/github-copilot|GitHub Copilot]] in [[entities/vs-code|VS Code]] Agent Mode.

## Role in Structured Vibe Coding

Specifying a design framework like Material UI in the initial prompt is a key technique in structured vibe coding: it gives the AI model a concrete design system to work within, reducing variability and ensuring the output matches the team's design expectations. Without such specification, models may pick any framework (Tailwind, Bootstrap, etc.) or produce inconsistent styling. ^[extracted]

## Connection to AI Design Sense

The choice of design framework interacts with [[concepts/ai-design-sense|AI model design sense]] — different models handle Material UI differently. Claude Sonnet 4 was noted as producing the best Material UI output in Kirshner's comparison, while older Claude versions tended to default to blockchain-style aesthetics regardless of the specified framework. ^[extracted]
