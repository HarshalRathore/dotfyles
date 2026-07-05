---
title: "Agent Robustness"
category: concepts
tags:
  - agent
  - robustness
  - reliability
  - safety
  - post-training
aliases:
  - ai agent reliability
  - agent control
sources:
  - "AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-preparedness-framework|Agent Preparedness Framework]]"
    type: related_to
  - target: "[[concepts/agent-sandboxing|Agent Sandboxing]]"
    type: requires
  - target: "[[concepts/red-teaming|Red Teaming]]"
    type: related_to
  - target: "[[concepts/agent-autonomy|Agent Autonomy]]"
    type: related_to
---

# Agent Robustness

Agent robustness is the property of AI agents behaving reliably and safely when given autonomous capabilities — particularly code execution and tool use. It encompasses both the model's ability to perform tasks correctly and the system's ability to prevent harmful outcomes. ^[extracted]

## Scope

Agent robustness spans two dimensions: ^[extracted]

1. **Model capability** — The agent correctly understands intent, plans effectively, and executes without mistakes
2. **System safety** — The agent's environment, access controls, and oversight prevent damage even when the model goes wrong

## Key Failure Modes

Robustness engineering must address the ways agents can fail: ^[extracted]

- **Prompt injection** — Adversarial content manipulates agent behavior
- **Data exfiltration** — Agent leaks sensitive information
- **Agent mistakes** — Unintentional destructive operations, vulnerable code, or wrong decisions
- **Privilege escalation** — Agent breaks out of intended isolation boundaries
- **Sandbox escape** — Agent accesses resources outside its designated environment

## Post-Training Focus

At OpenAI, agent robustness is addressed as part of post-training — the process of refining models after initial training to improve their reliability and safety in agentic contexts. ^[extracted] This includes:

- Teaching models to recognize and resist prompt injection
- Training models to operate within their sandbox boundaries
- Improving the model's ability to self-assess when to request human review

## Relationship to Preparedness

Agent robustness is the capability goal; the [[concepts/agent-preparedness-framework|Agent Preparedness Framework]] is the operational approach to achieving it through layered safeguards. ^[inferred]

## Related

- [[concepts/agent-preparedness-framework|Agent Preparedness Framework]] — Operational framework for safe deployment
- [[concepts/agent-sandboxing|Agent Sandboxing]] — Technical isolation mechanism
- [[concepts/code-executing-agents|Code-Executing Agents]] — The class of agents this applies to
- [[entities/fouad-matin|Fouad Matin]] — OpenAI engineer working on agent robustness in post-training
