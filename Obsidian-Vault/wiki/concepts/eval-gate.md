---
title: "Eval Gate"
category: concepts
tags:
  - agent-evaluation
  - production-guardrails
  - merge-gate
  - agent-autonomy
  - quality-assurance
aliases:
  - merge gate
  - evaluation gate
  - agent merge gate
sources:
  - "https://nitter.tiekoetter.com/i/article/2083540339147567268"
summary: "An evaluation gate is a control layer where eval verdicts steer the agent's run in real time and gate merges by blast radius rather than confidence — reporting vs constraining."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
relationships:
  - target: "[[references/eval-engineering-merge-gate]]"
    type: derived_from
  - target: "[[concepts/agent-evaluations]]"
    type: extends
  - target: "[[concepts/agent-guardrails]]"
    type: implements
  - target: "[[concepts/agent-loop]]"
    type: related_to
---

# Eval Gate

An **eval gate** is a control layer between an agent and its environment where evaluation verdicts change what the agent may do next — which tools it can reach, whether a handoff is accepted, whether a run escalates to a person, and whether a finished change merges. ^[extracted] It is the difference between a thermometer and a thermostat: a verdict that does not change the run is a report, not a gate. ^[extracted]

The gate's purpose is to let agents work and merge without human review — not because anyone decided to trust the model, but because a gate read the evidence and had a rule for it. ^[extracted]

## Verdicts Map to Structural Actions

Each evaluation verdict maps to an action on the run in progress: ^[extracted]

| Verdict | Action |
|---|---|
| Low grounding | Reject the handoff |
| Schema failure | Block the edge |
| Suspected fabrication | Quarantine that branch; do not merge into the main thread |
| Verified completion | The only thing allowed to end the run |

An agent that stops calling tools has ended its turn, not the task — only an external check knows the difference. ^[extracted]

## Grading the Path

Gates grade the trajectory, not just the final answer: a change that arrived through a clean path is a different risk from an identical diff after forty steps of thrashing. Three levels are all required — end-to-end (did the task succeed), trajectory (was the path sound), and component (which tool or sub-agent broke). ^[extracted]

## Opening on Blast Radius, Not Confidence

Confidence is the weakest variable in the merge decision. Work is sorted by how expensive the mistake is to undo: ^[extracted]

- **Reversible and contained** (copy change, test, isolated function) — opens first
- **Reversible but wide** (shared utility, schema addition) — gated on deterministic checks plus a clean trajectory
- **Hard to reverse** (migrations, deletions, production-data writes, money movement) — never opens, regardless of score

Inside an open lane the gate reads evidence in order: deterministic results (tests, types, schema, sandbox execution), then the eval trajectory, then rollback history, and the model's own assessment last — it is the only input the model can influence. ^[extracted]

## Operational Rules

- **Shadow mode first** — score every change, merge none, until real traffic exists to compare against. ^[extracted]
- **Track gate-vs-human disagreement** — keep the gate closed while that number is meaningfully above zero. ^[extracted]
- **Pin the judge** — a silently upgrading judge makes scores incomparable; log the version with every score. ^[extracted]
- **Green is evidence, not proof** — a suite can go entirely green while the product it guards falls apart. ^[extracted]

## Relationship to Other Concepts

The gate is the production-control embodiment of [[concepts/agent-evaluations|agent evaluations]] — evals move from post-production dashboards into the runtime itself. It implements [[concepts/agent-guardrails|agent guardrails]] as a verdict-driven mechanism and sits at the merge point of the [[concepts/agent-loop|agent loop]], which is what makes unattended agent operation possible. ^[inferred]

## Related

- [[references/eval-engineering-merge-gate]] — Hanako's six-step course that defines the gate
- [[concepts/agent-evaluations]] — the evaluation infrastructure the gate consumes
- [[concepts/llm-as-judge-problems]] — judge bias that must be engineered around
- [[concepts/agent-loop]] — the run loop the gate constrains
- [[concepts/agent-guardrails]] — the broader safety layer this implements
