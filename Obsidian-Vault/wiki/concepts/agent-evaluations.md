---
title: Agent Evaluations
category: concepts
tags:
- agent
- evals
- quality-assurance
- production
- non-deterministic
sources:
- 'https://www.youtube.com/watch?v=lqq_lcbajcc'
- 'https://www.youtube.com/watch?v=mc55hdwlq4o'
- 'https://www.youtube.com/watch?v=pthmdt92qng'
- https://www.deeplearning.ai/courses/agentic-ai
- https://nitter.tiekoetter.com/i/article/2083540339147567268
- 'https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-09-why-agents-declare-victory-too-early/'
- 'https://x.com/ashpreetbedi/status/2084301728363462919'
relationships:
- target: '[[concepts/agent-guardrails|Agent Guardrails]]'
  type: implements
- target: '[[concepts/agent-loop|Agent Loop]]'
  type: related_to
- target: '[[concepts/swe-bench|SWE Bench]]'
  type: related_to
- target: '[[concepts/advantage-estimation|Advantage Estimation]]'
  type: related_to
- target: '[[concepts/eval-gate|Eval Gate]]'
  type: related_to
- target: '[[references/eval-engineering-merge-gate]]'
  type: derived_from
- target: '[[references/harness-lecture-09-declare-victory-too-early]]'
  type: derived_from
provenance:
  extracted: 0.82
  inferred: 0.14
  ambiguous: 0.04
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-08-15T20:08:52Z
summary: "Evaluation infrastructure for agent systems: RL training signals, error analysis, verdict-driven runtime gates, three-level grading, log-derived evals, and externalized completion gates."
---

# Agent Evaluations

Evals are a critical safeguard for making non-deterministic agent systems as deterministic as possible. As agents move from prototype to production, evaluation infrastructure becomes the primary mechanism for ensuring reliability, correctness, and safety. ^[extracted]

## Why Evals Matter for Agents

Agents differ from traditional software in fundamental ways:

- **Non-determinism** — LLMs can hallucinate, give unpredictable results, or produce inaccurate/made-up outputs
- **Tool calling** — Agents execute external functions whose outputs feed back into the decision loop
- **Multi-step reasoning** — Errors compound across iterations of the agent loop
- **Cost sensitivity** — Each eval run consumes tokens; evals must be efficient

Evals serve as the safety net that lets teams deploy agents with confidence that they will behave correctly across a wide range of inputs and edge cases. ^[inferred]

## Evals in RL Training

From [[entities/will-brown|Will Brown]] ([[entities/prime-intellect|Prime Intellect]]) at AIEF2025, evaluations are not just a safety net — they are the **learning signal** for RL-trained agents. ^[extracted]

The RL training loop requires:

1. **Tasks** — Versions of your problem, essentially prompts
2. **Rollouts** — Completions involving many steps of interaction
3. **Evaluation** — Potentially interleaved throughout or at the end
4. **Advantage estimation** — Identifying which parts of the rollout contributed to better/worse outcomes

When engineers tune prompts and fiddle with harnesses based on eval results, they are doing advantage estimation by hand. RL algorithms formalize this process. The quality of the evaluation signal directly determines the quality of advantage estimation, which determines how effectively the model can learn. ^[extracted]

This means eval quality is not just about measuring performance — it is about **creating the signal that makes improvement possible**. A poor eval signal produces poor RL training, regardless of the algorithm used. ^[inferred]

## Error Analysis and Eval Design

Andrew Ng's course recommends inspecting traces and intermediate outputs, then counting component-level failures instead of guessing where to spend improvement effort. Small eval sets can combine code checks for objective constraints with an LM judge for subjective qualities. ^[extracted]

A useful 2×2 frame crosses **objective vs. subjective** checks with **per-example ground truth vs. a shared rubric**. Invoice dates need different expected values per example; a universal length limit can use one rule; factual or format checks can be coded; coherence or coverage may need a judge. Component-level evals localize failures before end-to-end scores hide them. ^[extracted]

## Verdicts That Steer the Run

Evals mature from dashboards into runtime control: pre-production evaluations get promoted into production guardrails where the score decides what the agent may do next — which tools it can reach, whether a handoff is accepted, whether the run escalates to a person. A verdict that does not change the run is a report; the shift is running evals *inside* the agent rather than after it. ^[extracted]

Each verdict maps to a structural action: low grounding rejects the handoff, a schema failure blocks the edge, a suspected fabrication quarantines that branch instead of merging into the main thread, and verified completion is the only thing allowed to end the run. An agent that stops calling tools has ended its turn — not the task — and only an external check knows the difference. This verdict-driven layer is the [[concepts/eval-gate|eval gate]]. ^[extracted]

## Three Levels of Grading

Grading only the final response lets an agent reach a correct answer through a broken sequence unnoticed. All three levels are required: ^[extracted]

1. **End-to-end** — did the task succeed?
2. **Trajectory** — was the path sound? Loops, redundant calls, wasted steps surface here.
3. **Component** — which retriever, tool, or sub-agent broke? The only level that tells you where to fix something.

