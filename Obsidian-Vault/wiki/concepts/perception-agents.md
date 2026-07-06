---
title: Perception Agents
category: concepts
tags: [computer-use, agent-architecture, screen-understanding, open-source]
aliases: [perception agents, screen agents, computer use agents]
relationships:
  - target: '[[concepts/acdc-framework]]'
    type: related_to
  - target: '[[concepts/agent-loop]]'
    type: related_to
  - target: '[[concepts/multimodal-ai]]'
    type: related_to
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Agents that perceive and interact with computer screens without APIs — closing the computer-use loop by seeing what's on screen and acting on marked elements.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Perception Agents

**Perception agents** are agents that close the computer-use loop by perceiving what's on screen and acting on it — without requiring APIs. They represent a shift from API-dependent automation to screen-based interaction. ^[extracted]

Presented at the AI Engineer World's Fair 2026. ^[extracted]

## The Problem

Most of today's software people use every day don't expose APIs at all. Traditional automation requires APIs, which limits what can be automated. Perception agents bypass this by treating the screen as the interface. ^[extracted]

## How It Works

The perception agent harness has two pieces (open source): ^[extracted]

1. **Perception** — the agent can see a screen, understand what's on it, and identify elements
2. **Action** — the agent can click, type, and take actions on identified elements

The input also goes the other way: instead of writing a long paragraph to describe changes, you can point to an element and say "this heading needs to change." This is a much more precise signal and less lossy than text. ^[extracted]

## The Human-Like Loop

Today's agents fire off actions and move on — they don't watch what happens or recover if one step fails. A perception agent needs to work like humans do, and Jabarth (Amazon AGI Lab) drew directly from robotics: ^[extracted]

> A robot perceives what's around it. And it plans what to do and then acts. So this loop here from perceiving to planning to acting, this is actually what we also would need on a screen.

The first word — **perceive** — is the critical one. The agent must take in the screen the way a human does: not scrape the code behind the page, but see what is actually rendered — the layout, the state, what just changed. It must keep up in real time, reacting and building on the user's work the way humans collaborate. Today's agents still operate in a turn-based prompt-response cycle: send a prompt, wait, get a result, iterate. The next step is an agent that can react while the user is still working, coming up with suggestions without waiting. ^[extracted]

## The Reliability Gap

Beyond the perceive-plan-act loop, Jabarth identified a deeper obstacle: the gap between capability and reliability. Agents can perform individual steps (clicking, scrolling, typing, API calls) with high reliability. But end-to-end knowledge work — onboarding a new employee across five systems, each with its own workflows — fails in the seams between applications. When asked how often agents succeed at end-to-end workflows, Jabarth estimated 60-80%, but noted: "If your agent one in four times deletes the database, you will never touch that agent again. When you need this reliability, you really need to be in the ninths." ^[extracted]

### Why Code Was Solved First

Code generation made the leap from capable to reliable because code is verifiable — you can run it, test it, and check it. This verification loop enabled trust. Most knowledge work lacks this property: there is no unit test for "did the report land correctly" or "is the design on brand." Verification hits a wall where most real work lives. Solving reliability for non-code knowledge work remains an open field. ^[extracted]

### Shared Context as the Missing Ingredient

Humans handle messy work by sharing context — jumping on a call, looking at the same screen, pointing at elements, solving problems in two minutes. "You don't necessarily need a bigger brain. What you need is this shared context. Because if we're looking, the agent and myself, at the same screen, I probably have much less explaining to do." ^[extracted]

Jabarth's team released two open-source pieces of their perception agent harness: an **annotation tool** (a Chrome extension for selecting elements and capturing design intent) and a **verification tool** (checks agent output against design specs via both visual checks and user-flow walkthroughs, producing a report that flags violations). ^[extracted]

## Security and Inductive Architecture

Two additional aspects of perception agents: ^[extracted]

1. **Code security** — thinking as much about the implications of code as about writing it
2. **Inductive architecture** — models are not yet good at transferring knowledge from one domain to another or finding intersections between concepts for deductive thinking

## Related

- [[concepts/acdc-framework|ACDC Framework]] — perception agents need guide-verify-solve discipline
- [[concepts/agent-loop|Agent Loop]] — the perceive-plan-act cycle
- [[concepts/multimodal-ai|Multimodal AI]] — the capability enabling perception
- [[concepts/computer-use-agents|Computer Use Agents]] — related concept

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
