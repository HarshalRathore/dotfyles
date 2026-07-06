---
title: Containing Agent Chaos — Solomon Hykes, Dagger
category: references
tags:
- aief2025
- talk
- agents
- containers
- platform-engineering
- coding-agents
- dagger
aliases: null
summary: '"Solomon Hykes at AIEF2025: coding agents need container-native environments with isolation, customizability, multiplayer, and openness — introducing container use for agent environments." - contai...'
Solomon Hykes at AIEF2025: coding agents need container-native environments with isolation, customizability, multiplayer, and openness — introducing "container use" for agent environments.
sources:
- AIEF2025 - Containing Agent Chaos — Solomon Hykes, Dagger - https://www.youtube.com/watch?v=bUBF5V6oDKw
provenance:
  extracted: 0.88
  inferred: 0.09
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target:
  - - entities/solomon-hykes|Solomon Hykes
  type: presented_by
- target:
  - - entities/dagger|Dagger
  type: presented_by
- target:
  - - concepts/container-use|Container Use
  type: introduces
- target:
  - - concepts/agent-environment|Agent Environment
  type: defines
- target:
  - - concepts/platform-engineering|Platform Engineering
  type: reframes
---

# Containing Agent Chaos — Solomon Hykes, Dagger

**Speaker:** Solomon Hykes, co-founder of Docker and Dagger
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=bUBF5V6oDKw

## Summary

Solomon Hykes returned to the AI Engineer World's Fair stage on the exact spot where he kicked off DockerCon 2015 ten years earlier. His talk addressed the chaos that emerges when coding agents are deployed at scale, and proposed a container-native approach to solving it.

## Key Points

### The Platform Engineering Reframe

Solomon reframed platform engineering for the agent era: the platform engineer's job is now to "enable robots to ship awesome software while you spend more and more of your time enabling them to do that productively." This positions platform engineering as the natural home for solving agent chaos. ^[extracted]

### The Problem with Current Agent Workflows

Two approaches dominate today, both with limitations:

1. **YOLO mode** — running multiple agents in shared environments where they "step on each other's toes" and the watch-approve-reject methodology falls apart ^[extracted]
2. **All-in-one platforms** — background mode with integrated model, tools, environment, and compute. "Open an issue, wait for the PR, relax" — but sometimes you want to get in there, use your own machine, mix models, or run on your favorite compute provider ^[extracted]

### The Four Requirements

Solomon articulated four requirements for productive agent environments:

1. **Background work** — agents work without constant human monitoring
2. **Rails** — constraining agents to project context, coding style, build/test instructions, base images, and secret access
3. **Multiplayer** — efficient human stepping-in when needed (beyond watching every action or waiting for PRs)
4. **Optionality** — no lock-in to all-in-one platforms in a rapidly changing agent/compute/model market ^[extracted]

### The Four Environment Properties

These map to four properties that agent environments must have:

| Requirement | Property |
|---|---|
| Background work | Isolation |
| Rails | Customizability |
| Multiplayer | Multiplayer |
| Optionality | Openness |

[^extracted]

### Container Use

Solomon introduced **"container use"** as the concept that coding agents need a native way to use containers to create portable environments and develop inside them. This is distinct from sandboxing (executing agent output securely); it is about the agent developing *entirely inside containers*. ^[extracted]

He drew a parallel naming: just as there is "computer use" and "browser use" for agents interacting with visual interfaces, agents need "container use" for developing inside portable environments. ^[extracted]

### Why Containers Are Underutilized

Containers are "a foundational technology" that is "underutilized" for agents because we are "used to the first incarnation of the tools made for humans." The same pattern applies to Git — he notes seeing "a lot of hacks involving Git work trees." The key insight: models are now "incredibly smart, getting smarter, and they can exercise these technologies really fully" — but only if integrated natively. ^[extracted]

### Dagger's Approach

Solomon teased Dagger's unfinished container use demo, clarifying the product positioning: "This is not a coding agent. It's environments that are portable that you can attach to any coding agent. That's the idea." ^[extracted]

### The Open Optionality Principle

Solomon advocated for choosing "the best commodity component for each job" — selecting the best model, compute, and infrastructure for each task rather than committing to all-in-one platforms. This is critical in "a crazy market" where new agents launch daily. ^[extracted]

## Related Pages

- [[entities/solomon-hykes|Solomon Hykes]] — Speaker and Docker/Dagger co-founder
- [[entities/dagger|Dagger]] — His company, building container-native agent environments
- [[concepts/container-use|Container Use]] — The core concept introduced
- [[concepts/agent-environment|Agent Environment]] — The four-property framework
- [[concepts/agent-isolation|Agent Isolation]] — The isolation property
- [[concepts/agent-rails|Agent Rails]] — The customizability property
- [[concepts/open-optionality|Open Optionality]] — The openness property
- [[concepts/platform-engineering|Platform Engineering]] — The reframed discipline
- [[concepts/agent-background-work|Agent Background Work]] — The background work property
