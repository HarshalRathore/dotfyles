---
title: AIEF2026 — Perception Agents (Jabarth, Amazon AGI Lab)
category: references
tags:
- reference
- talk
- aief2026
- perception-agents
- amazon
- computer-use
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
summary: Amazon AGI Lab's Jabarth presents perception agents — agents that perceive rendered screens, plan, and act in real-time — as the solution to the reliability gap in agentic computer use and knowledge work.
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.59
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T12:00:00Z
updated: 2026-07-06T12:00:00Z
relationships:
  - target: '[[entities/amazon]]'
    type: related_to
  - target: '[[concepts/perception-agents]]'
    type: related_to
  - target: '[[concepts/capability-overhang]]'
    type: related_to
---

# AIEF2026 — Perception Agents (Jabarth, Amazon AGI Lab)

> **Speaker:** Jabarth, Member of Technical Staff at Amazon AGI Lab
> **Conference:** AI Engineer World's Fair 2026 (WF2026), Day 2
> **Source:** [[misc/wf2026]]

## Overview

Jabarth presented on the reliability gap in agentic computer use: agents can perform individual steps (click, scroll, type) but fail at end-to-end workflows that span multiple applications. His thesis: the solution is **perception agents** — agents that perceive rendered screens, plan, and act in real-time, like humans collaborating over a shared screen.

## The Problem: Clicking Is Easy, Work Is Hard

A year ago, the hard problem was getting an agent to find a button and click it on a screen it had never seen. Now:
- Agents can drive browsers
- Agents are starting to drive desktop apps
- **But clicking was the easy part**

### The Real Work Lives in the Seams

**Example:** Onboarding a new team member:
1. Set up accounts
2. Add to Slack channel
3. Book intros with colleagues
4. Order laptops
5. Touches five different systems

Agents can perform each individual step, but they **struggle to do this end-to-end**. The real work lives "in the seams" between applications. The agent can use every tool you give it but still can't do the full work.

> "We taught computers to use computers. We got clicking, scrolling, typing, calling APIs, filling forms — really reliable. String them together in a workflow — agents are fairly good at operating those workflows. So why can't you just hand them more work and walk away?" ^[extracted]

## Capabilities vs. Reliability

Jabarth distinguished between two dimensions:

- **Capabilities** — Adding abilities to models (tool use, model-as-tool, chaining agents). We've mostly figured this out.
- **Reliability** — Without reliability, we cannot build trust. When you need reliability, you need the ninths (90%+), not 60-80%.

**Gut check:** If your agent deletes the database one in four times, you'll never touch it again. ^[extracted]

### Why Coding Was Solved First

Coding made the jump from capable to reliable because **code is verifiable**:
- You can run it
- You can test it
- You can check it
- You can be sure it worked

> "Coding agents write code, open pull requests themselves. We used to read every line — these days hardly anyone does. Code is generated at such pace we can't even do that." ^[extracted]

But knowledge work is messy. There's no unit test for "did the report land?" or "is the design on brand?" **Verification hits the wall where most work lives.**

## The Human Solution: Shared Context

Humans handle messy work successfully every day. How? **We figure things out together.**

- You grab a colleague
- Jump on a Zoom meeting
- Look at the same screen
- Discuss, point, solve in two minutes

None of this work is directly verifiable, but it works because of **shared context** — both people looking at the same screen means less explaining is needed.

> "You don't necessarily need a bigger brain. What you need is shared context." ^[extracted]

## Perception Agents

Jabarth's proposed solution: agents that work like humans do — perceiving, planning, and acting in real-time.

### The Perceive → Plan → Act Loop

Borrowing from robotics:
1. **Perceive** — Take in the screen the way you do (layout, state, what just changed, what we're doing) — not scraping code behind the page but reading rendered output
2. **Plan** — Figure out what to do
3. **Act** — Execute, then verify the result

### Why "Perception" Agents?

1. **Completes the loop on computer use** — Today's agents can act but can't look at results and confirm their own output. A perception agent reads the rendered screen to confirm output instead of hoping. ^[extracted]
2. **No API required** — Works off rendered interface; sees the same pixels and structure you see. Most software doesn't expose APIs. ^[extracted]
3. **More precise input** — Instead of writing a long paragraph describing changes, you can point to elements: "this heading needs to change," "update this section." Much more precise and less lossy than text. ^[extracted]
4. **Real-time reaction** — Humans react while the other person is still working. Agents currently send a prompt, wait, get back, send another prompt — long back-and-forth. Perception agents can react while you're still working, with no waiting time. ^[extracted]

## Open-Source Perception Agent Harness

Jabarth announced two open-source pieces:

### 1. Annotation

A Chrome extension for marking screen elements and describing desired changes:
- Select elements on a screen
- Draw around elements (e.g., a heading)
- Describe changes (e.g., "make it red," "double the font size")
- Agent captures the location, style elements, and creates a complete summary
- No back-and-forth — you captured exactly what you saw, and the agent sees the same thing

### 2. Verification

Gives the agent the capability to check its own work against rendered output — confirming actions actually succeeded instead of just firing them off and moving on.

## Key Ideas

- **Clicking is easy, work is hard** — Agents can perform individual steps but fail at end-to-end workflows across multiple systems. ^[extracted]
- **We taught computers to use computers** — The next hard part is reliability, not capabilities. ^[extracted]
- **Coding solved first because code is verifiable** — Knowledge work has no unit tests. ^[extracted]
- **Shared context solves messy work** — Humans collaborate over shared screens; agents need the same. ^[extracted]
- **Perception agents** — Agents that perceive rendered screens, plan, and act in real-time. ^[extracted]
- **Perceive → Plan → Act** — The robotics-inspired loop for screen-based agents. ^[extracted]
- **Annotation tool** — Chrome extension for marking screen elements and describing changes. ^[extracted]
- **Verification tool** — Gives agents the capability to check their own work. ^[extracted]
- **No API needed** — Perception agents work off rendered interfaces, not back-end APIs. ^[extracted]

## Open Questions

- How does perception agent verification scale to complex multi-step workflows?
- What's the latency of real-time perception vs. turn-based interaction?
- Can perception agents handle dynamic content that changes between perception cycles?
- How does the annotation tool handle accessibility constraints and screen reader compatibility?

## Related

- [[entities/jabarth]] — Speaker
- [[entities/amazon]] — Employer (AGI Lab)
- [[concepts/perception-agents]] — Core concept
- [[concepts/capability-overhang]] — Related capability vs. reliability distinction
- [[misc/wf2026]] — Conference overview
- [[concepts/agent-centric-development-cycle]] — Complementary verification framework
