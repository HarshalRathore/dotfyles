---
title: SuperPowers AI Coding Framework
category: concepts
tags: [superpowers, ai-coding, skill-framework, structured-development, discipline]
aliases: [superpowers-framework]
relationships:
  - target: '[[references/superpowers-ai-coding-framework-yamikishi]]'
    type: described-in
  - target: '[[concepts/llm-junior-dev-psychology]]'
    type: solves
  - target: '[[concepts/llm-structural-discipline]]'
    type: embodies
sources:
  - https://x.com/Yamik1shi/status/2066558238594576630
summary: A skill-based framework that enforces structured, disciplined AI development through six modules: preparation, isolation, planning, execution, testing, and debugging.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-08-18
tier: supporting
created: 2026-08-18T17:36:03Z
updated: 2026-08-18T17:36:03Z
---

# SuperPowers AI Coding Framework

The **SuperPowers** framework is a skill-based system for enforcing structured, disciplined AI-assisted software development. It was created by **Yamikishi** (@Yamik1shi) and published as an X/Twitter article in June 2026.^[inferred]

## Overview

The framework arose from the author's frustration with AI coding tools (Claude Code, Cursor) behaving like "hyperactive junior devs" — making changes that patched one bug while breaking unrelated parts of the codebase. The SuperPowers framework addresses this by imposing a rigid, multi-phase workflow that forces the AI to slow down, think, and execute systematically.

## Six Modules

### 1. Preparation & Design
The Brainstorming Skill forbids the AI from writing any code before analyzing the task. It forces a "think before act" mode where the AI maps out the blueprint before touching any file.^[inferred]

**Skills involved:** `brainstorming`

### 2. Isolation & Environment
Uses `git worktree` to give each task a clean, isolated workspace. Protects the main branch and enables effortless rollbacks if the agent goes rogue.

**Skills involved:** `using-git-worktrees`

### 3. Planning & Decomposition
Breaks specifications into micro-tasks (2-5 minutes each) with exact file targets, line modifications, and verification criteria. Executes them sequentially with controlled checkpoints.

**Skills involved:** `writing-plans`, `executing-plans`

### 4. Autonomous Execution & Quality Control
Spawns isolated sub-agents for each micro-task, with two-phase code review: (1) Spec Compliance, (2) Code Quality.

**Skills involved:** `subagent-driven-development`, `receiving-code-review`

### 5. Testing & Validation
Enforces strict TDD (Red-Green-Refactor) and requires autonomous build/lint/test execution before any work is handed to the developer.

**Skills involved:** `test-driven-development`, `verification-before-completion`

### 6. Debugging & Meta-Features
Systematic debugging (4-phase Root Cause Analysis), defense-in-depth guard clauses, self-extension capabilities (writing new skills), and automated branch finalization.

**Skills involved:** `systematic-debugging`, `finishing-a-development-branch`, `writing-skills`

## Philosophy

The core insight is that LLMs lack structural discipline, not raw intelligence. They fail on complex tasks because they take shortcuts and lose context threads when given monolithic goals. SuperPowers solves this by forcing decomposition into atomic, verifiable steps.

## Open Questions

- How does SuperPowers compare to the Ralph coding technique, agent-loop patterns, or other structured AI development methodologies?
- What are the actual skill files, and are they available as open source?
- Does it require a specific model or work across multiple LLMs?
- The author applies SuperPowers beyond coding (content strategy, business workflows) — what modifications does the framework require for non-software domains?^[inferred]

## See Also

- [[concepts/llm-junior-dev-psychology]] — The core problem SuperPowers addresses
- [[concepts/llm-structural-discipline]] — The high-level thesis
- [[concepts/ralph-coding-technique]] — Alternative structured AI coding approach
- [[references/superpowers-ai-coding-framework-yamikishi]] — Source article
