---
title: "Container Use"
category: concepts
tags:
  - containers
  - agents
  - coding-agents
  - environments
  - dagger
  - aief2025
aliases:
  - container use
  - container-use
summary: "Solomon Hykes' framework that coding agents need native container environments — developing entirely inside containers for isolation, customization, multiplayer, and open optionality."
sources:
  - "AIEF2025 - Containing Agent Chaos — Solomon Hykes, Dagger - https://www.youtube.com/watch?v=bUBF5V6oDKw"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[entities/solomon-hykes|Solomon Hykes]]
    type: proposed_by
  - target: [[entities/dagger|Dagger]]
    type: implements
  - target: [[concepts/agent-isolation|Agent Isolation]]
    type: extends
  - target: [[concepts/agent-environment|Agent Environment]]
    type: related_to
  - target: [[concepts/platform-engineering|Platform Engineering]]
    type: related_to
---

# Container Use

**Container use** is the concept that coding agents need a native way to use containers to create portable environments and develop inside them. Introduced by [[entities/solomon-hykes|Solomon Hykes]] at AI Engineer World's Fair 2025, it reframes containers not as a deployment target but as the fundamental environment primitive for AI agents. ^[extracted]

## Distinction from Sandboxing

Solomon emphasizes that container use is **not the same as sandboxing**. Sandboxing executes the *output* of an agent securely. Container use means the agent *develops entirely inside containers* — the environment itself is the container, not just the execution of results. ^[extracted]

## Four Requirements, Four Properties

Container use addresses four agent environment requirements, each mapped to a container property:

| Requirement | Container Property | Description |
|---|---|---|
| **Background work** | Isolation | Agents work independently without constant monitoring |
| **Rails** | Customizability | Agents constrained to project context, coding style, build/test instructions, base images |
| **Multiplayer** | Multiplayer | Efficient human stepping-in — not watching every action, not just waiting for PRs |
| **Optionality** | Openness | No lock-in to all-in-one platforms; choose best commodity model, compute, infrastructure |

[^extracted]

## Why Containers Are Underutilized

Solomon argues that containers are a "foundational technology" that is "underutilized" for agents because we are "used to the first incarnation of the tools made for humans." The same pattern applies to Git — he notes seeing "a lot of hacks involving Git work trees" as a workaround. The key insight: models are now "incredibly smart, getting smarter, and they can exercise these technologies really fully" — but only if integrated natively rather than as afterthoughts. ^[extracted]

## Container Use vs. Computer Use

Solomon draws a parallel naming: just as there is "computer use" and "browser use" for agents interacting with visual interfaces, agents need "container use" for developing inside portable environments. This positions container use as a complementary primitive to computer use — one for the code environment, one for the visual interface. ^[extracted]

## Related

- [[entities/dagger]] — Dagger's LLM primitive implements container use as a first-class concept
- [[concepts/computer-use-agents|Computer-Use Agents]] — Complementary concept for visual interface interaction
- [[concepts/agent-isolation|Agent Isolation]] — Isolation is the first property container use provides
- [[concepts/cloud-for-agents|Cloud for Agents]] — The broader infrastructure vision container use serves
- [[concepts/agent-rails|Agent Rails]] — Rails are the customizability property of container use
