---
title: "Chris Segity"
category: entities
tags: [person, ai, xai, verified-super-intelligence, aief2025]
aliases: [chris segity, chris segiti]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Former researcher at Google, co-founder of xAI, now working on verified super intelligence through self-supervised reinforcement learning."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-06
updated: 2026-07-06
relationships:
  - target: "[[concepts/verified-super-intelligence|Verified Superintelligence]]"
    type: proposes
---

# Chris Segity

**Chris Segity** is a researcher who worked at Google for a long time, became co-founder of [[entities/xai|xAI]], and is now working on a new startup focused on verified super intelligence.

## AI Engineer World's Fair 2025

Chris spoke remotely via Zoom at the Reasoning + RL track of AI Engineer World's Fair 2025 on the path towards verified super intelligence. ^[extracted]

### Verified Superintelligence Thesis

Chris proposed a framework where AI systems produce **safe and independently verifiable artifacts** — code that comes with its own guarantees of correctness. His vision: ^[extracted]

- **First-class verification** — correctness checking that is model-free (formal proofs, theorem provers)
- **First-class alignment** — alignment that must be model-based (checking human intent)
- **The interplay** — if output is not correct, it cannot be properly aligned; the two reinforce each other
- **Next 5 years** — AI-driven cyber attacks will be severe enough that unverified software becomes unacceptable
- **Trustlessly aligned AI** — we don't just trust the AI; we can actually check it

### Self-Supervised Reinforcement Learning

Chris's roadmap involves: ^[extracted]

- **Generator agent** — creates solutions to problems from the web
- **Validator agent** — checks correctness and alignment, provides reward signals
- **Morph Cloud** — infrastructure for branching sandboxes, trying versions, rollback
- **Agentically generated tasks** — the agent finds its own problems from the internet, not human-curated
- **Cycle consistency** — reward signals from the interplay between verification and alignment
- **Infinite supply of hard problems** — once the system can generate and verify its own tasks

### Application Domains

- **AI software engineers** — one bug per 100 lines is unacceptable for fully autonomous work
- **Cybersecurity** — systems must be hacking-proof against external AI attacks
- **Engineering** — mathematics and reasoning require proper verification
- **Formally verified code** — code with proof of correctness, checkable by tools like Coq/Cruciform provers

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
