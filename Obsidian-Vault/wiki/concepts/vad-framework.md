---
title: Value Architecture Design (VAD)
category: concepts
tags: [requirements-elicitation, product-discovery, user-stories, value-driven-design, agent-instructions]
aliases: [VAD, Value Architecture Design, VAD framework]
relationships:
  - target: '[[concepts/story-mapping]]'
    type: related_to
  - target: '[[concepts/product-discovery]]'
    type: same_as
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: A thinking process (Value Architecture Design) that surfaces requirements AI agents can act on by asking four foundational questions about problem ownership, success criteria, refusal triggers, and decision impact.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Value Architecture Design (VAD)

**Value Architecture Design (VAD)** is a thinking framework for eliciting requirements that AI agents can act on. It moves from a generic "build me an agent" brief to a structured understanding of value creation, the underlying process, and the system architecture needed to support it. ^[extracted]

Presented at the AI Engineer World's Fair 2026. ^[extracted]

## The Core Insight

When AI coding agents commoditize software construction, the bottleneck shifts from *building* to *figuring out what to build*. VAD addresses this by making the analyst toolkit — story mapping, business model canvas, value canvas — the primary differentiator: ^[extracted]

> "If you can read the room, if you can elicit the right requirements, then you will be able to build more valuable software. [...] You can prompt your code, you can prompt your AI, you can prompt your whole specification — you can't prompt your room." ^[extracted]

The risk of skipping this step is building a "faster horse" — replicating what already exists because AI, by default, produces the most common answers. ^[inferred]

## The Four Questions

VAD centers on four questions that bridge business need and AI-executable specifications: ^[extracted]

| # | Question | Purpose |
|---|----------|---------|
| 1 | **Whose problem is this?** | Name a specific persona; quantify the problem so the AI knows exactly who it serves |
| 2 | **What does winning look like for them?** | Define success outcomes — what it means for the user to achieve their goal quickly, smoothly, or safely |
| 3 | **What would make them refuse to use it?** | Surface barriers: platform incompatibility, cumbersome UX, data security concerns |
| 4 | **Would it change a decision?** | Identify the decision the system influences and whether it tilts the user toward better outcomes |

These questions ensure the AI receives structured context rather than vague prompts, producing better results from the same model. ^[extracted]

## The VAD Process Flow

The framework follows a disciplined progression: ^[extracted]

1. **Value** — Understand what value means for the customer, how it is created and measured
2. **Process** — Map the current process that supports (or fails) that value creation
3. **Architecture** — Design the system architecture to best support the value and process
4. **Design** — Implement with the right components, noting what process changes are needed along the way

This mirrors the classic product management pipeline but explicitly adapted for AI-era software, where the design output feeds directly into agent-executable specifications. ^[inferred]

## User Stories as AI Interface

VAD pairs user stories written in the standard **persona-need-goal** format (capturing who, what, and why) with acceptance criteria derived from the four questions. Because AI models are trained on this ubiquitous format, well-structured user stories produce superior results from coding agents. ^[extracted]

## Old Skool, New Economics

VAD is deliberately described as "old skool" product management — story mapping, business model canvases, value canvases — but with new economics. Since every team has access to the same models, the differentiator becomes who understands the business need better: ^[extracted]

> "We all have access to the same tools, so the difference will be who can understand the business need better." ^[extracted]

## Related

- [[concepts/story-mapping]] — the VAD-recommended technique for structuring user journeys
- [[concepts/product-discovery]] — broader discipline VAD extends
- [[concepts/user-stories]] — format paired with VAD for AI-executable specs
- [[concepts/agent-centric-development-cycle]] — complementary framework for building reliable agent systems
- [[concepts/three-eras-of-software]] — framing for why requirements elicitation becomes the bottleneck

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
