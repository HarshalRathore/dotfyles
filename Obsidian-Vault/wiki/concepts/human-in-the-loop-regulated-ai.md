---
title: "Human-in-the-Loop in Regulated AI"
tags:
  - ai
  - architecture
  - regulated-industry
  - compliance
  - enterprise
  - human-in-the-loop
sources:
  - "[[sources/watchv=08mh36_nvos]]"
  - "[[sources/watchv=1__v4ktv_gw]]"
  - "[[sources/watchv=6tpm4m1yxhk]]"
  - "[[sources/watchv=8kmatybvduw]]"
  - "[[sources/watchv=9in-cpnp7xg]]"
provenance:
  extracted: 0.80
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Human-in-the-Loop in Regulated AI

Human-in-the-loop (HITL) in regulated AI is the design principle that AI systems in domains subject to compliance and regulatory oversight must include mandatory human verification before outputs are acted upon. This is not optional UX niceness — it is a structural requirement in industries like financial services, healthcare, and legal, where automated decisions carry significant risk.

## The Core Principle

In [[entities/blackrock|BlackRock]]'s framing: "we all are really tempted, let's go all agentic with this, but in the financial space with compliance, with regulations, you kind of need those four eyes check and you kind of need the human loop. So design for human in the loop first if you are in a highly regulated environment." ^[extracted]

This means:

- **Human review is mandatory, not optional** — AI extraction results must be reviewed and validated before data progresses to downstream systems
- **Design for HITL from the start** — not as an afterthought or safety layer bolted on after deployment
- **The human is part of the workflow, not an exception handler** — HITL stages are first-class nodes in the pipeline, with tools and interfaces designed for efficient review

## Why HITL Matters in Regulated Domains

- **Compliance requirements** — financial regulations often require documented human approval for processes that affect portfolio management, trading, or client reporting
- **Complex domain knowledge** — "the complexity and the domain knowledge that's imbued in the human head" cannot be fully captured by AI, particularly for edge cases and novel instrument types ^[extracted]
- **Error cost asymmetry** — in finance, a single extraction error on a complex instrument can have outsized consequences (incorrect pricing, compliance violations, regulatory penalties)
- **Auditability** — regulated environments need a clear audit trail showing which decisions were AI-generated and which were human-approved

## Design Patterns for HITL

Based on BlackRock's implementation:

1. **Review interfaces in the extraction pipeline** — operators see extraction results, validate field values, and approve or correct before the data proceeds
2. **QC checks and validations** — automated quality gates flag uncertain extractions for human review, reducing the manual review burden on routine fields
3. **Inter-field dependency checking** — the system surfaces related fields when one field's value changes (e.g., marking a bond as callable triggers call date and call price fields for review)
4. **Comparison views** — side-by-side comparison of extraction results across different prompts, strategies, or document sets lets operators quickly identify discrepancies
5. **Low-code transformation workflows** — operators define how validated extraction results flow into downstream systems without manual CSV/JSON download and hand-integration ^[inferred]

## When to Apply

- **Always** in regulated domains (financial services, healthcare, legal)
- **When error consequences are high** — compliance violations, financial losses, safety impacts
- **When domain knowledge is tacit** — experts know things the training data doesn't capture
- **Not needed** for low-risk, well-scoped tasks (internal document search, draft generation with human review optional) ^[inferred]

## HITL as a Feedback Engine

Jeremy ([[entities/freeplay|Freeplay]]) and [[entities/chris-hernandez|Chris Hernandez]] ([[entities/chime|Chime]]) at AI Engineer World's Fair 2025 reframed HITL beyond its traditional safeguard role: "I want everyone to think of human in the loop not as like a safeguard, but as a feedback mechanism or feedback engine, if you will." ^[extracted]

This perspective adds a critical operational dimension to HITL:

- **Each correction is a training signal** — every time a human flags or corrects an AI output, that feedback can be used to retrain and reinforce the model. Over time, this loop brings AI closer to real human expectations and behaviors. ^[extracted]
- **Scaling risk vs scaling productivity** — "Without human in the loop, you're also not scaling productivity, you're scaling risk." ^[extracted] A single hallucination in isolation might seem minor, but at scale it becomes dangerous.
- **LLMs generate confidently wrong outputs** — "LLMs, even the smartest ones, can make mistakes. And they often do it with a lot of confidence." ^[extracted] This makes HITL essential for catching hallucinations that would otherwise go undetected.
- **Human review at scale is scarce** — "Most teams don't have enough people to review thousands of the different outputs," which constrains the feedback loop and limits quality improvement ^[extracted]

### Operationalizing the Feedback Engine