Three starting metrics: **faithfulness** (grounded in what tools actually returned, not what the model filled in when a tool came back empty), **tool parameter accuracy**, and **task completion** judged against a real signal rather than the agent's own claim. For merge decisions, trajectory matters more than the final answer — a change that arrived through a clean path is different risk from an identical diff after forty steps of thrashing. ^[extracted]

## Your Best Tests Are Already in Your Logs

Tests invented at a desk protect against failures you already imagined; the expensive ones sit in production traces. Pull complete runs where working and broken behavior sit next to each other — a clean finish, a request the user rephrased (a free label), a run where a tool returned empty or repeated identical calls, a run where an external dependency timed out. Attribute carefully: the same lookup twice with identical arguments is a loop in your agent; a rate limit is a dependency problem unless the agent was supposed to recover from it. Test the verifier before trusting it: feed one clearly correct result and one plausible wrong one — if either goes the wrong way, the rubric is broken, not the agent. ^[extracted]

## Evals in the Build vs Buy Decision

When choosing an agent platform, evals are a key evaluation criterion. The question is whether eval infrastructure comes built in or requires a separate vendor. This is part of the broader build-vs-buy calculus that includes token costs, infrastructure costs, and engineering effort. ^[extracted]

### 2026-08 — Learn Harness Engineering (Walking Labs)

**Lecture 09: Preventing Agents from Declaring Victory Too Early** — treats premature completion as the flagship eval failure mode: agents are systematically overconfident, so completion judgment must be externalized from the agent to the harness. Claims:

- **Confidence calibration bias:** Guo et al. (ICML 2017) proved neural networks systematically overconfident — reported confidence significantly exceeds actual accuracy; the lecture extends this to coding agents, where for complex multi-file tasks self-reported completion confidence runs significantly above actual quality. ^[extracted]
- **Passing unit tests ≠ task complete:** unit tests isolate and mock, so they cannot see cross-component failures (interface mismatch, cross-layer state propagation, environment dependency). The lecture's three-layer termination validation — syntax/static analysis → runtime behavior → system-level confirmation — parallels this page's three levels of grading, but functions as a *gating hierarchy for "done"* rather than a scoring taxonomy: layer N+1 is not entered until layer N passes. ^[extracted]
- **Verification-validation dual gate:** verification checks the code correctly implements the specified behavior; validation checks system-level behavior against end-to-end requirements; both must pass before the task counts as complete. ^[extracted]
- **Self-evaluation bias:** Anthropic (2026) found agents evaluating their own work systematically overly positive, worst on subjective tasks; the fix is separating worker from checker — an independent "nitpicky" evaluator agent — not making the generator "more objective" (the same model generates and evaluates and is inherently generous with itself). Same model (Opus 4.5) and same prompt: bare single agent 20 min / $9 → game entities unresponsive; planner + generator + evaluator (Playwright click-testing) 6 h / $200 → fully playable. ^[extracted]
- **Actionable error feedback** (OpenAI/Codex practice): agent-facing error messages must carry repair instructions ("Test failed: POST /api/reset-password returned 500 — check that the email service config exists in environment variables…"), letting the agent self-correct without human intervention. ^[extracted]
- **Completion priority constraint:** verify functional correctness first, then performance, then style; no refactoring until core functionality passes verification. ^[extracted]
- **Runtime feedback signals** — application reaches ready state, critical paths execute, side effects correct, temporary resources cleaned up — form the objective basis for completion judgment; runtime signals, not agent confidence, are the verifier's input. Consistent with this page's verdict-driven gating: only verified completion ends the run. ^[extracted]

## Session-Mined Probes and Live-Agent Repair

Ashpreet Bedi's recursive auto-improvement workflow turns production sessions into evaluation inputs: mine recurring shapes and fumbles from Postgres, write expected behavior from the spec, run probes against the live API, inspect tool calls and logs, then repair one rule, tool, or parameter and rerun only failures. ^[extracted] See [[concepts/recursive-auto-improvement]].

This makes logs a source of tests rather than merely a debugging archive, while held-out probes remain necessary to detect overfitting to observed usage. ^[inferred]

## Relationship to Other Concepts

Evals intersect with [[concepts/agent-guardrails|agent guardrails]] as one of the core safety layers, and with [[concepts/agent-loop|agent loops]] as the evaluation mechanism within the reasoning-acting cycle. They also relate to [[concepts/swe-bench|SWE Bench]] as a benchmark paradigm for measuring agent capability on real-world coding tasks. ^[inferred]

## Sources

- [[references/aief2025-agents-500b-promise-donald-hruska-retool|AIEF2025 — How agents will unlock the $500B promise of AI]]
- [[references/aief2025-the-future-of-evals-ankur-goyal-braintrust|The Future of Evals — Ankur Goyal, Braintrust]] — Cloud 4 breakthrough enabling automated agent eval optimization
- AIEF2025 - Training Agentic Reasoners — Will Brown, Prime Intellect - https://www.youtube.com/watch?v=PbHm2qKnu10
- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
