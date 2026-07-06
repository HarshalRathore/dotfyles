---
title: AIEF2025 - Shipping Products When You Don't Know What They Can Do — Ben Stein, Teammates
category: references
tags:
- aief2025
- product-management
- ai-agents
- affordances
- emergent-behavior
- evals
- speech
aliases:
- shipping products ai
- ben stein teammates talk
- aief2025 ben stein
sources:
- 'https://www.youtube.com/watch?v=pthmdt92qng'
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/ben-stein]]'
  type: authored_by
- target: '[[entities/teammates]]'
  type: about
- target: '[[concepts/affordance-thinking]]'
  type: introduces
- target: '[[concepts/emergent-behavior-in-ai]]'
  type: introduces
- target: '[[concepts/boundless-surface-area]]'
  type: introduces
- target: '[[concepts/discover-functionality]]'
  type: introduces
- target: '[[concepts/agent-evaluations]]'
  type: references
summary: AIEF2025 - Shipping Products When You Don't Know What They Can Do
---

# AIEF2025 - Shipping Products When You Don't Know What They Can Do

**Speaker:** [[entities/ben-stein|Ben Stein]], founder of [[entities/teammates|Teammates]]
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=PthmdT92qNg

## TL;DR

Ben Stein argues that product management is undergoing a profound transformation in the age of LLM-based AI agents. Because LLMs are inherently opaque and customer expectations are boundless (a free text input invites unlimited use cases), traditional spec-driven feature development no longer works. Instead, PMs must think in **affordances** (what agents can do) rather than **requirements** (specific features), treat **behavior as emergent**, and use **evals** as the primary feedback loop for discovering and steering what their products can actually do. ^[extracted]

## The Problem

Stein opens with a concrete example from Teammates: a customer asked if they could tag their AI teammate in a Google Doc comment. Stein realized he didn't actually know what would happen — no webhook from Google Docs comments, uncertain email notification content, unknown emergent behavior. This uncertainty is not because Teammates is uniquely novel or because Stein is incompetent — it's because the product management discipline itself must evolve. ^[extracted]

Two structural forces drive this:
1. **LLM opacity** — We don't know what LLMs can do, and we can never fully know. Unlike traditional software where the interface surface area is bounded and understood, LLMs have unbounded input space. ^[extracted]
2. **Boundless customer expectations** — A text input is essentially an invitation for users to do anything. Give an agent one affordance (reply to Google Docs comments), and users will want it everywhere (Linear tickets, Figma, LinkedIn posts). ^[extracted]

## Three High-Level Shifts

### 1. Think in Affordances, Not Requirements

Instead of spec-ing individual features ("if user tags teammate in comment, teammate replies in thread"), think in terms of **affordances** — the building blocks agents have (comment, communicate, email, collaborate). Trust the agentic workflow (the "12-factor agent") to compose these affordances appropriately. ^[extracted]

### 2. Behavior Is Emergent

Not only do we not know if things work — sometimes they do, in ways we didn't expect. The product person's job becomes **discovering functionality**: providing the right building blocks and then discovering what users compose with them. ^[extracted]

### 3. New Communication Challenges

How do you communicate emergent behavior to a development team or backlog? Figma doesn't have affordances for it. PRDs don't have affordances for describing open-ended agent behavior. ^[extracted]

## Practical: Evals

Stein transitions from theory to practice by focusing on **evals**. He polls the audience — engineers who write and run evals, and product people with visibility into evals. His posited thesis is that evals are the critical feedback mechanism for AI products with boundless surface area, though his talk cuts off before fully developing this point. ^[extracted]

## Key Quotes

> "I think what's happening is the product management discipline is going to undergo a transformation, a shift in evolution, whatever you call it, that is super profound." ^[extracted]

> "We don't know, and we can never know what the LLMs know... we don't understand this for the models." ^[extracted]

> "Our job as product people is to discover functionality — what are the right building blocks, what are the right Lego bricks that we give our engineering team, our product, our customers, let them compose, and we discover emergent behavior." ^[extracted]

## Related Pages

- [[concepts/affordance-thinking]] — The core framework introduced
- [[concepts/emergent-behavior-in-ai]] — Behavior as emergent
- [[concepts/boundless-surface-area]] — Why AI products have unbounded input space
- [[concepts/discover-functionality]] — Discovery vs specification
- [[concepts/agent-evaluations]] — Evals as the practical mechanism
- [[concepts/domain-expert-product-manager]] — Related PM transformation thesis
- [[concepts/dynamic-products]] — Related AI product maturity framework
