---
title: "Micro-Agents"
tags:
  - agent
  - architecture
  - pattern
  - reliability
  - dag
sources:
  - "[[sources/watchv=8kmatybvduw]]"
summary: "Architectural pattern where small agent loops (3-10 steps) are embedded within larger deterministic workflows, handling only the naturally ambiguous decision points while everything else runs on deterministic code."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Micro-Agents

An architectural pattern where agent loops are kept intentionally small (3-10 steps) and embedded within mostly deterministic workflows. The agent handles only the naturally ambiguous or context-dependent decision points; everything else runs on deterministic code. ^[extracted]

This pattern was identified by [[entities/dex-horthy|Dex Horthy]] ([[entities/humanlayer|HumanLayer]]) as the common architecture across production agent systems, based on patterns observed across 100+ builders and founders. ^[extracted]

## Why Micro-Agents Work

The naive approach — a single large agent loop with a growing context window — degrades in reliability as context grows. Micro-agents solve this by: ^[inferred]

- **Bounded context** — each micro-agent's loop carries only the context it needs for its specific decision, preventing context window bloat ^[inferred]
- **Clear responsibility** — each agent has one job (deployment ordering, rollback decision, approval routing), making its prompt simple and testable ^[inferred]
- **Deterministic recovery** — when a micro-agent fails, the surrounding deterministic workflow can catch the error and route to a fallback path ^[inferred]
- **Composable** — micro-agents can be added, removed, or replaced without redesigning the entire pipeline ^[inferred]

## Canonical Example: HumanLayer's Deploy Bot

HumanLayer runs its deployment pipeline as a mostly deterministic CI/CD workflow with a micro-agent at the decision point: ^[extracted]

1. **Deterministic code** runs CI, tests, merges the PR
2. **Micro-agent** receives the merged PR and decides deployment order (frontend first? backend first?)
3. **Human approval** — the agent's proposal is sent to a human via Slack for confirmation
4. **Human says "back end first"** — the agent adapts the plan
5. **Deterministic deployment** — backend deploys
6. **Micro-agent resumes** — knowing backend is done, proposes frontend deployment
7. **Deterministic code** runs end-to-end tests against production
8. **On failure** — a rollback micro-agent (similarly small) handles the recovery

This pattern supports 100+ tools across 20+ steps with manageable context and clear responsibilities. ^[extracted]

## Characteristics

| Property | Description |
|---|---|
| **Sizing** | 3-10 steps per agent loop |
| **Context** | Only what the specific decision requires |
| **Scope** | One responsibility per agent |
| **Integration** | Called from deterministic code as a subroutine |
| **Failure mode** | Falls back to deterministic handling or human escalation |
| **Evolution** | Can grow as models improve, but starts small |

## Relationship to DAG Orchestration

Micro-agents don't replace DAG orchestration ([[concepts/temporal-workflow-orchestration|Temporal]], Airflow, Prefect) — they complement it. The DAG provides reliability guarantees (retries, state persistence, error recovery); micro-agents handle the decisions within DAG nodes that are too ambiguous for deterministic code. This separation mirrors the power-vs-control trade-off from [[concepts/agent-design-patterns]]: deterministic DAGs provide control; micro-agents provide power where needed. ^[inferred]

## Evolution Over Time

As models improve, the boundary shifts: a 3-step micro-agent today might become a 10-step one next year, and eventually might subsume the deterministic DAG nodes around it. But the pattern of embedding LLM decision points within deterministic infrastructure remains. ^[extracted]

## Relationship to Other Concepts

- [[concepts/12-factor-agents]] — The 12-factor framework that includes micro-agents as a key pattern
- [[concepts/agent-loop]] — The loop pattern that micro-agents use at small scale
- [[concepts/agentic-architecture]] — Platform-level architecture that can host micro-agents
- [[concepts/orchestrator-worker-pattern]] — Related decomposition pattern, though orchestrator-worker decomposes *within* the agent while micro-agents decompose the *workflow* ^[inferred]
- [[concepts/agent-design-patterns]] — The five-pattern taxonomy; micro-agents are a sizing/composition pattern rather than a new primitive ^[inferred]
- [[concepts/stateful-environments]] — Stateful environments provide the workspace for micro-agents' decisions
- [[concepts/temporal-workflow-orchestration]] — DAG orchestration that micro-agents embed within
- [[references/ai-eng-worlds-fair-2025-agents-vs-workflows-sam-bhagwat-mastra]] — Complementary agent-workflow composition taxonomy

## Sources

- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents: Patterns of Reliable LLM Applications — AI Engineer World's Fair 2025]]
