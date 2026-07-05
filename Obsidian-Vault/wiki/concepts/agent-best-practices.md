---
title: "Agent Best Practices"
category: concepts
tags: [agent-best-practices, coding-agents, prompt-strategy, agent-workflow, getting-started]
summary: Practical best practices for using coding agents: start small with single-commit tasks, be specific about what and how, mention frameworks and strategies, target tasks with clear definitions of done.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-driven-development|Agent-Driven Development]]"
    type: related_to
  - target: "[[concepts/ai-intuition|AI Intuition]]"
    type: related_to
  - target: "[[concepts/assistive-vs-automation-agents|Assistive vs Automation Agents]]"
    type: related_to
---

# Agent Best Practices

Practical guidance for using coding agents effectively, distilled from Robert Brennan's experience building and using OpenHands. ^[extracted]

## 1. Start Small

The best tasks for getting started:

- **Single-commit tasks** — Small, contained changes
- **Clear definition of done** — Tests passing, merge conflicts resolved, lint errors fixed
- **Easy to verify** — You as an engineer can quickly confirm correctness
- **Rote work** — Failing tests, lint errors, merge conflicts — bits of toil agents excel at ^[extracted]

These tasks are ideal because they are well-defined, repeatable, and easy for both humans and agents to verify. ^[extracted]

## 2. Be Specific About What AND How

Don't just tell the agent what you want — tell it how you want it done:

- **Mention specific frameworks** — "Use Express.js" not "build an API"
- **Specify development strategies** — "Use test-driven development"
- **Name specific files or functions** — "Edit src/utils/format.ts" not "fix the formatting" ^[extracted]

## 3. Specificity Improves Both Accuracy and Speed

Being specific is not just about getting the right result — it also makes the agent faster:

- Less time exploring the codebase
- Fewer iterations needed
- More focused execution path ^[extracted]

## 4. Grow Gradually

As your intuition improves:

- Start with small chores (failing tests, lint errors)
- Progress to larger tasks
- Develop feel for communicating with agents effectively
- Eventually delegate ~90% of code through agents ^[extracted]

## 5. Use Agents in Parallel

You can send multiple agents at once for independent tasks, freeing you to focus on other work (communication, planning, or even "goofing off on Reddit" while agents work). ^[extracted]

## Related

- [[concepts/agent-driven-development|Agent-Driven Development]] — The workflow shift toward agent delegation
- [[concepts/ai-intuition|AI Intuition]] — Developing feel for working with agents
- [[concepts/agent-tools|Agent Tools]] — Understanding agent capabilities
- [[concepts/coding-is-going-away|Coding Is Going Away]] — The broader context for these practices
- [[entities/robert-brennan|Robert Brennan]] — Source of these practices
