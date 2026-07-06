---
title: Greenfield vs Brownfield
category: concepts
tags:
- software-engineering
- ai
- methodology
- productivity
aliases:
- Greenfield vs Brownfield
- Greenfield Projects
- Brownfield Projects
sources:
- AIEF2025 - Does AI Actually Boost Developer Productivity? (100k Devs Study) - Yegor Denisov-Blanch, Stanford - https://www.youtube.com/watch?v=tbDDYKRFjhk
summary: Most software engineering is brownfield (existing codebases with dependencies), not greenfield (from-scratch). AI excels at greenfield boilerplate, so lab studies showing AI's massive advantage in...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/ai-productivity-measurement|AI Productivity Measurement]]'
  type: related_to
- target: '[[concepts/ai-developer-productivity|AI Developer Productivity]]'
  type: related_to
- target: '[[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]]'
  type: related_to
---

# Greenfield vs Brownfield

The distinction between greenfield and brownfield software engineering is critical for understanding AI coding tools' real-world impact.

## Definitions

| Type | Description | Prevalence |
|------|-------------|------------|
| **Greenfield** | Building from scratch with zero context | Rare in practice |
| **Brownfield** | Working with existing codebases, dependencies, and context | Most software engineering |

## The AI Greenfield Advantage

AI coding tools excel at greenfield tasks:
- They are "really good at greenfield kind of boilerplate code"
- Lab studies that give AI tools from-scratch tasks show AI "decimating" non-AI teams
- This creates a misleading impression of AI's capabilities ^[extracted]

## The Brownfield Reality

Most software engineering is brownfield:
- Existing codebases with complex dependencies
- Deep context about business logic and architecture
- Integration with other systems
- Technical debt and legacy patterns

AI tools have a harder time in brownfield contexts because they lack the deep institutional knowledge that human developers have accumulated. The Stanford study argues that greenfield lab studies "can't be applied too well" to these situations. ^[extracted]

## Implications for AI Adoption

- Organizations expecting greenfield-level productivity gains from AI in brownfield contexts will be disappointed
- AI's real value in brownfield is as an augmentation tool, not a replacement
- The 15–20% net productivity boost found by Stanford likely reflects brownfield conditions

## Related Concepts

- [[concepts/ai-productivity-measurement|AI Productivity Measurement]] — methodology critique
- [[concepts/ai-developer-productivity|AI Developer Productivity]] — broader productivity topic
- [[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]] — why lab studies mislead