The talk identifies that [[concepts/ai-ops-evolution|existing ops, QA, and CX teams are already trained for this work]] — evaluating interactions at scale, spotting edge cases, and defining what good looks like. Their role evolves from auditors of past interactions to model shapers who test prompts, tag outputs, and guide model behavior. ^[extracted] The emerging [[concepts/ai-quality-lead|AI Quality Lead]] role bridges domain expertise with the technical iteration loop, driving quality without necessarily writing production code. ^[extracted]

## Adaptive Guardrails and Click-to-Fix

The [[concepts/x-tops|X-TOPS framework]] from [[entities/telemetrak|Telemetrak]] introduces a complementary HITL pattern centered on adaptive guardrails: instead of a blanket human-review-everything approach, the system adjusts its level of human oversight based on context and drift detection. ^[extracted]

Key elements:

- **Adaptive cruise control for AI** — When the AI starts to drift or makes uncertain decisions, guardrails slow it down and escalate to a human. When operating within known parameters, fewer human checkpoints are needed. ^[extracted]
- **Click-to-fix workflows** — Structured fast lanes where humans can review flagged decisions, make corrections, and retrain the model without complex tooling. Not ad-hoc — built into the operational pipeline. ^[extracted]
- **Attribution telemetry** — When an alert is flagged (or ignored), telemetry traces back through the decision chain to identify the root cause, enabling rapid human intervention. ^[extracted]

This pattern responds to a key limitation of traditional HITL: the cost and latency of mandatory human review for every decision. By making HITL adaptive — escalating only when the system detects uncertainty, drift, or high-risk decisions — the approach balances trust with operational efficiency. ^[inferred]

### Case Study: Guardhat

At [[entities/guardhat|Guardhat]], a worker safety company, GPS drift caused 70% false positive alerts. Workers stopped reacting to alerts entirely — a catastrophic failure of human-AI teaming. The X-TOPS adaptive guardrail approach addressed this: ^[extracted]

- Day 0: Alert is generated but ignored (trigger event)
- Day 2: Attribution telemetry flags the GPS drift anomaly
- Day 7: Solution deployed (GPS drift fix or reroute)

Without X-TOPS, there was no system to detect the GPS drift, and the problem took 8 months to resolve. The click-to-fix dashboards enabled operators to review flagged inferences and retrain the model. ^[extracted]


## Contacting Humans with Tools: Agent-First Human Handoff

[[entities/dex-horthy|Dex Horthy]] ([[entities/humanlayer|HumanLayer]]) introduces a complementary HITL pattern in the [[concepts/12-factor-agents|12-Factor Agents]] framework: rather than routing human-contact decisions through structured tool calls, push the decision to the first natural language output token. ^[extracted]

### The Pattern

Instead of structured routing (tool call A = done, B = clarify, C = escalate), let the LLM express its intent as a natural language choice: "I'm done" or "I need clarification" or "I need to talk to a manager." This is a single token decision at the start of output generation, expressed in the model's native medium. ^[extracted]

### Why It Matters

- Gives the model better sampling because intent is expressed in natural language, not structured schemas
- Enables flexible human response handling without adding routing logic for each interaction type
- Supports outer-loop agents — agents that collaborate with humans across multiple interaction cycles
- Integrates naturally with multi-channel delivery (email, Slack, Discord, SMS) ^[inferred]
- Enables the agent to spontaneously decide it needs human input, rather than being pre-programmed for specific escalation paths ^[inferred]

### Relationship to Regulated HITL

This pattern is distinct from mandatory regulated-industry HITL: it applies to *any* agent workflow where human collaboration improves outcomes, not just compliance-required ones. Regulated HITL provides mandatory review gates; agent-first human handoff provides natural-language-driven escalation for non-mandatory collaboration. The two are complementary. ^[inferred]

### A2H Protocol

HumanLayer is standardizing this pattern through the A2H (Agent-to-Human) Protocol — a specification for how agents contact humans for approval, clarification, or escalation. ^[extracted]


## Relationship to Other Patterns

- [[concepts/enterprise-ai-app-factory|Enterprise AI App Factory]] — the sandbox pattern includes HITL review as a built-in workflow stage, not an add-on
- [[concepts/agentic-architecture|Agentic Architecture]] — agentic systems aim to reduce human involvement but face limitations in regulated domains; HITL complements agentic patterns where full automation is unsafe
- [[concepts/domain-expert-prompt-engineering|Domain Expert Prompt Engineering]] — domain experts need tools to efficiently review and correct AI outputs, which is the other side of the HITL coin
- [[concepts/build-operate-divide|Build-Operate Divide]] — the operational gap HITL helps bridge; the feedback engine framing is part of solving this divide
- [[concepts/ai-iteration-loop|AI Iteration Loop]] — HITL is a critical component of the evaluate stage in the monitor→experiment→test→evaluate cycle
- [[concepts/ai-ops-evolution|AI Ops Evolution]] — how QA/CX teams evolve from auditors to model shapers, operationalizing HITL at scale
- [[concepts/ai-quality-lead|AI Quality Lead]] — the emerging role that owns HITL quality processes
- [[concepts/x-tops]] — Extended MLOPS with adaptive guardrails and click-to-fix workflows
- [[concepts/ai-trust-pillars]] — Three pillars framework where HITL supports adaptive guardrails
- [[concepts/silent-ai-failures]] — The type of failure HITL and adaptive guardrails catch
- [[concepts/12-factor-agents]] — Framework including agent-first human handoff pattern (contacting humans with tools)
- [[entities/dex-horthy]] — Originator of the agent-first human handoff pattern
- [[entities/humanlayer]] — Company building the A2H Protocol for agent-to-human communication

