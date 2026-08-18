---
title: Atomic Planning for AI Coding
category: concepts
tags: [planning, ai-coding, task-decomposition, atomic-tasks, writing-plans]
aliases: [atomic-planning, micro-task-planning]
relationships:
  - target: '[[concepts/superpowers-ai-coding-framework]]'
    type: used-by
  - target: '[[concepts/llm-structural-discipline]]'
    type: relates_to
  - target: '[[concepts/executing-plans]]'
    type: paired-with
sources:
  - https://x.com/Yamik1shi/status/2066558238594576630
summary: An approach where AI coding plans are broken into micro-tasks (2-5 minutes each) with exact file targets, line modifications, and verification criteria.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-08-18
tier: supporting
created: 2026-08-18T17:36:03Z
updated: 2026-08-18T17:36:03Z
---

# Atomic Planning for AI Coding

**Atomic planning** is a task decomposition strategy where complex development work is broken into micro-tasks that each take 2-5 minutes of execution time. Each micro-task specifies exact files, exact line modifications, and explicit verification criteria.

## Description

The approach is implemented via the `writing-plans` skill as part of the SuperPowers framework. It operates in two phases:

### Phase 1: Atomic Planning (`writing-plans`)
The approved specification is broken down into micro-tasks. Each task is:
- Throttled to 2-5 minutes of execution time
- Mapped with exact file targets and line modifications
- Given explicit verification criteria

### Phase 2: Batch Execution (`executing-plans`)
A sequential execution mode where the AI processes the plan step-by-step. Each step serves as a controlled checkpoint to synchronize progress with the developer.

## Benefits

- **Prevents context loss**: Small tasks keep the LLM's context focused and prevent it from losing the thread on complex multi-step work
- **Enables verification**: Each micro-task can be independently verified before proceeding to the next
- **Reduces cascading failures**: If one task fails, it doesn't corrupt the entire project state
- **Allows human oversight**: Checkpoints between steps let the developer verify progress

## Comparison to Non-Atomic Approaches

In non-atomic approaches, the LLM receives a monolithic goal (e.g., "build an X post generation studio") and immediately starts coding. This leads to the "junior-dev psychology" problem — the model rushes, makes silent assumptions, and breaks unrelated parts of the codebase.

## Related Concepts

- [[concepts/superpowers-ai-coding-framework]] — Framework that uses atomic planning as its Module 3
- [[concepts/llm-structural-discipline]] — The high-level thesis that LLMs need structured planning
- [[concepts/executing-plans]] — The batch execution phase that follows atomic planning
- [[concepts/subagent-driven-development]] — Sub-agents execute individual micro-tasks
- [[concepts/brainstorming]] — The preparation phase that precedes planning

## Open Questions

- What is the optimal micro-task granularity? Too small wastes context on overhead; too large loses the benefit.
- How does atomic planning compare to other decomposition strategies (top-down vs. bottom-up task generation)?^[inferred]
- Does the approach work better with specific LLMs or context window sizes?
- How does it handle tasks where the decomposition itself is ambiguous or requires exploration?^[inferred]

