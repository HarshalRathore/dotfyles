---
title: "Agent Workflow Loop"
category: concepts
tags:
  - agent-workflow
  - engineering-methodology
  - ai-native
  - aief2025
aliases:
  - agent workflow loop
  - plan-delegate-assess-codify
summary: "The four-step loop (plan, delegate, assess, codify) that structures how engineers work with AI agents, forming the operational core of compounding engineering."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/compounding-engineering|Compounding Engineering]]"
    type: implements
  - target: "[[concepts/tacit-knowledge-codification|Tacit Knowledge Codification]]"
    type: extends
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: related_to
  - target: "[[concepts/agent-evaluations|Agent Evaluations]]"
    type: related_to
---

# Agent Workflow Loop

The **Agent Workflow Loop** is the four-step operational cycle that structures how engineers work with AI agents in an AI-native engineering organization. It forms the core mechanism of [[concepts/compounding-engineering|compounding engineering]].

## The Four Steps

### 1. Plan

Create a detailed plan before delegation. The quality of the plan directly affects the quality of the agent's output. Planning is where the engineer thinks through the problem, considers edge cases, and designs the approach. This step generates tacit knowledge — intuitions and trade-off decisions that will later be codified.

### 2. Delegate

Tell the AI agent what to do. The plan is translated into instructions for the agent (Claude Code, Codex, Droid, etc.). The agent then produces code or other deliverables based on these instructions.

### 3. Assess

Evaluate whether the agent's output is correct and complete. Multiple assessment methods are typically used in combination:

- **Tests**: Automated test suites verify correctness
- **Manual review**: The engineer tries the feature or reviews the code
- **Agent code review**: The agent reviews its own work
- **Human code review**: Traditional code review by another engineer

### 4. Codify

Capture all tacit knowledge from the planning, delegation, and assessment phases into explicit, shareable artifacts. This is the step that makes the loop compounding rather than linear:

- Prompts for `.cursorrules` / `.clinerules`
- Sub-agents with specialized instructions
- Slash commands for recurring tasks
- A growing library of proven patterns

## Why It's a Loop, Not a Pipeline

The key distinction from a linear pipeline is that step 4 (codify) feeds back into step 1 (plan) for future iterations. The knowledge captured in codification makes future planning better, which makes future delegation more effective, which reduces assessment overhead, which generates more knowledge to codify. This is what creates the compounding effect.

## Comparison to Agent Loop

The [[concepts/agent-loop|agent loop]] (observe → think → act → repeat) describes how a single AI agent operates autonomously. The agent workflow loop describes how a human engineer orchestrates AI agents. They operate at different levels but are complementary — the human's workflow loop contains multiple agent loops within each delegation step.

## Sources

- AIEF2025 - Dispatch from the Future: building an AI-native Company – Dan Shipper, Every, AI & I - https://www.youtube.com/watch?v=MGzymaYBiss