## HITL in AI Evaluation: Braintrust Model

[[entities/braintrust|Braintrust]]'s evals workshop at AI Engineer World's Fair 2025 presented an evaluation-specific HITL model distinct from regulated-industry mandatory review: ^[extracted]

### Two Types of Human Evaluation

**1. Human Review for Ground Truth**
Subject matter experts (SMEs) manually score or audit specific data points, logs, or experiment results through a dedicated pared-down interface. Reviewers apply custom score types: yes/no, slider, free text, or A/B/C/D selection. This is used to: ^[extracted]

- Establish ground truth for training data and dataset expected columns
- Calibrate [[concepts/llm-judge-best-practices|LLM-as-judge]] prompts — compare judge scores against human scores on the same data points
- Identify edge cases the automated eval suite might miss

**2. User Feedback Capture**
End users provide direct feedback (thumbs up/down + free-text comments) through the application UI. This feedback is logged against specific spans in the production trace via a `logFeedback()` function. ^[extracted] Teams can then: ^[extracted]

- Filter logs to see all thumbs-down traces
- Create [[concepts/ai-observability-production-logging|custom views]] for reviewers focusing on low-feedback scores
- Add problematic traces directly to the offline eval dataset with one click

### The Flywheel

Braintrust's model creates a continuous HITL feedback loop: ^[inferred]

```
Production user feedback → Identify problematic spans → Add to offline dataset → Improve evals/task → Re-deploy → Monitor feedback
```

Each human signal — whether from an SME reviewing outputs or a user giving a thumbs-down — becomes a training datum that improves the evaluation suite and, eventually, the AI application itself. This operationalizes the [[concepts/build-operate-divide|feedback engine]] framing (HITL as feedback mechanism, not just safeguard) within a concrete evaluation workflow. ^[inferred]

### Key Insight: Evals Need HITL Too

A recurring theme in the workshop: the LLM-as-judge itself needs human validation. HITL provides the ground truth that judges are calibrated against. Without human review, you cannot distinguish between "the model output is actually bad" (eval works) and "the judge prompt is broken" (eval needs fixing). The [[concepts/eval-quality-matrix|eval quality matrix]] formalizes this: when scores and human judgment disagree, improve the evals, not the app. ^[extracted]

This differs from regulated HITL's mandatory approval gates. Evaluation HITL is about *measurement calibration* rather than *decision approval* — the human validates the score, not the output itself. The two are complementary: regulated HITL occurs at the decision point; evaluation HITL occurs during development and as part of ongoing quality monitoring. ^[inferred]

- [[concepts/eval-quality-matrix|Eval Quality Matrix]] — diagnostic framework where HITL establishes ground truth for judge calibration
- [[concepts/ai-observability-production-logging|AI Observability & Production Logging]] — captures user feedback and enables the HITL data pipeline


## Known Limitations

- HITL introduces latency and operational cost — each human review takes time and resources
- Requires well-designed interfaces for efficient review at scale (reviewing 500 extraction results should not take 500 human minutes)
- The right balance between automated quality gates and full manual review depends on the specific regulatory context and risk tolerance

## Sources

- [[references/blackrock-knowledge-apps-ai-eng-fair-2025|How BlackRock Builds Custom Knowledge Apps at Scale — AI Engineer World's Fair 2025]]
- [[references/build-operate-divide-freeplay-chime-2025|The Build-Operate Divide: Bridging Product Vision and AI Operational Reality — AI Engineer World's Fair 2025]]
- [[references/critical-ai-inference-cio-trust-telemetrak-2025|Critical AI Inference Your CIO Can Trust — AI Engineer World's Fair 2025]]
- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents: Patterns of Reliable LLM Applications — AI Engineer World's Fair 2025]]
- [[references/aief2025-evals-workshop-braintrust|AIEF2025 - [Evals Workshop] Mastering AI Evaluation: From Playground to Production]] — Braintrust workshop at AI Engineer World's Fair 2025
