---
title: "Agentic Dials"
category: concepts
tags: [agent-design, autonomy, context, memory, coordination, agent-experience, aief2025]
summary: Framework for thinking about agentic AI as four tunable dials — autonomy, context, memory, coordination — rather than a binary agentic/non-agentic distinction. Each dial is adjusted based on use case risk tolerance.
sources:
  - "AIEF2025 - From Copilot to Colleague: Trustworthy Agents for High-Stakes - Joel Hron, CTO Thomson Reuters - https://www.youtube.com/watch?v=kDEvo2__Ijg"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/agent-autonomy]]"
    type: extends
  - target: "[[concepts/context-management-for-agents]]"
    type: extends
  - target: "[[concepts/assistive-vs-automation-agents]]"
    type: relates_to
---

# Agentic Dials

**Agentic dials** is a framework for thinking about agentic AI as four tunable dimensions rather than a binary agentic/non-agentic distinction. Each dial is adjusted based on the use case and the user's risk tolerance. ^[extracted]

## The Four Dials

### Autonomy

The degree to which the AI can execute tasks without human direction. Ranges from executing discrete tasks (summarize this document) to fully self-evolving workflows where the AI plans, executes, and re-plans its work based on observations along the path. ^[extracted]

### Context

What knowledge sources the model can access and how it rationalizes between them. Ranges from using parametric knowledge directly, through RAG with multiple knowledge sources, to models that permute data sources themselves — updating schemas to better serve future queries. ^[extracted]

### Memory

How state is maintained across interactions. Ranges from stateless retrieval at query time, to shared memory throughout a workflow, to persistent memory across many user sessions. ^[extracted]

### Coordination

How the AI handles task execution. Ranges from atomically executing a single task, to delegating to tools, to full multi-agent systems collaborating with each other. ^[extracted]

## Design Implications

The framework implies that agent systems should be designed with adjustable levers, not fixed architectures. Some use cases (exploratory analysis) benefit from high autonomy and coordination; others (precision-critical workflows) benefit from lower agency and tighter control. ^[inferred]

This is a practical alternative to the binary "agentic or not" framing that dominates AI discourse. ^[inferred]

## Related

- [[concepts/agent-autonomy]] — The autonomy dial is the most discussed dimension
- [[concepts/assistive-vs-automation-agents]] — Different agent types sit at different dial settings
- [[concepts/context-management-for-agents]] — The context dial encompasses retrieval strategies
- [[concepts/agent-workflows]] — Coordination and autonomy shape workflow design
