---
title: "Test Coverage as Arbiter"
category: concepts
tags:
  - test-coverage
  - evaluation
  - parallel-agents
  - metrics
  - aief2025
sources:
  - "AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8"
relationships:
  - target: [[concepts/parallel-agent-workflows|Parallel Agent Workflows]]
    type: enables
  - target: [[concepts/definition-of-success-parallel-agents|Definition of Success for Parallel Agents]]
    type: implements
  - target: [[concepts/multiple-variations-parallelism|Multiple Variations Parallelism]]
    type: enables
  - target: [[concepts/stochastic-evals|Stochastic Evals]]
    type: related_to
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Test Coverage as Arbiter

Test coverage as arbiter is the practice of using test coverage metrics as the primary objective criterion for comparing and selecting between parallel agent outputs. When multiple agents implement the same feature differently, coverage metrics provide a quantitative basis for choosing the best approach. ^[extracted]

## The Principle

In parallel agent workflows, when multiple agents produce different implementations of the same feature, a comparison mechanism is needed. Test coverage serves as this arbiter because it is:
- **Objective**: Measured quantitatively, not subjectively
- **Reproducible**: Same code produces same coverage every time
- **Comprehensive**: Measures how much code is exercised by tests
- **Actionable**: Higher coverage generally correlates with better test quality ^[extracted]

## How It Works

### Single-Agent Comparison

When comparing two testing frameworks for the same codebase (e.g., Jest vs Playwright):
1. Each agent generates tests using its chosen framework
2. Coverage metrics are computed for each approach
3. The approach with better coverage is selected ^[extracted]

### Multi-Variation Selection

When comparing different implementation approaches:
1. Each agent implements the feature using a different approach
2. Each agent generates its own test suite
3. Coverage metrics are compared across all approaches
4. The approach with the best coverage is chosen ^[extracted]

## Coverage Targets

In Banks' demo, approximately **80% test coverage** was achieved as a good target. ^[extracted] This level provides:
- Sufficient test breadth to catch common errors
- Realistic coverage (100% is often impractical)
- A clear benchmark for comparison between approaches

## Limitations

- **Coverage ≠ correctness**: High coverage doesn't guarantee bug-free code
- **Coverage ≠ quality**: Well-written tests at 60% coverage may be better than poorly-written tests at 80%
- **Framework bias**: Different testing frameworks produce different coverage numbers for the same code ^[inferred]

## Related Pages

- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Where this is applied
- [[concepts/definition-of-success-parallel-agents|Definition of Success for Parallel Agents]] — Success criteria
- [[concepts/multiple-variations-parallelism|Multiple Variations Parallelism]] — Comparison use case
- [[concepts/stochastic-evals|Stochastic Evals]] — When coverage isn't enough
