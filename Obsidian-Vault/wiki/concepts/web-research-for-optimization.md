---
title: "Web Research for Optimization"
category: concepts
tags: [web-research, knowledge-sourcing, agent-research, prompt-engineering-guides, external-knowledge]
summary: "An agent autonomously researches the web for best practices to inform system optimization — Gazit used it to crawl prompt engineering guides for RAG improvement."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-as-optimizer]]"
    type: extends
  - target: "[[concepts/auto-improving-agent-loop]]"
    type: related_to
  - target: "[[concepts/prompt-engineering-is-dead]]"
    type: related_to
---

# Web Research for Optimization

The pattern of having an autonomous agent research the web for best practices, techniques, and guides to inform system optimization. [[entities/nir-gazit|Nir Gazit]] used this at AIEF2025 as part of his [[concepts/auto-improving-agent-loop|auto-improving agent loop]].

In his implementation, the researcher agent (built with [[entities/crewai|CrewAI]]) would:

1. Crawl the web to find the latest prompt engineering guides and techniques
2. Extract relevant advice and patterns
3. Combine this external knowledge with the evaluator's failure reasons
4. Generate an improved prompt incorporating both sources of insight

This pattern treats the web as a knowledge source for optimization — analogous to how ML researchers use pre-trained models initialized on large corpora. The agent doesn't just optimize from scratch; it leverages the collective knowledge of the community (prompt engineering guides, best practices) as a prior.

The key insight: optimization is more effective when the search space is informed by external knowledge rather than random exploration. The agent's prompt generation is constrained and guided by real prompt engineering techniques found online.
