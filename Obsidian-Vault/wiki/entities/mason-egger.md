---
title: Mason Egger
category: entities
tags: [person, engineer, speaker, temporal, durable-execution, ai-architecture]
aliases: [Mason]
relationships:
  - target: "[[entities/temporal]]"
    type: works_at
sources:
  - "[[sources/watchv=kj9ezytws1y]]"
summary: "Engineer at Temporal who presented at AI Engineer World's Fair 2025 arguing that event-driven architecture is the wrong abstraction for AI agents and durable execution is the proper alternative."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Mason Egger

Engineer at [[entities/temporal|Temporal]], a platform for reliability and scalability in distributed applications. Presented at AI Engineer World's Fair 2025 on the topic of AI agent architecture. ^[extracted]

## Conference Presentation

At AIEF 2025, Mason presented "Events are the Wrong Abstraction for Your AI Agents," arguing that event-driven architecture puts the wrong thing at the center of AI agent systems and proposing [[concepts/durable-execution|durable execution]] as the re-centered abstraction. ^[extracted]

The talk used a Copernicus analogy — shifting from a geocentric to heliocentric model simplified celestial mechanics — to argue that shifting from event-centric to durable-execution-centric design similarly simplifies AI agent architecture. ^[extracted]

### Key Arguments

- Event-driven architecture creates more infrastructure code than business logic for AI agents ^[extracted]
- EDA is loosely coupled at runtime but tightly coupled at design time ^[extracted]
- Durable execution abstracts away event complexity the way prior language evolutions abstracted away lower-level concerns ^[extracted]
- All AI is distributed systems under the hood — if you call across a network, you need reliability infrastructure ^[extracted]
- The "dirty secret": durable execution still uses events under the hood, but the complexity is abstracted away from the programmer ^[extracted]
- Temporal is open-source, MIT-licensed, with SDKs in seven languages (Go, Python, TypeScript, Ruby, .NET, Java, PHP), all natively polyglot ^[extracted]

### Background

Mason was previously an SRE (Site Reliability Engineer) for a company in the travel industry, where he saw applications with 100 lines of code bring entire enterprises down due to mismanaged event queues. He offers to share horror stories after the talk. ^[extracted]

## Sources

- [[references/aief2025-events-wrong-abstraction-mason-egger|Events are the Wrong Abstraction for Your AI Agents — AI Engineer World's Fair 2025]]
