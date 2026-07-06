---
title: Definition of Success for Parallel Agents
category: concepts
tags:
- parallel-agents
- success-criteria
- test-coverage
- evaluation
- aief2025
sources:
- AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
relationships:
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: enables
- target:
  - - concepts/test-coverage-as-arbiter|Test Coverage as Arbiter
  type: implements
- target:
  - - concepts/stochastic-evals|Stochastic Evals
  type: related_to
- target:
  - - concepts/agent-evaluations|Agent Evaluations
  type: related_to
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Definition of Success for Parallel Agents
---

# Definition of Success for Parallel Agents

The principle that parallel agent workflows only work when there is a clear, objective definition of success. Without this, merging parallel work becomes chaotic and unmanageable. ^[extracted]

## The Core Principle

Rustin Banks stated at AI Engineer World's Fair 2025 that "the secret to working in parallel is a clear definition of success." ^[extracted] This is the foundational requirement for any parallel agent system.

## What Constitutes Success

### Test Suites

A comprehensive test suite is the primary success criterion. Agents should:
- Generate tests alongside implementation
- Run the full test suite after changes
- Report pass/fail status objectively

### Test Coverage Metrics

Test coverage provides a quantitative measure:
- **~80% coverage** was achieved in Banks' demo as a good target
- Coverage metrics enable comparison between different implementation approaches
- Higher coverage generally correlates with more robust implementations ^[extracted]

### Build and Lighthouse Scores

Additional success criteria:
- **Build success** — All builds pass without errors
- **Lighthouse scores** — Performance and accessibility metrics improve or remain stable
- **Accessibility audits** — WCAG compliance is maintained or improved ^[extracted]

## Why It Matters

Without a clear definition of success:
1. **Merging is impossible** — No objective way to determine which parallel output is "correct"
2. **Comparison is subjective** — Without metrics, choosing between approaches becomes opinion-based
3. **Regression is likely** — Without tests, parallel changes can break existing functionality silently

## Implementation

### Test-First Discipline

Agents should follow a test-first workflow:
1. Generate tests for the target functionality
2. Run tests to establish baseline coverage
3. Implement the feature
4. Run tests again to verify coverage and pass rate
5. Report metrics for comparison ^[extracted]

### Multi-Agent Comparison

When running multiple variations in parallel:
1. Each agent generates its own test suite
2. Coverage metrics are compared across agents
3. The agent with the best metrics is selected ^[extracted]

## Related Pages

- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Where this principle applies
- [[concepts/test-coverage-as-arbiter|Test Coverage as Arbiter]] — Primary metric
- [[concepts/stochastic-evals|Stochastic Evals]] — When deterministic tests aren't enough
- [[concepts/agent-evaluations|Agent Evaluations]] — Broader evaluation framework
