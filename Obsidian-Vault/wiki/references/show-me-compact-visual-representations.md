---
title: "show-me: compact visual representations for coding agents"
category: references
tags: [show-me, coding-agents, agent-output, visualization, humanlayer]
aliases: [show-me-skill, visual-agent-output]
relationships:
  - target: '[[concepts/visual-agent-communication]]'
    type: related_to
  - target: '[[references/claude-code-html-effectiveness]]'
    type: related_to
  - target: '[[entities/dex-horthy]]'
    type: related_to
sources:
  - "https://x.com/i/status/2087569590268391897"
created: "2026-08-14T00:00:00Z"
updated: "2026-08-14T00:00:00Z"
summary: "Dex Horthy's X Article on the show-me skill: compact visual representations (component trees, call stacks, diagrams, diff syntax) instead of walls of prose from coding agents."
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: "2026-08-14"
tier: supporting
affinity: {}
promotion_status: misc
stub: false
---

# show-me: compact visual representations for coding agents

**Author:** [[entities/dex-horthy|Dex Horthy]] (@dexhorthy), founder of [[entities/humanlayer|HumanLayer]] — X Article, August 12, 2026 (modified August 13, 2026).

> **tl;dr** Make your agent converse visually instead of in walls of prose. Compact, text-native visuals (component trees, call stacks, diagrams, diff syntax) are lighter and faster than HTML and good enough for most dev-work shaped problems. The pattern ships as an open skill: `npx skills add humanlayer/skills --skill show-me`.

## Overview

The article argues coding agents have become "pretty much unreadable": models got more intelligent on paper while the experience of using them got worse. It opens with complaints from a former Reddit CEO, Mario Zechner (creator of pi), Connor of Replicas, and Dillon Mulroy, whose popularized skill (from @backnotprop) tells the model to "Restate your last message... State it more simply and concisely, like one human talking to another." The author adds: the thing people loved about Claude — its voice, personality, "soul" — "has been flushed out in the RL dungeon"; Sol is somewhat less cringe but still delivers walls of jargon, multiple times a day. ^[extracted]

The proposal: a `/show-me` skill, live in HumanLayer today, installable anywhere via `npx skills add humanlayer/skills --skill show-me` (or `brew tap humanlayer/humanlayer && brew install humanlayer`). It prompts the agent to use concise visuals to explain what's happening instead of walls of prose. ^[extracted]

Design inspiration: Coda Hale's intuition-vs-attention talk — "analyzing information is hard and exhausting"; the visual cortex was trained over millions of years to process rich visual information effortlessly; optimize tools accordingly. "Just as an axe must fit the human hand to be useful, software must fit the human mind to be useful." ^[extracted]

## The Visual Vocabulary ("What's inside")

1. **Component trees** — frontend structure keeping only the state hooks and module boundaries that matter; everything else left out. (First shared on Twitter December 2025.)
2. **Call stacks** — for orchestration/control-flow/backend-shaped problems; Tanishq wrote a tool computing them straight from the AST.
3. **Diagrams** — inline Mermaid when the chat interface supports it; state diagrams and sequence diagrams work best. "Sometimes they're still slop, but it's usually better than reading words."
4. **File layouts** — shallow file tree, one line of responsibility per entry; good for "where does this live" and scoping a refactor.
5. **Pseudocode** — more concise than real code, especially for algorithmic content.
6. **Types and signatures** — "the shape of the code before any of it exists — the stuff that's too internal for an architecture doc but that an agent can still get wrong."
7. **Diff syntax** — describing component changes, call-tree changes, file-layout changes, and state/control-flow changes (pseudocode shape).
8. **HTML mockups** — "HTML has replaced Figma for a lot of our prototyping work."
9. **HTML diagrams/explainers** — HumanLayer lets agents include HTML directly in assistant responses; otherwise open it in the browser. Hat tip to [[entities/matt-pocock|Matt Pocock]]'s /teach skill HTML explainers. ^[extracted]

## Where It Works Best

- **Program design** — discussing the shape of the code (types, signatures, call stacks) before agents start writing; the author calls design "the phase many folks skip these days, but that I think is essential" (https://hlyr.dev/wsff-gh#program-design). ^[extracted]
- **Diff review** — the same techniques explore large diffs post-hoc to decide what to dig into during review. ^[extracted]
- **General usage** — point it at a route, service, feature, pull request, or current topic, or use it to force a restatement: "this is too much content. show me." ^[extracted]

## Position vs HTML-First Agent Output

The article explicitly positions itself against the HTML-for-agent-output thesis ([[references/claude-code-html-effectiveness|The Unreasonable Effectiveness of HTML]]): compact visuals are "lighter and faster than HTML, good enough for most dev-work shaped problems." The show-me vocabulary is the lightweight tier; full HTML mockups and explainers remain the heavier tier for prototyping. Both are options in the same visual-output direction rather than competitors. ^[inferred]

## Concepts

- [[concepts/visual-agent-communication]] — the pattern generalized
- [[concepts/agent-tools]] — the input-tool triad this complements
- [[concepts/agent-human-interaction]] — readability as interaction quality
- [[concepts/mermaid]] — inline diagram syntax the skill relies on

## Entities

- [[entities/dex-horthy]] — author
- [[entities/humanlayer]] — publisher
- [[entities/matt-pocock]] — /teach skill, HTML explainers
- [[entities/claude-code]] — agent whose output style motivated the skill

## Open Questions

- Effectiveness evidence is anecdotal (team-internal usage); no evals or user studies cited. ^[inferred]
- Whether the visual vocabulary transfers to non-technical audiences. ^[ambiguous]
- The "soul" critique is raised but not addressed — visual output improves comprehension, not tone. ^[ambiguous]

## Related

- [[references/claude-code-html-effectiveness|The Unreasonable Effectiveness of HTML]]
- [[references/humanlayer-context-backpressure|Context-Efficient Backpressure for Coding Agents]]
- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents talk]]
