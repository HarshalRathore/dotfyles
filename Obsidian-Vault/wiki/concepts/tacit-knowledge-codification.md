---
title: "Tacit Knowledge Codification"
category: concepts
tags:
  - knowledge-management
  - ai-native
  - organizational-learning
  - aief2025
aliases:
  - tacit knowledge codification
  - codifying tacit knowledge
summary: "The process of converting tacit knowledge (intuitions, patterns, and decisions accumulated by individual engineers) into explicit, shareable artifacts like prompts, sub-agents, and slash commands."
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
relationships:
  - target: "[[concepts/compounding-engineering|Compounding Engineering]]"
    type: implements
  - target: "[[concepts/level-of-stack|Level of Stack]]"
    type: related_to
  - target: "[[concepts/agent-workflow-loop|Agent Workflow Loop]]"
    type: related_to
---

# Tacit Knowledge Codification

**Tacit Knowledge Codification** is the process of converting tacit knowledge — the intuitions, patterns, and decisions that individual engineers accumulate through experience — into explicit, shareable artifacts that the entire organization can use.

## The Problem: Tacit Knowledge Is Hard to Share

In traditional engineering, tacit knowledge lives in individual engineers' heads. When an engineer finds a bug, figures out a tricky plan, or discovers a better way to delegate work to an AI agent, that knowledge is personal. It doesn't automatically spread to the rest of the team.

This creates two problems:

1. **Inconsistent quality**: Different engineers produce different quality work because they have different tacit knowledge.
2. **Slow onboarding**: New engineers must accumulate the same tacit knowledge through trial and error.

## The Solution: Codify Into Artifacts

The codification step in [[concepts/compounding-engineering|compounding engineering]] solves this by converting tacit knowledge into explicit artifacts:

### Prompts

Instructions that go into `.cursorrules`, `.clinerules`, or similar configuration files. These capture the patterns and decisions that individual engineers have learned.

### Sub-Agents

Specialized AI agents with their own instructions and capabilities, built from the patterns discovered during development.

### Slash Commands

Reusable commands for recurring tasks, encoded as prompts that any engineer can invoke.

### Libraries of Patterns

A growing collection of proven patterns that get spread across the entire organization.

## The Compounding Effect

When codification works well, it creates second-order effects:

- **Easier code sharing**: Tacit knowledge becomes trivially shareable across the organization
- **Faster iteration**: Each iteration benefits from the accumulated knowledge of all previous iterations
- **Natural buy-in**: As the system gets better through codification, more engineers adopt it, creating a self-reinforcing cycle

## Relationship to Level of Stack

Tacit knowledge codification is closely related to the [[concepts/level-of-stack|level of stack]] shift in AI-native engineering. As engineers move from writing code to writing English (instructions for agents), the tacit knowledge that was previously embedded in code patterns becomes embedded in prompt patterns — and prompt patterns are inherently more shareable than code patterns.

## Sources

- AIEF2025 - Dispatch from the Future: building an AI-native Company – Dan Shipper, Every, AI & I - https://www.youtube.com/watch?v=MGzymaYBiss
