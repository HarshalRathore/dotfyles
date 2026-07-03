---
title: Agent Reliability Challenge
category: concepts
tags: [ai, agents, reliability, evaluation, enterprise-ai, production]
aliases: [AI reliability problem, compound AI agent error]
relationships:
  - target: "[[concepts/evaluation-first-development]]"
    type: related_to
  - target: "[[concepts/ai-regression-testing]]"
    type: related_to
  - target: "[[concepts/tribal-knowledge-in-ai]]"
    type: related_to
  - target: "[[concepts/data-readiness-myth]]"
    type: related_to
  - target: "[[concepts/test-time-compute-scaling]]"
    type: related_to
  - target: "[[concepts/micro-agents]]"
    type: related_to
  - target: "[[concepts/context-engineering]]"
    type: related_to
  - target: "[[concepts/12-factor-agents]]"
    type: related_to
  - "AI Engineer World's Fair 2025 talk - AI Engineer World's Fair 2025 Hackathon Presentations - https://www.youtube.com/watch?v=1ZlO9Yu2ZiU"
  - "AI Engineer World's Fair 2025 talk - Scaling AI Agents Without Breaking Reliability — Preeti Somal, Temporal - https://www.youtube.com/watch?v=1izYWsokr9s"
  - "AI Engineer World's Fair 2025 talk - Practical tactics to build reliable AI apps — Dmitry Kuchin, Multinear - https://www.youtube.com/watch?v=-T6uZYYzkWw"
  - "AI Engineer World's Fair 2025 talk - \"Data readiness\" is a Myth: Reliable AI with an Agentic Semantic Layer — Anushrut Gupta, PromptQL - https://www.youtube.com/watch?v=1nOTQsfe1RU"
  - "AI Engineer World's Fair 2025 - The Rise of Open Models in the Enterprise — Amir Haghighat, Baseten - https://www.youtube.com/watch?v=3WV1vT0B0cg"
  - "AIEF2025 - Thinking Deeper in Gemini — Jack Rae, Google DeepMind - https://www.youtube.com/watch?v=8EQo4J2BWKw"
  - "AIEF2025 - 12-Factor Agents: Patterns of Reliable LLM applications — Dex Horthy, HumanLayer - https://www.youtube.com/watch?v=8kMaTybvDUw"
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

# Agent Reliability Challenge

The observation that current AI agents, despite their impressive capabilities (orbital physics calculations, complex reasoning), fail at a rate that makes them unsuitable for production use in most enterprise contexts. A delivery app with 45-65% reliability would be unacceptable — yet this is the current ceiling for the best AI agents. ^[extracted]

## The Problem

> "Would you use a delivery app that says it will arrive 45% of the time? Like, think about it. Like, you can do your order, and then maybe it orders 10 pizzas instead of 1, or the pizza never arrived." — Eugene, Featherless ^[extracted]

Current state of agent reliability:
- Claude and Gemini score ~45% on real-world web task benchmarks (real eval). ^[extracted]
- Featherless Action R1 achieves 65% — a significant improvement but still far from production-worthy. ^[extracted]
- The DeepMind CEO estimates it may take 10 years to solve the compound AI agent error problem. ^[extracted]
- Yann LeCun states that a new AI architecture is needed for robotics and AI reliability. ^[extracted]
- 90% of all AI projects fail to reach the bar required for enterprises. ^[extracted]
### The 70-80% Quality Bar

[[entities/dex-horthy|Dex Horthy]] ([[entities/humanlayer|HumanLayer]]) identifies a structural pattern in agent development: libraries get you to 70-80% quality fast — enough to excite leadership — but surpassing that bar requires deep understanding of every layer. Builders either throw everything away and start from scratch, or discover the problem wasn't suited for agents in the first place. ^[extracted]

His DevOps agent example: after hours of iterating on a prompt to specify exact build steps, the result was functionally equivalent to a 90-second bash script. Not every problem needs an agent. ^[extracted]

## Root Causes

