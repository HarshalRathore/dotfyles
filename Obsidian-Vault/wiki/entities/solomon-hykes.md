---
title: "Solomon Hykes"
category: entities
tags:
  - person
  - founder
  - docker
  - dagger
  - containers
  - platform-engineering
  - aief2025
aliases:
  - Solomon Hykes
summary: "Founder of Docker and co-founder of Dagger. Platform engineer who spoke at AI Engineer World's Fair 2025 on containing agent chaos through container-native environments for coding agents."
sources:
  - "AIEF2025 - Containing Agent Chaos — Solomon Hykes, Dagger - https://www.youtube.com/watch?v=bUBF5V6oDKw"
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: core
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[entities/docker|Docker]]
    type: founded
  - target: [[entities/dagger|Dagger]]
    type: co-founded
---

# Solomon Hykes

Solomon Hykes is the founder of [[entities/docker|Docker]] and co-founder of [[entities/dagger|Dagger]]. He returned to the AI Engineer World's Fair stage on the exact same spot where he kicked off DockerCon 2015 ten years earlier, speaking on "Containing Agent Chaos." ^[extracted]

## Platform Engineering Perspective

Solomon frames platform engineering as a "really tough job" — platform engineers don't build and ship cool software; they enable others to do so productively. He sees this role evolving as coding agents enter the picture: the platform engineer's job is now to "enable robots to ship awesome software while you spend more and more of your time enabling them to do that productively." ^[extracted]

## Container-Native Agent Environments

At AIEF2025, Solomon introduced the concept of **"container use"** — the idea that coding agents need a native way to use containers to create portable environments and develop inside them. This is distinct from sandboxing (executing agent output securely); it is about the agent developing *entirely inside containers*. ^[extracted]

He articulated four requirements for agent environments:

1. **Background work** — agents should work without constant human monitoring
2. **Rails** — constraining agents to project context, coding style, build/test instructions, and base images
3. **Multiplayer** — efficient human stepping-in when needed, beyond just watching every action or waiting for PRs
4. **Optionality** — no lock-in to all-in-one platforms in a rapidly changing agent/compute/model market

These map to four environment properties: **isolation**, **customizability**, **multiplayer**, and **openness**. ^[extracted]

## Related

- [[entities/dagger]] — His company, building container-native agent environments
- [[entities/docker]] — His company, the foundational container technology
- [[concepts/container-use|Container Use]] — His framework for agent environments
- [[concepts/platform-engineering|Platform Engineering]] — His professional lens
- [[concepts/agent-rails|Agent Rails]] — His concept of constraining agents
