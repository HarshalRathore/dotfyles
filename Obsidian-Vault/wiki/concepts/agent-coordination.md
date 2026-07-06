---
title: Agent Coordination
category: concepts
tags:
- agent-coordination
- multi-agent
- parallel-agents
- merging
- orchestration
- aief2025
sources:
- AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
relationships:
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: enables
- target:
  - - concepts/critic-agents|Critic Agents
  type: implements
- target:
  - - concepts/octopus-merge|Octopus Merge
  type: implements
- target:
  - - concepts/multi-agent-workflows|Multi-Agent Workflows
  type: extends
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Agent Coordination
---

# Agent Coordination

Agent coordination is the practice of managing multiple AI agents working in parallel — decomposing tasks, assigning them to agents, monitoring progress, and consolidating results. Effective coordination is the difference between parallel agents that accelerate development and parallel agents that create chaos. ^[extracted]

## The Coordination Problem

When multiple agents work in parallel, the coordination challenges include:
- **Task decomposition**: Breaking complex work into agent-sized tasks
- **Assignment**: Matching tasks to the right agents
- **Conflict detection**: Identifying when agents work on overlapping code
- **Merge coordination**: Bringing parallel outputs together cleanly
- **Quality assurance**: Ensuring all outputs meet standards ^[extracted]

## Coordination Mechanisms

### Task Queue

Tasks are submitted to a queue and assigned to agents:
- Agents pull tasks from the queue
- Each agent works independently
- Results are submitted as PRs ^[inferred]

### Critic/Merging Agents

Specialized agents review and consolidate parallel work:
- **Reviewer critics** evaluate code quality
- **Merger critics** handle the octopus merge ^[extracted]

### Definition of Success

A clear definition of success (test suites, coverage metrics) serves as the coordination anchor. Without it, merging parallel work is impossible. ^[extracted]

## Coordination at Scale

As the number of parallel agents increases:
- Task decomposition becomes more complex
- Conflict detection becomes more frequent
- Merge coordination becomes more critical
- Quality assurance becomes more important ^[inferred]

## Related Pages

- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Where coordination is applied
- [[concepts/critic-agents|Critic Agents]] — Coordination mechanism
- [[concepts/octopus-merge|Octopus Merge]] — Merge coordination
- [[concepts/multi-agent-workflows|Multi-Agent Workflows]] — Broader patterns
- [[concepts/definition-of-success-parallel-agents|Definition of Success for Parallel Agents]] — Coordination anchor
