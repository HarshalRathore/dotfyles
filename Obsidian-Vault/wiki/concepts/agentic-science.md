---
title: Agentic Science
category: concepts
tags: [ai-agents, scientific-research, hpc, simulation, national-security, los-alamos, fusion]
summary: "Using AI agents that execute code on HPC systems to accelerate scientific discovery — reading papers, generating hypotheses, running simulations, and designing experiments."
sources:
  - "AIEF2025 - Applied AI and Agentic Science at a National Laboratory — Mark Machotton, Los Alamos National Laboratory - https://www.youtube.com/watch?v=cFxWPP1ik6A"
provenance: {extracted: 0.85, inferred: 0.15, ambiguous: 0.0}
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/agent-environment]]"
    type: extends
  - target: "[[entities/los-alamos-national-laboratory]]"
    type: used_by
  - target: "[[entities/venato-supercomputer]]"
    type: runs_on
---

Agentic science refers to the use of AI agents that don't just generate text or recommendations, but execute code on high-performance computing (HPC) systems to perform real scientific work. The distinguishing feature is that the agent's output is executable simulation — not a chat response.

The canonical example is [[entities/los-alamos-national-laboratory|Los Alamos National Laboratory]]'s demonstration: an AI agent reads scientific papers about inertial confinement fusion (ICF) capsules, generates a hypothesis, and designs an optimized fusion capsule. The agent then executes the design code on LANL's Venato supercomputer, running thermodynamic and hydrodynamic simulations to validate the design. This combines frontier LLM capabilities with 50-60 years of mathematical and scientific tools embedded in the lab's HPC infrastructure.

Key characteristics of agentic science:

- **Code execution on HPC:** Agents generate and run code against specialized simulation tools (thermodynamic, hydrodynamic, computational physics), not just general-purpose compute.
- **Domain tools as memory:** The agent doesn't just have the LLM's training data — it has access to decades of domain-specific tools, equations, and simulation frameworks.
- **Hypothesis generation:** The agent reads papers, identifies tangential research, and produces testable hypotheses — not just summaries.
- **Real-world impact:** The simulations produce results that inform actual scientific decisions (e.g., fusion capsule design for [[entities/livermore-national-laboratory|Lawrence Livermore National Laboratory]]).

Agentic science represents a shift from AI as a knowledge assistant to AI as a research collaborator that can perform the full cycle: literature review → hypothesis → design → simulation → analysis.
