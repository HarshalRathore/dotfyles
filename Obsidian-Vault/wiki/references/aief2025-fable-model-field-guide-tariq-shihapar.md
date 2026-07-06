---
title: AIEF2026 — Fable Model Field Guide (Tariq Shihapar, Anthropic)
category: references
tags:
- reference
- talk
- aief2026
- claude
- anthropic
- fable
- mythos-models
sources:
- 'https://www.youtube.com/watch?v=4sX_He5c4sI'
summary: Anthropic MTS Tariq Shihapar presents a field guide to working with the Fable model (Mythos class), covering capability overhang, system prompt evolution, finding unknowns, and "being unreasonable."
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
  - target: '[[entities/anthropic]]'
    type: related_to
  - target: '[[entities/claude-code]]'
    type: related_to
  - target: '[[concepts/capability-overhang]]'
    type: related_to
  - target: '[[concepts/mythos-models]]'
    type: implements
---

# AIEF2026 — Fable Model Field Guide (Tariq Shihapar, Anthropic)

> **Speaker:** Tariq Shihapar, Member of Technical Staff at Anthropic
> **Conference:** AI Engineer World's Fair 2026 (WF2026), Day 2
> **Source:** [[misc/wf2026]]

## Overview

Tariq Shihapar presented "Unhobbling Claude: A Field Guide to the Mythos Class of Models" — a practical guide to working with **Fable**, the first Mythos-class model from Anthropic. He described Fable as "the map opening up," comparing it to transitioning from a tutorial level to an open-world RPG in a video game.

The talk covered four parts: **unhobbling Claude**, **finding your unknowns**, **dealing with the grief**, and **being unreasonable**.

## Part 1: Unhobbling Claude

### Models Are Grown, Not Designed

Anthropic's philosophy: model capabilities emerge organically through data, feedback, and compute rather than top-down specification. The harness we put models in and the way we prompt them is a function of our understanding of the model.

### Capability Overhang

Claude gets smarter in "spiky" ways. It doesn't just get better at everything uniformly — new capabilities emerge that aren't visible in raw chat but emerge when given tools.

**Example:** Claude can't answer "which Pokemon end in AW?" in raw chat (two exist: Croconaw and Dreadnought), but with the code execution tool it fetches every Pokemon and writes a script to filter for the suffix. The capability was always there; it needed the right tool to unlock it. ^[extracted]

This is the core challenge with Fable: **figuring out what capability overhang exists** — what's now possible that wasn't visible before.

### Claude Code Evolution

Shihapar traced Claude Code's evolution as evidence of spiky model progress:

- **Context window expansion didn't solve coding** — Naively, a 100M context window should solve coding by pasting the entire codebase. Instead, giving models arms (bash tool, environment interaction) let them build and search their own context. This insight led to Claude Code. ^[extracted]
- **Cloud Tag** — Claude Code gained proactive and multiplayer capabilities. It can now "wake itself up" and do work without being prompted. ^[extracted]
- **System prompt evolution** — Claude 3.5 Sonnet needed large prompts with many examples and many tools. Opus 4.8/Fable models want **smaller** prompts — examples tend to constrain them because they're more imaginative than the examples given. The shift: give context, not constraints. ^[extracted]
- **Ask user question tool** — Progressed from barely callable on Opus 4, to interviewing on Opus 4.5, to generating full HTML reports with embedded questions on Opus 4.8/Fable. ^[extracted]
- **Output format evolution** — Markdown → Plan mode (for human understanding) → In-depth HTML reports the model builds for the user. ^[extracted]

### Biology, Not Physics

Shihapar emphasized that model development is closer to biology than physics — empirical, organic, with intuition to build. He recommended Anthropic's paper "The Biology of a Large Language Model" for understanding this perspective. ^[extracted]

## Part 2: Finding Your Unknowns

When working with Fable, you need to "unhobble yourself." The map (your plan/spec) is not the territory (the actual codebase). Unknowns arise when the territory diverges from the map.

Shihapar proposed a matrix for any problem:

| Category | Description |
|---|---|
| **Known knowns** | What you write in your prompt — what you want |
| **Known unknowns** | Things you know you haven't figured out yet |
| **Unknown knowns** | Things so obvious you wouldn't write them down, but you know it when you see it |
| **Unknown unknowns** | What you haven't considered at all — things that could change how you prompt |

### Techniques for Finding Unknowns

1. **Blind spot paths** — Ask Claude to explore a module and surface relevant unknown unknowns. Example: "I'm working on a new auth provider I know nothing about — do a blind spot path to help me figure out relevant unknowns and help me prompt better." ^[extracted]
2. **Brainstorms and prototypes** — Ask Claude to generate wildly different design decisions (e.g., "make me an HTML page with four wildly different design decisions so I can react to them") to surface unknown knowns, especially for visual/design work. ^[extracted]
3. **Interviews** — Once you have direction, ask Claude to interview you with prioritized questions about the work and your stage. ^[extracted]
4. **References** — Give Claude another "map" — reference code in a different system or language that represents what you want done. ^[extracted]
5. **Implementation notes** — When Claude runs into an unknown during execution, ask it to log the deviation with context so you can understand why it happened. ^[extracted]
6. **Quiz yourself** — Ask Claude to quiz you about what happened to ensure you understand the work before creating a PR or merging. ^[extracted]

## Part 3: Dealing with the Grief

Shihapar shared a personal reflection: when he returned to his old YC startup's codebase with Fable, tasks that would have taken weeks were done in hours. This brought both a "huge sense of gain" and a "sense of loss."

He remembered loving programming — the feeling of seeing the codebase in his mind and rotating it. He also remembered staying up late nights debugging, working on things for weeks, swimming in failure. Most projects he's worked on have failed; most startups go bankrupt.

His reflection: **the only way out is through**. There's still a lot to learn with agentic coding and Fable, but if we stay in the loop, unhobble the model, we can come out on the other side with much more. ^[extracted]

## Part 4: Being Unreasonable

Shihapar's core thesis: **trade-offs are not real** with Fable.

In his previous company, he was used to being "reasonable" — writing down priorities and choosing what to do this quarter. But with Fable, the math changes. "Good, fast, cheap — now it's pick three" becomes a false constraint.

> "The best way to do more ambitious work is to reframe and make ourselves more ambitious. Because I think the only way to prove that agents work is to do the best work of our lives faster than ever before." ^[extracted]

Key insights:
- He built a presentation deck in about four hours with Fable that he felt he really liked
- Building is easier, but **generating value is still hard** — it takes many swings to find valuable stuff
- The world is looking at AI engineers to prove that AI can transform work, not just be a fad
- His resolution: be more productive, work less, spend more time with people he cares about ^[extracted]

## Key Ideas

- **Fable model** — Anthropic's new Mythos-class model, rolled out later on the day of the talk. Described as "the map opening up." ^[extracted]
- **Capability overhang** — Models have latent abilities unlocked by tools, not visible in raw chat. ^[extracted]
- **Models are grown, not designed** — Anthropic's philosophy of organic capability emergence. ^[extracted]
- **System prompt is shrinking** — Newer models need smaller prompts with context rather than constraints. ^[extracted]
- **The map is not the territory** — Unknowns arise when the codebase diverges from your mental model. ^[extracted]
- **Blind spot paths** — Using Claude to explore unfamiliar modules and surface unknown unknowns. ^[extracted]
- **Being unreasonable** — Rejecting implicit trade-offs and pushing for more ambitious work. ^[extracted]
- **Generating value is still hard** — Building is easier with agents, but finding valuable work takes many swings. ^[extracted]

## Open Questions

- How does the "smaller system prompt" trend scale to complex, multi-step agentic workflows?
- What are the long-term implications of "being unreasonable" — does it lead to scope creep or genuine breakthroughs?
- How does the grief transition affect teams adopting agentic coding at scale?
- What does "capability overhang" mean for model evaluation — are we measuring the right things?

## Related

- [[entities/tariq-shihapar]] — Speaker
- [[entities/anthropic]] — Company
- [[entities/claude-code]] — Product area
- [[concepts/capability-overhang]] — Core concept
- [[concepts/mythos-models]] — Fable classification
- [[misc/wf2026]] — Conference overview
