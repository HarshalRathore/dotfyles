---
title: "Nova Act"
tags:
  - product
  - amazon
  - agents
  - sdk
aliases:
  - Nova Act
  - Amazon Nova Act
sources:
  - "[[sources/watchv=dj0b_cebhhi]]"
summary: "Amazon's computer-use agent SDK combining a vision-trained Amazon Nova model with a Python SDK for building and deploying browser-based agents. Enables natural language to screen actions, with granular atomic action control and composability via standard Python."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Nova Act

Nova Act is Amazon's agent SDK for computer-use agents, combining a specialized version of the Amazon Nova foundation model (trained for high reliability on UI tasks) with a Python SDK. As [[entities/danielle-perszyk|Danielle Perszyk]] describes it: "Nova Act combines this model with an SDK to allow developers to build and deploy agents. All you have to do is make an Act call, which translates natural language into actions on the screen." ^[extracted]

## Architecture

Nova Act operates at the level of pixel-based interaction with graphical user interfaces: ^[inferred]

- **Vision-trained model** — A specialized Amazon Nova model trained to be good at understanding and interacting with UIs
- **Atomic actions** — Smallest reliable units of interaction that can be composed into complex workflows
- **Python SDK** — Standard Python programming model with Pydantic schemas for structured extraction, thread pools for parallel browser operations, and pandas for result processing
- **Act call** — The primitive that translates natural language into screen actions, with step-by-step planning considering the outcome of each step

## Capabilities

Based on the AIEF2025 demo: ^[extracted]

- Natural language to UI actions (click, type, scroll)
- Structured data extraction via Pydantic schema definitions
- Integration with external APIs (e.g., Google Maps for distance calculation)
- Parallel browser operations via Python thread pools
- Continuous model improvement shipped every few weeks

## Design Philosophy

Perszyk frames Nova Act as "the primitives for a cognitive technology that aligns agents' and humans' representations." The focus is on making "the smallest units of interaction reliable and giving you granular control over them" — analogous to how words can be strung together to generate infinite combinations of meaning. ^[extracted]

## Related Entities

- [[entities/amazon-agi|Amazon AGI]] — The lab building Nova Act
- [[entities/danielle-perszyk|Danielle Perszyk]] — Cognitive scientist leading the vision

## Related Concepts

- [[concepts/computer-use-agents|Computer-Use Agents]] — The category Nova Act belongs to
- [[concepts/agents-with-models-of-mind|Agents with Models of Mind]] — Where Nova Act is heading
- [[concepts/useful-general-intelligence|Useful General Intelligence]] — The larger goal
- [[concepts/human-agent-co-evolution|Human-Agent Co-Evolution]] — The relationship Nova Act enables

## Sources

- [[references/aief2025-useful-general-intelligence-danielle-perszyk|Useful General Intelligence — Danielle Perszyk, Amazon AGI (AI Engineer World's Fair 2025)]]
