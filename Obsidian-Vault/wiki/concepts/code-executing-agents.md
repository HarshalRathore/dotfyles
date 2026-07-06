---
title: Code-Executing Agents
category: concepts
tags:
- agent
- code-execution
- tool-use
- agentic-ai
- frontier-models
aliases:
- code executing agents
- agents that run code
sources:
- AIEF2025 - OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness) - https://www.youtube.com/watch?v=w7IMuYsBNr8
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/agent-loop|Agent Loop]]'
  type: extends
- target: '[[concepts/agent-tools|Agent Tools]]'
  type: uses
- target: '[[concepts/agent-sandboxing|Agent Sandboxing]]'
  type: requires
- target: '[[concepts/vibe-coding|Vibe Coding]]'
  type: enables
summary: Code-Executing Agents
---

# Code-Executing Agents

Code-executing agents are AI agents that don't just generate code as output — they write and execute code autonomously as a means of accomplishing tasks. This represents a fundamental shift in how AI agents interact with the world.

## The Paradigm Shift

Historically, AI coding assistants produced code for humans to review and run. With frontier models (O1, O3, O4 Mini, and others), agents can now: ^[extracted]

1. Write code
2. Execute that code in a sandboxed environment
3. Observe the results
4. Iterate based on feedback

The key insight from [[entities/fouad-matin|Fouad Matin]] at OpenAI is that this isn't just about software engineering tasks — code execution is useful across the entire stack. ^[extracted] For example, in multimodal reasoning, agents autonomously run code to perform OCR on images or crop images without being explicitly instructed to do so. ^[extracted]

## Architecture: From Chained Loops to Unified Agents

The traditional agent architecture involved complex inner loops: ^[extracted]

1. Model determines what type of task the user wants
2. Load a task-specific prompt and tool set
3. Chain multiple loops together to achieve a goal
4. Ask the model if it's done
5. Use another model to respond to the user

Code-executing agents collapse this into a single model that decides when to use which tools and when to write/run code directly. ^[extracted] Matin notes this is essentially what security calls "RCE" (remote code execution) — the model gains the ability to execute arbitrary code. ^[extracted]

## The New Constraint

As models become more capable at coding and execution, the frontier shifts: ^[extracted]

> "The new constraint isn't just can these models do things, but actually what should they be able to do, and what should the guardrails be when you allow them to work in your environments."

This shifts the engineering challenge from capability to safety — the harder problem becomes defining appropriate boundaries rather than pushing benchmarks.

## Failure Modes

Code-executing agents introduce distinct failure modes beyond traditional LLM risks: ^[extracted]

- **Prompt injection** — Untrusted content injected into the agent's context
- **Data exfiltration** — Agent sends sensitive data outside its sandbox
- **Agent mistakes** — Unintentional destructive operations or vulnerable code
- **Privilege escalation** — Agent breaks out of its isolation boundary

## Related

- [[concepts/agent-loop|Agent Loop]] — Code execution is a tool within the agent loop
- [[concepts/agent-sandboxing|Agent Sandboxing]] — Required isolation for safe code execution
- [[concepts/prompt-injection|Prompt Injection]] — Primary attack vector for code-executing agents
- [[entities/codex|Codex CLI]] — OpenAI's reference implementation of a code-executing agent
