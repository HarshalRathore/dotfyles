---
title: Vibe Check
category: concepts
tags:
- vibe-check
- evals
- testing
- quality-assurance
- ai-systems
- anti-pattern
summary: The anti-pattern of evaluating an AI system by testing it with a single prompt and declaring it 'good enough' based on a subjective impression, rather than using rigorous, reproducible evaluation m...
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/evals-as-moat]]'
  type: contradicts
- target: '[[concepts/evals-testing-pyramid]]'
  type: related_to
- target: '[[concepts/input-output-specification]]'
  type: related_to
sources: []
---

A **vibe check** is the anti-pattern of evaluating an AI system by testing it with a single prompt (or a few lucky prompts) and declaring the system "good enough" based on a subjective impression. This is contrasted with rigorous evaluation that proves robustness across a wide range of inputs. ^[inferred]

## The Problem

**[[entities/randall-hunt|Randall Hunt]]** of **[[entities/caylent|Caylent]]** explicitly contrasts vibe checks with real evals:

> "This is where we prove that the system is robust and not just a vibe check, and we're getting a one-off on a particularly unique prompt."

A vibe check fails because:

1. **Non-reproducible** — A single prompt may produce a good result by chance; the system may fail on similar but different inputs
2. **No statistical basis** — Without a dataset of test cases, there's no way to measure accuracy, precision, or recall
3. **No improvement signal** — Without structured evals, you cannot measure whether changes to the system improve or degrade performance
4. **Hidden failure modes** — Edge cases, adversarial inputs, and domain-specific failures are invisible to a vibe check

## Vibe Check vs Real Evals

| Vibe Check | Real Evals |
|------------|-----------|
| Single prompt | Dataset of test cases |
| Subjective judgment | Objective scoring |
| One-time test | Continuous testing |
| No improvement signal | Measurable progress |
| Works for demo | Works for production |

## Why Vibe Checks Are Tempting

1. **LLMs are fast** — It's easy to try a prompt and see a result in seconds
2. **LLMs are impressive** — Good outputs feel convincing and "right"
3. **Evals are hard** — Building a robust eval dataset takes significant effort
4. **Pressure to ship** — Stakeholders want to see results, not evaluation infrastructure

## The Cost of Vibe Checks

Systems that pass vibe checks but lack rigorous evals tend to:

- Fail unpredictably in production
- Degrade silently as models or prompts change
- Lose stakeholder trust when failures occur
- Require expensive rework to add evals after the fact

## Related

- [[concepts/evals-as-moat]] — Real evals build a moat; vibe checks do not
- [[concepts/evals-testing-pyramid]] — The layered eval strategy that replaces vibe checks
- [[concepts/agent-evaluations]] — Evaluation strategies for AI agents
- [[concepts/stochastic-systems-evaluation]] — Why non-deterministic systems need special eval approaches

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
