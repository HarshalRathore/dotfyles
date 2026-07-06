---
title: Critic Agents
category: concepts
tags:
- critic-agents
- code-review
- agent-coordination
- parallel-agents
- merging
- aief2025
sources:
- AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
relationships:
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: enables
- target:
  - - concepts/octopus-merge|Octopus Merge
  type: enables
- target:
  - - concepts/agent-coordination|Agent Coordination
  type: extends
- target:
  - - concepts/copilot-code-review|Copilot Code Review
  type: related_to
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Critic Agents
---

# Critic Agents

Critic agents are AI agents specialized in reviewing, evaluating, and merging the outputs of other agents. They serve as the quality gate and coordination layer in parallel agent workflows, preventing the chaos that results from uncoordinated parallel work. ^[extracted]

## The Role

Rustin Banks noted that for parallel agent workflows to work well, developers need help "reviewing PRs and handling merge messes at the end of the day." ^[extracted] Critic agents fill this role by:
- Reviewing PRs from parallel agents
- Detecting conflicts between parallel branches
- Evaluating code quality across multiple outputs
- Coordinating the merge process ^[extracted]

## Two Types of Critic Agents

### Reviewer Critic

Focuses on code quality:
- Reviews each PR for correctness
- Checks for style consistency
- Validates test coverage
- Identifies potential regressions ^[inferred]

### Merger Critic

Focuses on consolidation:
- Detects merge conflicts between branches
- Resolves conflicts using context from task definitions
- Runs full test suite after merge
- Creates the final consolidated PR ^[extracted]

## Why They're Needed

Without critic agents, parallel workflows produce:
- **Merge conflicts** that are difficult to resolve manually
- **Inconsistent code quality** across branches
- **Test regressions** that go undetected
- **Developer burnout** from reviewing too many PRs ^[extracted]

Banks described the problem: parallel workflows "can really come together and not drive us crazy" only with the help of critic/merging agents. ^[extracted]

## Related Pages

- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Where critic agents operate
- [[concepts/octopus-merge|Octopus Merge]] — The merge pattern they enable
- [[concepts/agent-coordination|Agent Coordination]] — Broader coordination
- [[concepts/copilot-code-review|Copilot Code Review]] — Related pattern
