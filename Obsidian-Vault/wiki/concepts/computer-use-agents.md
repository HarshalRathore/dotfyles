---
title: Computer-Use Agents
tags:
- concept
- agents
- ai
aliases:
- computer use agents
- UI agents
- visual grounding agents
sources:
- 'https://www.youtube.com/watch?v=dj0b_cebhhi'
summary: Agents that interact with visual interfaces (pixels, UIs) like humans do — using the browser as their environment, trained to be good at UI navigation and interaction. Distinct from LLM wrappers th...
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# Computer-Use Agents

Computer-use agents interact with graphical user interfaces the way humans do — by seeing pixels, interpreting visual layouts, and performing actions like clicking, typing, and scrolling. [[entities/danielle-perszyk|Danielle Perszyk]] (Amazon AGI) contrasts them with current LLM wrappers: "Current agents are LLM wrappers that function as read-only assistants. They can use tools, and some of them are getting really good at code, but they don't have an environment to ground their interactions. They lack a world model." ^[extracted]

## Grounding in a Shared Environment

The defining characteristic of computer-use agents is that they "can see pixels and interact with UIs just like us. So you can think of them as kind of having this early form of embodiment." This shared visual environment provides grounding that text-only agents lack. ^[extracted]

## The Challenge: UI Interpretation

Navigating visual interfaces is deceptively difficult for AI. Perszyk illustrates with the Amazon website: icons that humans interpret effortlessly (using context cues) must be learned by the agent through exploration and reinforcement learning, because "we couldn't possibly teach our agent all of the different icons, let alone all of the different useful ways that it could use a computer." ^[extracted]

> "What do these icons mean? We typically take for granted that even if we've never seen them before, we can easily interpret them. And when we can't, there are usually plenty of cues for us to know what they mean." ^[extracted]

## Granular Control via Atomic Actions

Perszyk's approach focuses on making the smallest units of interaction reliable, then composing them: "Just like you can string together words to generate infinite combinations of meaning, you can string together atomic actions to generate increasingly complex workflows." ^[extracted]

This is implemented in [[entities/nova-act|Nova Act]], Amazon's agent SDK. An Act call translates natural language into actions on screen, with the ability to compose actions via Python (e.g., using thread pools to parallelize across multiple browsers, returning structured data via Pydantic schemas). ^[extracted]

## Alignment Through Divergence

A key tension: agents will inevitably develop different ways of using computers than humans do. Perszyk notes this divergence is acceptable and even desirable ("we want them to be complementary to us"), but it requires that "our agent's perception of the digital world is aligned with our own." This alignment of perception — not methods — is the critical requirement. ^[extracted]

## Related Concepts

- [[concepts/agents-with-models-of-mind|Agents with Models of Mind]] — The next step beyond grounded interaction
- [[concepts/useful-general-intelligence|Useful General Intelligence]] — The purpose computer-use agents serve
- [[concepts/human-agent-co-evolution|Human-Agent Co-Evolution]] — The feedback loop these agents enable
- [[concepts/agent-traffic-inversion|Agent Traffic Inversion]] — The infrastructure implication of agent-majority traffic

## Open Questions

- How do you ensure alignment of perception when agent and human methods of using computers diverge?
- Can computer-use agents generalize across websites as easily as humans, or will they need per-site training?

## Sources

- [[references/aief2025-useful-general-intelligence-danielle-perszyk|Useful General Intelligence — Danielle Perszyk, Amazon AGI (AI Engineer World's Fair 2025)]]