- **Compound errors** — agents execute multi-step tasks where errors at any step cascade. ^[inferred]
- **Reliability-competence gap** — models can perform PhD-level reasoning but fail at basic tasks like ordering one item correctly. ^[extracted]
- **Scaling does not fix it** — adding more parameters and data has not proportionally improved reliability on real-world tasks. ^[extracted]
- **Lack of tribal business knowledge** — LLMs lack the tacit, domain-specific business language that human analysts build over years at a specific company. Terms like "active customer," "conversion," and "quarter" mean different things across teams and domains (e.g., "GM" = gross margin in finance, general manager in HR). Even a perfect LLM would fail at enterprise tasks without this context. ^[extracted] This root cause is distinct from model capability or data quality — it is about the absence of company-specific semantic understanding. ^[inferred] See [[concepts/tribal-knowledge-in-ai|Tribal Knowledge in AI]] for a detailed breakdown.

## Enterprise Impact

Most enterprises do not need AI that can solve PhD-level math problems. What they need is reliable execution of ordinary business processes — booking flights, processing invoices, sending emails, ordering products — without errors. ^[extracted] This mismatch between AI capabilities (impressive but unreliable) and enterprise needs (boring but reliable) is the core of the agent reliability challenge. ^[inferred]

## Domain-Specific Quality as an Alternative Path

An emerging counterpoint from [[entities/amir-haghighat|Amir Haghighat]] ([[entities/baseten|Baseten]]): for specific enterprise tasks, closed frontier models are not necessarily the best tool — and fine-tuned open models on proprietary data can outperform them. ^[extracted]

Major health plans working on medical document extraction found that simply feeding medical documents to Claude or GPT for CPT procedure code and diagnosis code extraction did not produce adequate results. However, using years of accumulated labeled data to fine-tune open models achieved superior quality on these narrow, high-value tasks. ^[extracted]

This suggests a complementary strategy to the platform-level reliability approaches: rather than trying to make generic models reliable for all tasks, enterprises can achieve reliability by specializing models on their own domain-specific data and tasks. The challenge shifts from "make one model reliable for everything" to "build infrastructure to fine-tune, deploy, and operate many specialized models reliably." ^[inferred]

## Platform-Level Approaches

An alternative framing from [[entities/preeti-somal|Preeti Somal]] ([[entities/temporal|Temporal]]) argues that agent reliability may be better addressed at the orchestration platform level rather than trying to make individual LLM calls more reliable. ^[extracted] Since agents are complex distributed systems — orchestrating multiple processes, tool calls, state management, and human interactions — the reliability of the orchestration layer itself becomes critical. ^[inferred] Temporal's approach is to handle retries, state persistence, error recovery, and execution history transparently through the platform, eliminating "plumbing code" from agent applications. ^[extracted]

## Stateful Environment Approach

An emerging approach from [[entities/josh-purtell|Josh Purtell]] ([[entities/synth-labs|Synth Labs]]) addresses agent reliability at the environment level. By containerizing domain logic into external, resettable stateful environments, agents gain the ability to roll back from derailed trajectories without starting from scratch. ^[extracted]

The key reliability mechanisms from [[concepts/stateful-environments|stateful environments]]:
- **Reset and rollback** — when an agent derails in a long-horizon task, the environment restores a previous checkpoint, making derailment recoverable rather than catastrophic. ^[extracted]
- **Network boundaries** — agents communicate with environments over standard network boundaries, enabling reliable async work and multi-agent coordination without shared-state complexity. ^[extracted]
- **Containerized domain logic** — the vertical application's logic stays stable while the agent model can be swapped as models improve, decoupling model reliability from business logic correctness. ^[extracted]

This is complementary to the platform-level approach ([[concepts/temporal-workflow-orchestration|Temporal]]) and the domain-specialization approach (Baseten). Stateful environments address reliability by making agent mistakes recoverable, rather than by preventing mistakes entirely. ^[inferred]

## Test-Time Compute Approach

