---
title: "Compounding Engineering"
category: concepts
tags:
  - engineering-methodology
  - ai-native
  - knowledge-management
  - aief2025
aliases:
  - compounding engineering
summary: "Engineering methodology where each feature makes the next easier, using plan-delegate-assess-codify loop to capture tacit knowledge."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-04
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-workflow-loop|Agent Workflow Loop]]"
    type: implements
  - target: "[[concepts/tacit-knowledge-codification|Tacit Knowledge Codification]]"
    type: extends
  - target: "[[concepts/ai-native-company|AI-Native Company]]"
    type: related_to
  - target: "[[concepts/demo-culture|Demo Culture]]"
    type: related_to
---

# Compounding Engineering

**Compounding Engineering** is an engineering methodology where each feature makes the next feature easier to build, as opposed to traditional engineering where each feature makes the next harder. Coined by [[entities/dan-shipper|Dan Shipper]] at [[entities/every-company|Every]], it represents a fundamental shift in how engineering organizations should think about technical debt and knowledge accumulation.

## The Core Insight

In traditional engineering, each new feature adds complexity to the codebase, making subsequent features harder and more expensive to build. Technical debt accumulates. In compounding engineering, the goal is inverted: each feature should make the next one easier. This is achieved by systematically capturing the knowledge gained during development and feeding it back into the engineering process.

## The Four-Step Loop

Compounding engineering operates as a continuous loop with four steps:

### 1. Plan

Create a detailed plan before any delegation. This is where the team thinks through the problem, considers edge cases, and designs the approach. The planning stage generates tacit knowledge — intuitions, decisions, and trade-offs that engineers develop during the work.

### 2. Delegate

Tell the AI agent what to do. The plan is translated into instructions for the agent (Claude Code, Codex, Droid, etc.). This is the execution phase where the agent produces code or other deliverables.

### 3. Assess

Evaluate whether the agent's output is correct and complete. Assessment methods include:

- Automated tests
- Manual review / trying the feature
- Agent code review (the agent reviews its own work)
- Human code review
- Multiple assessment techniques applied in combination

### 4. Codify

This is the "money step" — the step that makes compounding possible. All tacit knowledge gathered during planning, delegation, and assessment is converted into explicit, shareable artifacts:

- Prompts that go into `.cursorrules` or `.clinerules` files
- Sub-agents with specialized capabilities
- Slash commands for recurring tasks
- A growing library of proven patterns

The tacit knowledge that individual engineers accumulate while finding bugs, making plans, and delegating work becomes an explicit collection that the entire organization can use.

## Second-Order Effects

Shipper identifies several interesting second-order effects of compounding engineering:

### Tacit Code Sharing Becomes Easier

When knowledge is codified into prompts and tools, it becomes trivially shareable across the organization. Instead of relying on tribal knowledge or documentation that no one reads, every engineer has access to the same proven patterns and instructions.

### Buy-In Through Results

The compounding loop creates a self-reinforcing cycle: as more knowledge is codified, the agents get better, which makes engineers more productive, which encourages 100% adoption, which makes the agents even better. This creates a natural path to getting the entire organization to use AI tools 100% of the time.

## Relationship to Other Concepts

Compounding engineering is closely related to [[concepts/agent-workflow-loop|agent workflow loops]] but extends them by explicitly adding the codification step as the mechanism for compounding. It also enables [[concepts/demo-culture|demo culture]] by making rapid prototyping and iteration the default mode of operation.

## Sources

- AIEF2025 - Dispatch from the Future: building an AI-native Company – Dan Shipper, Every, AI & I - https://www.youtube.com/watch?v=MGzymaYBiss
- AIEF2025 - Building a 10 person unicorn - Max Brodeur-Urbas, Gumloop - https://www.youtube.com/watch?v=Qw9P1zvCupE
