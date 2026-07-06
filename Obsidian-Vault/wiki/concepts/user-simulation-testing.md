---
title: User Simulation Testing
tags:
- concept
- agent
- testing
- evaluation
- ai-engineering
aliases:
- simulation testing harness
- conversational AI testing
- persona-based simulation
sources:
- 'https://www.youtube.com/watch?v=c3geufbr2js'
summary: A testing approach for conversational AI agents that simulates dozens of user personas with accounts and scenarios, running tens of thousands of conversations before production deployment.
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# User Simulation Testing

User simulation testing is a pre-production evaluation approach for conversational AI agents where the system creates dozens of different user personas — with simulated accounts, devices, and scenarios — and runs tens or hundreds of thousands of test conversations before the agent goes live. ^[extracted]

Developed by [[entities/sierra-ai|Sierra]] as part of the [[concepts/agent-development-lifecycle|Agent Development Lifecycle (ADLC)]] to address the fundamental challenge that probabilistic AI cannot be tested with deterministic unit tests alone. ^[extracted]

## How It Works

- **Personas** — Dozens of distinct user profiles with different backgrounds, intents, and communication styles ^[extracted]
- **Simulated state** — Each persona has simulated accounts, device configurations (e.g., "the amber light is on or off" for device troubleshooting) ^[extracted]
- **Mass scale** — Hundreds of thousands of conversations before the first live customer interaction ^[extracted]
- **Outcome analysis** — Results reveal what the agent "doesn't know enough about" or what corner cases need handling ^[extracted]

## Why It Matters

Traditional software testing relies on deterministic inputs and expected outputs. Conversational AI agents are inherently probabilistic — the same input can produce different responses. User simulation testing bridges this gap by:

- Stress-testing the agent against the long tail of user behaviors
- Discovering knowledge gaps before they reach production
- Validating the agent handles multi-turn conversations that wander across topics
- Testing edge cases (e.g., compliance language that must never hallucinate)

## Relationship to Evals

Unlike [[concepts/checklist-based-evaluation|checklist-based evaluation]] or [[concepts/llm-judge-best-practices|LLM-as-judge]], user simulation testing tests the full conversational arc rather than individual responses. It is closer to integration testing than unit testing. ^[inferred]

## Related

- [[concepts/agent-development-lifecycle]] — ADLC phase where simulation testing lives
- [[concepts/agent-evaluation-pipeline]] — CI/CD pipeline for agent evaluation
- [[concepts/evaluation-first-development]] — Philosophy of evaluating early and continuously
- [[concepts/closed-loop-agent-improvement]] — The production feedback phase that follows
- [[entities/sierra-ai]] — Originator of this approach

## Sources

- AIEF2025 — Rise of the AI Architect, Clay Bavor, Sierra w/ Alessio Fanelli. https://www.youtube.com/watch?v=C3geUfBR2js
