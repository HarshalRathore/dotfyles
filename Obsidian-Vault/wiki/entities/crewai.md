---
title: "CrewAI"
category: entities
tags: [company, agent-framework, multi-agent, crewai, ai-tools]
summary: "Multi-agent framework for building autonomous agent teams. Used by Nir Gazit at Traceloop to build a researcher agent for auto-improving RAG prompt optimization at AIEF2025."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/auto-improving-agent-loop.md]]"
    type: uses
  - target: "[[entities/nir-gazit.md]]"
    type: related_to
  - target: "[[concepts/agent-workflows.md]]"
    type: related_to
---

# CrewAI

[[concepts/agent-workflows|Multi-agent framework]] for building autonomous agent teams that collaborate to complete complex tasks. Used by [[entities/nir-gazit.md|Nir Gazit]] at [[entities/traceloop.md|Traceloop]] to build a researcher agent for [[concepts/auto-improving-agent-loop.md|auto-improving RAG prompt optimization]] demonstrated at AIEF2025.

In Gazit's implementation, the CrewAI researcher agent crawled the web for prompt engineering guides, combined them with [[concepts/llm-as-judge-evaluation.md|LLM-as-judge]] evaluation failure reasons, and generated improved prompts — forming the optimization step of the auto-improving agent loop.
