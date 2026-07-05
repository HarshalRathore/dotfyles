---
title: "Agent-Driven Development"
category: concepts
tags: [agent-driven, agent-native, software-development, paradigm-shift, ai-development]
summary: "The paradigm shift from human-driven software development to agent-driven development, where agents delegate the majority of software lifecycle tasks and humans move from executing to orchestrating."
sources:
  - "AIEF2025 - Ship Production Software in Minutes, Not Months — Eno Reyes, Factory - https://www.youtube.com/watch?v=iheWKg2Tkrk"
provenance: { extracted: 0.75, inferred: 0.25, ambiguous: 0.0 }
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/agent-native-development|Agent-Native Development]]"
    type: related_to
  - target: "[[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]]"
    type: leads-to
  - target: "[[concepts/agent-autonomy|Agent Autonomy]]"
    type: requires
---

# Agent-Driven Development

**Agent-driven development** is the paradigm of software development where agents delegate the majority of tasks across the software lifecycle, and human developers move from executing tasks to orchestrating systems that work on their behalf.

## The Transition

[[entities/eno-reyes|Eno Reyes]] of [[entities/factory|Factory]] frames this as a historical shift: we are transitioning from the era of **human-driven software development** to **agent-driven development**.^[extracted]

The current zeitgeist — adding AI on top of 20-year-old tools designed for humans writing every line of code — is an incremental approach. True agent-driven development requires fundamentally new platform architecture:

1. An intuitive interface for managing and delegating tasks to agents
2. Centralized context from across all engineering tools and data sources
3. Agents that consistently produce reliable, high-quality outputs
4. Infrastructure supporting thousands of agents working in parallel

## Relationship to Vibe Coding

Agent-driven development is distinct from **vibe coding**. While vibe coding emphasizes rapid natural-language prototyping, agent-driven development addresses hard problems like legacy systems that run critical infrastructure. Reyes argues that vibe coding "won't solve hard problems" and that production software requires real software engineering — agents are "climbing gear" for scaling production software, not a replacement for engineering rigor.^[extracted]

## Key Characteristics

- **Task delegation:** Agents handle the majority of lifecycle tasks, not just code generation
- **Context integration:** Agents have access to the full organizational context — meetings, docs, code, feedback
- **Collaborative interaction:** Agents question requirements and make developers better, rather than blindly executing commands
 - **Parallel execution:** Multiple agents work on related tasks simultaneously, coordinated through dependency management

 ## The 90/10 Split

 [[entities/robert-brennan|Robert Brennan]] (OpenHands) reports that at his company, ~90% of code now goes through the agent, with only ~10% requiring direct IDE work. This demonstrates that agent-driven development can achieve high delegation rates without eliminating human involvement entirely — the remaining 10% covers complex architectural decisions, ambiguous requirements, and edge cases needing human judgment. ^[extracted]

## Related Pages

- [[concepts/agent-native-development|Agent-Native Development]] — The platform paradigm enabling this shift
- [[concepts/orchestrating-vs-executing|Orchestrating vs. Executing]] — The human role evolution
- [[concepts/context-over-models|Context Over Models]] — Why context matters more than model capability
- [[concepts/agent-autonomy|Agent Autonomy]] — The autonomy required for true delegation
- [[concepts/vibe-coding|Vibe Coding]] — Contrast: rapid prototyping vs. production engineering
