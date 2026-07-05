---
title: Agent Runtimes
category: concepts
tags: [agent-runtime, bun, python-uv, nodejs, agent-deployment, multi-runtime]
aliases: [agent runtimes, agent execution environments]
summary: The execution environments that AI agents can run on — Bun (preferred for speed), Python with UV (preferred over pip), and Node.js — supporting framework-agnostic agent deployment.
sources:
  - "AIEF2025 - Conquering Agent Chaos — Rick Blalock, Agentuity - https://www.youtube.com/watch?v=yASxPZ-tZe0"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/framework-agnostic-agents]]"
    type: enables
  - target: "[[concepts/agent-infrastructure]]"
    type: component_of
---

## Agent Runtimes

Agent runtimes are the execution environments that AI agents run on. Unlike traditional applications that typically run on a single runtime, agent platforms often support multiple runtimes to accommodate different agent frameworks, developer preferences, and performance requirements.

### Supported Runtimes

**Bun.** A fast JavaScript runtime that [[entities/rick-blalock|Rick Blalock]] of [[entities/agentuity|Agentuity]] describes as "amazing" for agent development, particularly when combined with the Vercel AI SDK and Grok. Bun's speed is cited as a key advantage for agent development workflows.

**Python with UV.** Python support is provided through UV, a fast Python package manager and resolver. Agentuity explicitly biases developers toward UV over pip — the recommendation is "please don't use pip." UV provides faster dependency resolution and installation, which matters in agent development where dependencies can be complex.

**Node.js.** The traditional JavaScript runtime, supported as a baseline option alongside Bun.

### Framework Compatibility

Different runtimes support different agent frameworks:

- Bun and Node.js support Vercel AI SDK, CrewAI (TypeScript), and other JavaScript-based frameworks.
- Python with UV supports CrewAI (Python), LangChain (Python), Pydantic, and other Python-based frameworks.

[[entities/agentuity|Agentuity]] treats runtimes as a deployment concern separate from framework choice — the same project can potentially use different runtimes for different agents.

## Related Pages

- [[concepts/framework-agnostic-agents|Framework-Agnostic Agents]] — Multi-framework, multi-runtime deployment
- [[concepts/agent-infrastructure|Agent Infrastructure]] — Runtimes as infrastructure primitive
- [[concepts/agent-dev-mode|Agent Dev Mode]] — Running agents locally with assigned ports
