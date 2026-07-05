---
title: "Octopus Merge"
category: concepts
tags:
  - merge
  - parallel-agents
  - agent-coordination
  - git
  - consolidation
  - aief2025
sources:
  - "AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8"
relationships:
  - target: [[concepts/parallel-agent-workflows|Parallel Agent Workflows]]
    type: enables
  - target: [[concepts/agent-coordination|Agent Coordination]]
    type: implements
  - target: [[concepts/definition-of-success-parallel-agents|Definition of Success for Parallel Agents]]
    type: depends_on
  - target: [[concepts/critic-agents|Critic Agents]]
    type: related_to
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Octopus Merge

The octopus merge is a pattern for consolidating multiple parallel agent outputs into a single branch or PR. Named after the "octopus merge" in git terminology (merging multiple branches into one), it represents the critical end-stage of parallel agent workflows. ^[extracted]

## The Problem

When multiple agents work in parallel on different tasks or variations, their outputs end up in separate branches. Bringing these together requires a merge strategy that can handle:
- Conflicting changes across branches
- Ensuring all tests still pass after merge
- Maintaining code quality across merged code
- Avoiding merge conflicts that drive developers "crazy" ^[extracted]

## The Pattern

1. **Parallel execution**: Multiple agents work on separate branches simultaneously
2. **Individual testing**: Each agent runs its own test suite on its branch
3. **Critic review**: A critic/merging agent reviews all branches for conflicts and quality
4. **Consolidated merge**: All branches are merged into the main branch
5. **Final validation**: Full test suite runs on the merged result ^[extracted]

## Why It's Hard

Banks noted in his AIEF2025 demo that he "ran out of time to finish the merge" and that "Jules should help me with this merge, and it's called an octopus merge. So surely Jules as a squid should help with the octopus merge." ^[extracted] This humorous observation highlights that octopus merging is a known challenge that agents themselves should solve.

The merge is hard because:
- **Conflict resolution** requires understanding the intent of multiple parallel changes
- **Test regression** must be verified across the entire codebase, not just individual branches
- **Quality consistency** must be maintained across merged code from different agents

## Agent-as-Merger

The ideal octopus merge is performed by the agent itself — a "merging agent" that can:
- Detect conflicts between parallel branches
- Resolve conflicts using context from the original task definitions
- Run the full test suite after merging
- Submit the consolidated PR for human review ^[inferred]

## Related Pages

- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Where octopus merge is needed
- [[concepts/agent-coordination|Agent Coordination]] — Broader coordination patterns
- [[concepts/critic-agents|Critic Agents]] — Agents that review before merge
- [[concepts/definition-of-success-parallel-agents|Definition of Success for Parallel Agents]] — Criteria for merge readiness
