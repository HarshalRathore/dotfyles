---
title: "Agent Traffic Inversion"
tags:
  - agent
  - prediction
  - trend
  - enterprise
  - identity
sources:
  - "AIEF2025 - CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS - https://www.youtube.com/watch?v=D4Dswf-__RM"
summary: "Michael Grinich's prediction that software traffic will invert from 95% human/5% automated to 95% agent/5% human, with profound implications for identity, security, and product design."
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---
# Agent Traffic Inversion

Agent traffic inversion is Michael Grinich's ([[entities/workos|WorkOS]]) prediction that the ratio of human to automated traffic in software systems will fundamentally invert. Today, ~95% of application traffic comes from humans interfacing with UIs and ~5% from APIs and scripts. Grinich predicts this will shift to 95% agent traffic and 5% human traffic. ^[extracted]

## The Ghost Kitchen Analogy

Grinich draws a parallel to ghost kitchens — restaurants that exist exclusively for delivery apps, with no dine-in option. He predicts "apps that we use exclusively through agents" — services with no human-facing UI, only agent-facing APIs. ^[extracted]

## Early Evidence

- [[entities/perplexity|Perplexity]] launched hotel booking through its platform — a service that may have no independent human interface. ^[extracted]
- The infrastructure already exists: companies providing APIs without a normal user interface. ^[extracted]
- Alan Kay quote: "The future is already here — it's just not evenly distributed." ^[extracted]

## Implications

If Grinich's prediction holds, the implications are far-reaching:

- **Identity** — The [[concepts/agent-identity|agent identity]] challenge becomes critical: how do trillions of agents authenticate to systems built for billions of humans?
- **Security** — The [[concepts/agent-middleware-trust-boundary|middleware trust boundary]] pattern becomes the default architecture for all software.
- **Product design** — Products must design for agent-first interaction, not just human-first with an API bolt-on. ^[inferred]
- **Observability** — Logging and monitoring must scale from human-scale to agent-scale (trillions of agents). ^[inferred]

## Open Questions

- How long until 50% agent traffic? Grinich says "it depends on the product" — some categories will invert faster than others. ^[extracted]
- How do you design auth systems that handle billions of human identities scaling to trillions of agent identities? ^[inferred]

## Related

- [[concepts/agent-identity]] — Identity paradigm for the agent-traffic-inverted world
- [[concepts/agent-middleware-trust-boundary]] — The architecture needed to operate at agent scale
- [[concepts/orchestrator-worker-pattern]] — Multi-agent orchestration that accelerates inversion
- [[concepts/stateless-computation]] — Compute model that enables agent-scale operations
- [[entities/workos]] — Company building identity infrastructure for the inverted traffic future

## Sources

- [[references/aief2025-ciam-for-ai-michael-grinich|CIAM for AI: Authn/Authz for Agents — Michael Grinich, CEO of WorkOS (AI Engineer World's Fair 2025)]]
