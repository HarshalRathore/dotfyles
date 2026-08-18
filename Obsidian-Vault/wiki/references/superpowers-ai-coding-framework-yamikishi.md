---
title: SuperPowers AI Coding Framework — Source Article
category: references
tags: [superpowers, ai-coding, claude-code, skill-framework, twitter-article]
aliases: [superpowers-framework-yamikishi]
relationships:
  - target: '[[concepts/superpowers-ai-coding-framework]]'
    type: describes
  - target: '[[concepts/llm-junior-dev-psychology]]'
    type: identifies-problem
  - target: '[[concepts/llm-structural-discipline]]'
    type: core-thesis
  - target: '[[entities/yamikishi]]'
    type: authored-by
sources:
  - https://x.com/Yamik1shi/status/2066558238594576630
summary: Source article by Yamikishi describing the SuperPowers framework — a skill-based system that enforces structured, disciplined AI development across 6 modules.
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: 2026-08-18
tier: supporting
created: 2026-08-18T17:36:03Z
updated: 2026-08-18T17:36:03Z
---

# SuperPowers AI Coding Framework — Source Article

Source article by **Yamikishi** (@Yamik1shi), published on X/Twitter on 2026-06-15.

> The article describes the "SuperPowers" framework — a set of AI coding skills that enforce structured, disciplined AI development. It arose from the author's frustration with AI coding tools (Claude Code, Cursor) making changes that broke unrelated parts of their project.

## Article Details

- **Title:** The Superpower No One Is Using: How to Turn Claude into Your Dev Team
- **Platform:** X/Twitter (long-form article format)
- **Author:** Yamikishi (@Yamik1shi)
- **Published:** 2026-06-15
- **Engagement:** 124 likes, 10 reposts, 10 replies, 233 bookmarks, 175,998 views
- **Substack:** yamikishi.substack.com

## The 6 Modules of the SuperPowers Framework

### 1. Preparation & Design — Think and Interrogate Before Coding

Before writing any code, proposing a diff, or touching the terminal, the AI is strictly forbidden from generating code. It must analyze the task and think through it first. LLMs are hardwired to be overly optimistic people-pleasers that rush into code, making silent assumptions about architecture, state management, and API routes. The Brainstorming Skill forces the AI to slow down and map out the blueprint before laying a single brick.^[inferred]

### 2. Isolation & Environment — using-git-worktrees

The framework uses `git worktree` to spin up isolated workspaces for each task. Benefits:
- **Absolute safety** — agent work goes to a separate temporary directory on a fresh branch; the main branch stays untouched
- **Clean baseline** — tests run under ideal conditions, isolated from local junk
- **Effortless rollbacks** — if the agent goes rogue, the temporary worktree is destroyed, the primary environment stays clean

### 3. Planning & Decomposition — writing-plans + executing-plans

- **Atomic Planning** (`writing-plans`): Breaks the approved specification into micro-tasks (2-5 minutes each), mapping exact files, exact line modifications, and explicit verification criteria
- **Batch Execution** (`executing-plans`): Sequential execution where the AI processes the plan step-by-step, making controlled checkpoints to synchronize with the developer

### 4. Autonomous Execution & Quality Control — subagent-driven-development

- **Sub-agents**: The main agent spawns isolated, single-purpose "mini sub-agents" for each micro-task
- **Two-Phase Code Review**: (1) Spec Compliance — verifying output matches the design; (2) Code Quality — ensuring clean code with zero technical debt

### 5. Testing & Validation — test-driven-development + verification-before-completion

- **Strict TDD** (`test-driven-development`): The model must follow Red-Green-Refactor. Write a failing test first, run it to confirm failure, then write implementation. Any code written prior to its test must be deleted
- **Autonomous Checks** (`verification-before-completion`): Before handing work over, the AI autonomously triggers the build pipeline, runs linters, and passes all test suites — backend and frontend — outputting a clean success log

### 6. Debugging & Meta-Features — systematic-debugging + defense-in-depth + writing-skills + finishing-a-development-branch

- **Systematic Debugging** (`systematic-debugging`): Forbids guessing-based fixes. Enforces a 4-phase Root Cause Analysis to isolate failure, trace execution flow, and write a reproduction test before patching
- **Defense-in-depth**: When fixing a bug, the AI must inject defensive checks (guard clauses) into adjacent system nodes to prevent similar regressions
- **Self-Extension** (`writing-skills`): Forces the AI to write new automated skills for itself with test suites
- **Branch Finalization** (`finishing-a-development-branch`): Automated teardown presenting explicit options to merge, open a PR, stash, or abort the branch while summarizing final changes

## Core Thesis

The fundamental limitation of modern neural networks is not lack of raw intelligence — it is lack of structural discipline.^[inferred] LLMs are inherently terrible at solving massive, monolithic problems all at once. If handed a giant multi-step goal, they take shortcuts, lose the context thread, and deliver half-baked results. The SuperPowers framework forces the AI to step back, brainstorm, construct an ironclad specification, and atomize execution into tiny bite-sized sub-tasks.

The author applies this framework to domains beyond programming — content strategy, deep research, business workflows — because the core problem is domain-agnostic.^[inferred]

## Open Questions

- How does the SuperPowers framework compare to other AI coding frameworks (Ralph technique, agent-loop patterns)?
- What are the specific skill files that compose the framework? Are they available as open-source?
- Does the framework require a specific LLM or can it work with any capable model?
- How does the Brainstorming Skill's "interrogation" phase interact with the model's token limits on long-context tasks?
- The author mentions 4 options presented at the end of `subagent-driven-development` execution — what are those options?

## Sources

- [x.com/Yamik1shi/status/2066558238594576630](https://x.com/Yamik1shi/status/2066558238594576630) — Original article (2026-06-15)
- [yamikishi.substack.com](https://yamikishi.substack.com) — Author's Substack
