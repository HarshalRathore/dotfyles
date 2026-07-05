---
title: "Agent-Driven Development Shift"
category: concepts
tags: [agent-driven-development, workflow, code-review, ide-workflow, productivity]
summary: The workflow shift where ~90% of code passes through an agent, with only ~10% requiring direct IDE work. Engineers become reviewers and spec-writers rather than primary code authors.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/coding-is-going-away|Coding Is Going Away]]"
    type: extends
  - target: "[[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]]"
    type: related_to
  - target: "[[concepts/agent-best-practices|Agent Best Practices]]"
    type: related_to
---

# Agent-Driven Development Shift

The workflow shift where the majority of code passes through an agent rather than being written directly by the engineer. At OpenHands, ~90% of code goes through the agent; only ~10% requires direct IDE work. ^[extracted]

## The New Workflow

The engineer's role shifts from primary code author to:

1. **Spec writer** — Communicating what the agent should build
2. **Reviewer** — Verifying agent output for correctness
3. **Architect** — Making high-level design decisions
4. **Problem solver** — Handling the ~10% of cases that need direct IDE work

## Benefits

- **Parallelism** — Send multiple agents at once for independent tasks
- **Focus** — Concentrate on communication, planning, and high-value work
- **Speed** — Agents work while engineers do other tasks
- **Consistency** — Agents follow specified patterns and frameworks uniformly ^[extracted]

## The 10% Rule

The remaining 10% of work that requires direct IDE involvement typically involves:

- Complex architectural decisions
- Ambiguous requirements needing human judgment
- Edge cases the agent couldn't handle
- Situations requiring deep domain context

## Related

- [[concepts/coding-is-going-away|Coding Is Going Away]] — The broader thesis
- [[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]] — The human role shift
- [[concepts/agent-best-practices|Agent Best Practices]] — How to use agents effectively
- [[concepts/agent-driven-development|Agent-Driven Development]] — The platform paradigm
- [[entities/robert-brennan|Robert Brennan]] — Source of the 90/10 observation
