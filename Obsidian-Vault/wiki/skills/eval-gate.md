---
title: "Eval Gate: Six-Step Merge Gate Course"
category: skills
tags:
- skill
- agent-evaluation
- merge-gate
- production-guardrails
- llm-judge
sources:
- "https://nitter.tiekoetter.com/i/article/2083540339147567268"
summary: "Six-step procedure for an evaluation gate that lets agents merge without human review: judge hygiene, verdict-driven control, path grading, log-derived tests, judge pinning, blast-radius lanes."
provenance:
  extracted: 0.82
  inferred: 0.12
  ambiguous: 0.06
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
relationships:
  - target: "[[references/eval-engineering-merge-gate]]"
    type: derived_from
  - target: "[[concepts/eval-gate]]"
    type: implements
---

# Eval Gate — Build the Gate That Lets Your Agents Merge Without You

Six steps, in order. Full background in [[references/eval-engineering-merge-gate]]; this page is the executable procedure. ^[extracted]

## Step 1 — Fix the judge before trusting any score

- Judge from a **different model family** than the generator (same family = shared blind spots).
- High-stakes: use a **panel of judges from different vendors** — averaging breaks correlated errors.
- Anything objectively checkable goes to **code**, not to a judge (did the test pass, does the file exist, did the state change).
- Verify the verifier: feed one clearly correct result and one plausible wrong one; if either goes the wrong way, the rubric is broken, not the agent.

## Step 2 — Make verdicts steer the run

A verdict that does not change the run is a report. Wire evals inside the agent: score → control (tools reachable, handoff accepted, escalation, merge). Verdict-to-action mapping: low grounding → reject handoff; schema failure → block edge; suspected fabrication → quarantine branch; verified completion → the only way to end a run. An agent that stops calling tools ended its *turn*, not the task — external check required.

## Step 3 — Grade the path, not just the answer

Three levels, all required: end-to-end (task succeeded), trajectory (path sound — loops, redundant calls), component (which tool/sub-agent broke). Start with three metrics: faithfulness (grounded in tool returns), tool parameter accuracy, task completion (against a real signal). For merges, trajectory matters more than the final answer.

## Step 4 — Mine your logs for eval cases

Pull complete runs where working and broken sit side by side: clean finish (baseline), user-corrected request (free label), empty or repeated tool calls, external timeout. Write each in four lines: what the agent did / what worked and didn't / agent vs dependency cause / which capability it protects. Attribute carefully — identical repeated lookup = your loop; rate limit = dependency. Answer keys come from tests, records, policy, or a person — never from what the trace "should" show.

## Step 5 — Pin the judge or lose the month

- Pin the judge **version** and log it with every score (silent upgrades make scores incomparable).
- Write the rubric as one line: *pass if the independently observable outcome happened*.
- Never reward shape: no points for length, keywords, citation count, similarity. (Goodhart with a model in the loop.)
- No self-review without external grounding — intrinsic self-correction reliably fails.
- Size: ≥500 cases before trusting an aggregate number; suite must run shorter than a coffee break.

## Step 6 — Open on blast radius, not confidence

| Lane | Policy |
|---|---|
| Reversible + contained (copy, test, isolated fn) | Open first |
| Reversible but wide (shared util, schema) | Deterministic checks + clean trajectory |
| Hard to reverse (migrations, prod writes, money) | Never opens |

Evidence order inside an open lane: deterministic results → eval trajectory → rollback history → model's own assessment (last; it is the only input the model can influence). Shadow mode first: score everything, merge nothing, until gate-vs-human disagreement is near zero. Green is evidence, not proof.

## Source

- [[references/eval-engineering-merge-gate]] — Hanako, *Eval Engineering: build the gate that lets your agents merge without you* (X article, Aug 1 2026)
