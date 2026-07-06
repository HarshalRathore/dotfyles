---
title: Human-in-the-Loop
category: concepts
tags:
- human-in-the-loop
- agents
- approval-gates
- agentic-workflows
- oversight
sources:
- AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE
- AIEF2025 - Why your product needs an AI product manager, and why it should be you — James Lowe, i.AI - https://www.youtube.com/watch?v=xzJdSi2Tsqw
summary: Human approval gates in agentic workflows where agents pause for human review before executing actions — a critical pattern for responsible automation that balances autonomy with human oversight.
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-05'
tier: supporting
created: '2026-07-04'
updated: '2026-07-05'
---

# Human-in-the-Loop

**Human-in-the-loop** (HITL) is the pattern of inserting human approval gates into agentic workflows, where an agent pauses its execution to await human review and authorization before proceeding with sensitive or irreversible actions.

## Role in Agentic Workflows

Rita Kozlov (Cloudflare) at AIEF2025 described HITL as a necessary component of production agent systems. In her CRM agent example, the workflow explicitly includes a human approval step:

> "I do want to review it before it goes to a customer, so do send it to me for approval."

This pattern sits between the AI reasoning layer and the tools layer in the four-component agent architecture: the AI proposes an action, the workflow pauses at the approval gate, the human reviews and either approves or rejects, and the workflow resumes with the tool execution.

## When HITL Is Needed

HITL gates are appropriate when:

- **Actions are irreversible** — sending emails, publishing content, making purchases
- **Actions have significant downstream impact** — financial transactions, data deletion, personnel decisions
- **Regulatory or compliance requirements** mandate human oversight
- **The agent is still being evaluated** — early-stage agents benefit from tighter human oversight

## HITL in AI Product Design

James Lowe (Incubator for AI, UK government) observed that evaluating AI capabilities early often reveals where human-in-the-loop input is most valuable in the pipeline — fundamentally changing the product design. In the Theme Finder project, evaluation-driven discovery identified key points where human judgment should be inserted into an automated consultation analysis pipeline, rather than treating HITL as an afterthought. ^[extracted]

## HITL vs Full Automation

HITL represents a middle ground between fully assistive agents (where the human does everything) and fully autonomous agents (where the agent does everything). It enables the productivity gains of automation while preserving human judgment at decision points.

This is the pattern that drives the 50–75% time savings cited by Kozlov: the agent handles the heavy lifting, the human handles the judgment call.

## Related

- [[concepts/agent-workflows]] — Workflow orchestration where HITL gates fit
- [[concepts/assistive-vs-automation-agents]] — HITL is the bridge between assistive and automation
- [[concepts/agent-architecture]] — HITL sits between reasoning and tools
- [[concepts/agent-economy-impact]] — HITL-enabled workflows deliver measured ROI
