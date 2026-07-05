---
title: "Anthropic Claude Agent Demo (AIEF2025)"
category: concepts
tags: [concept, ai-agents, claude, anthropic, excalidraw, aief2025]
summary: The Anthropic keynote demo at AIEF2025 where Claude's AI agent was shown reimplementing a table layout inside Excalidraw — demonstrating agentic coding in a whiteboard context.
sources: ["AIEF2025 - Excalidraw: AI and Human Whiteboarding Partnership - Christopher Chedeau - https://www.youtube.com/watch?v=aopgVJBQC0o"]
provenance: { extracted: 0.9, inferred: 0.1, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/anthropic]]"
    type: related_to
  - target: "[[entities/excalidraw]]"
    type: related_to
  - target: "[[entities/claude-code]]"
    type: related_to
---

# Anthropic Claude Agent Demo (AIEF2025)

During the Anthropic keynote at the AI Engineer World's Fair 2025, the team used [[Excalidraw|excalidraw]] to demonstrate [[Claude Code|claude-code]]'s AI agent capabilities. Specifically, they had the agent reimplement the most popular feature request for Excalidraw — a table layout — directly inside the whiteboard tool.

## Significance

This demo was notable for several reasons:

1. **Real tool, real feature request**: Rather than a synthetic benchmark, the agent was asked to implement the most requested feature on a real open-source project.
2. **Whiteboard context**: The agent had to understand the Excalidraw data model and rendering system, not just generate code in a vacuum.
3. **Open invitation**: [[Christopher Chedeau|christopher-chedeau]] joked that anyone working at Claude was welcome to submit a PR for the implementation — it hadn't been sent yet as of the talk.

## Connection to AI Integration Philosophy

The demo aligns with Chedeau's broader philosophy about [[AI integration patterns|ai-integration-patterns]]: rather than having AI generate visual content (which failed), having AI generate structured data that an existing tool renders (which worked). The Claude agent didn't draw tables — it generated the Excalidraw data structures that render as tables.