[[entities/jack-rae|Jack Rae]] ([[entities/google-deepmind|Google DeepMind]]) presents a complementary model-level approach: giving models the ability to dynamically scale compute at inference time via a thinking stage. Rather than treating reliability as an architectural problem, this approach gives the model more reasoning capacity for harder problems, allowing it to self-correct, explore multiple solutions, and verify its own outputs before committing to an answer. ^[extracted]

This approach addresses the reliability-competence gap directly: if a model can think for 10x or 100x longer on a hard problem, its reliability on that problem improves significantly — as demonstrated by Gemini's log-linear test-time compute scaling curve on math, code, and science benchmarks. ^[inferred] See [[concepts/test-time-compute-scaling|Test-Time Compute Scaling]] for details.

Unlike the platform-level, stateful-environment, or domain-specialization approaches, test-time compute scaling operates entirely within the model — no external orchestration, no environment management, no fine-tuning infrastructure needed. It is complementary to all three. ^[inferred]

## Micro-Agents and Context Engineering Approach

[[entities/dex-horthy|Dex Horthy]] ([[entities/humanlayer|HumanLayer]]) presents a complementary approach to reliability rooted in the [[concepts/12-factor-agents|12-Factor Agents]] framework: ^[extracted]

1. **[[concepts/micro-agents|Micro-agents in deterministic DAGs]]** — rather than one large agent loop, embed small agent loops (3-10 steps) at the points in a workflow where ambiguity requires LLM reasoning. Everything else runs on deterministic code. This bounds the context window size and limits the blast radius of agent errors. ^[extracted]
2. **[[concepts/context-engineering|Context engineering]]** — since "LLMs are pure functions," reliability comes from carefully curating every token in the context window. This includes selective error inclusion (clear errors on success, don't let stack traces accumulate), structured state representation (serialized to the database, not in the prompt), and optimized token density. ^[extracted]
3. **Error recovery as context discipline** — on tool failure, the error goes on the context window and the LLM retries. On success, pending errors are cleared. This prevents the context degradation spiral common in long-running agent loops. ^[extracted]
4. **Deterministic fallback** — when a micro-agent fails, the surrounding DAG can catch the error and route to a fallback path (human escalation, alternative strategy, or known-good default). The agent is not the only failure mode handler — the deterministic infrastructure handles recovery. ^[extracted]

This approach is distinct from the others: it does not require new models (test-time compute), new platforms (Temporal), new environments (Synth Labs), or fine-tuning infrastructure (Baseten). It applies standard software engineering practices — bounded contexts, deterministic fallbacks, explicit state management — to the agent reliability problem. ^[inferred]


## Relationship to Existing Concepts

- Related to [[concepts/tribal-knowledge-in-ai|Tribal Knowledge in AI]] — lack of business-specific understanding as a root cause of unreliability.
- Related to [[concepts/data-readiness-myth|Data Readiness Myth]] — waiting for perfect data delays deployment without solving the tribal knowledge gap.
- Related to [[concepts/evaluation-first-development|evaluation-first development]] — both address the measurement and improvement of AI reliability.
- Related to [[concepts/ai-regression-testing|AI regression testing]] — regression testing is essential when changes made to improve one behavior break another.
- Related to [[concepts/temporal-workflow-orchestration|Temporal Workflow Orchestration]] — a platform-level approach to the challenge, complementary to model-level improvements.
- Related to [[concepts/test-time-compute-scaling|test-time compute scaling]] — a model-level approach that complements platform, environment, and domain-specialization strategies.
- Related to [[concepts/micro-agents]] — micro-agents in deterministic DAGs as a reliability pattern, bounding context and error scope
- Related to [[concepts/context-engineering]] — the thesis that getting the right tokens in is the primary lever for reliability
- Related to [[concepts/12-factor-agents]] — the framework codifying software-engineering approaches to reliability
- Contrasts with [[concepts/scaling-is-dead-thesis|scaling is dead thesis]] — the claim that scaling alone cannot solve reliability.
