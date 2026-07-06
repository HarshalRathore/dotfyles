---
title: Material Design and Fluent Design in AI Generation
category: concepts
tags:
- design-systems
- github-copilot
- vibe-coding
- ui
- google
- microsoft
sources:
- 'https://www.youtube.com/watch?v=eafp8pds7h4'
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Material Design and Fluent Design in AI Generation
---

# Material Design and Fluent Design in AI Generation

Material Design (Google) and Fluent Design (Microsoft) are two major design systems that AI coding assistants can generate from natural language instructions. Harold's AIEF2025 workshop demonstrates both side by side. ^[extracted]

## Material Design

Material Design is described as producing more polished, colorful, and icon-rich outputs from AI. In Harold's demo, the Material Design version of a hydration app had nice colors, icons, and a more finished look. Claude was noted as "definitely usually rocking the icons" with good color sense. ^[extracted]

## Fluent Design

Fluent Design (Microsoft's design system) produced a "more corporate" result — functional but "a little plain" compared to Material Design. The same feature set was implemented but with a different visual character. ^[extracted]

## AI Design Sense

A key finding from the workshop: different AI models produce different design quality. The ability to give a high-level design direction ("use Material Design") and evaluate the output is how Harold gauges an AI model's design sense. ^[extracted] This is a form of [[concepts/ai-evaluation-market-history|AI evaluation]] through design output quality.

## Enterprise Implications

In enterprise contexts, the choice of design system is not arbitrary — it's determined by the company's internal design system. Structured vibe coding with starter templates ensures the AI generates code using the correct design system rather than defaulting to whatever is top-of-training. ^[extracted]

## Related

- [[concepts/stack-selection-ai-code]] — Stack selection principles including design systems
- [[concepts/yolo-structured-spectrum-vibe-coding]] — YOLO stage where design system exploration is central
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[references/aief2025-vibe-coding-at-scale-harold.js]] — Harold's AIEF2025 workshop
