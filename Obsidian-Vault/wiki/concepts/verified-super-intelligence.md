---
title: "Verified Superintelligence"
category: concepts
tags: [agi, verified-super-intelligence, self-supervised-rl, formal-verification, alignment, aief2025]
aliases: [verified superintelligence, verified super-intelligence]
sources:
  - "https://www.youtube.com/watch?v=-9E9_21tx04"
summary: "Chris Segity's vision of AI systems that produce safe and independently verifiable artifacts — code with proof of correctness — through self-supervised reinforcement learning."
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
  - target: "[[entities/chris-segity|Chris Segity]]"
    type: proposed_by
  - target: "[[concepts/reinforcement-learning|Reinforcement Learning]]"
    type: extends
  - target: "[[concepts/sft|SFT]]"
    type: builds_on
---

# Verified Superintelligence

**Verified Superintelligence** is Chris Segity's vision of AI systems that produce safe and independently verifiable artifacts — code that comes with its own guarantees of correctness — through self-supervised reinforcement learning. ^[extracted]

## Core Principles

1. **First-class verification** — correctness checking that is model-free (formal proofs, theorem provers like Coq)
2. **First-class alignment** — alignment that must be model-based (checking human intent)
3. **Verification should be agentic** — the verifier has tool access and can test artifacts in environments

## The Interplay of Verification and Alignment

- If the output is not correct, it cannot be properly aligned
- Correctness and alignment reinforce each other
- Most correctness checking can be model-free; alignment must be model-based
- The interplay between the two allows improvement on both fronts ^[extracted]

## Self-Supervised Reinforcement Learning

The next big leap — analogous to the jump from supervised learning on labor data to training on the whole internet — involves: ^[extracted]

- **Generator agent** — creates solutions to problems mined from the web
- **Validator/Verifier agent** — checks correctness and alignment, provides reward signals
- **Agentically generated tasks** — the agent finds its own problems from the internet
- **Bootstrapping** — cycle consistency and reward signals from verification/alignment interplay
- **Infinite supply of hard problems** — once the system generates and verifies its own tasks

## Infrastructure

- **Morph Cloud** — infrastructure for branching sandboxes, trying versions, rollback
- The generator and validator can share the same model but connect to the cloud infrastructure

## Application Domains

- **AI software engineers** — one bug per 100 lines is unacceptable for fully autonomous work; ongoing verification required
- **Cybersecurity** — systems must be hacking-proof against external AI attacks in the next few years
- **Engineering** — mathematics and reasoning require proper verification by AI agents
- **Trustlessly aligned AI** — we don't just trust the AI; we can actually check it

## Timeline

Chris believes that within five years, AI-driven cyber attacks will be severe enough that nobody will run software that is not fully formally verified. ^[extracted]

## Sources

- AI Engineer World's Fair 2025 — Reasoning + RL Track: https://www.youtube.com/watch?v=-9E9_21tx04
