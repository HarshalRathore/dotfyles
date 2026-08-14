---
title: Visual Agent Communication
category: concepts
tags: [agent-output, visualization, coding-agents, agent-human-interaction, show-me]
aliases: [show-me pattern, compact visual representations]
relationships:
  - target: '[[references/show-me-compact-visual-representations]]'
    type: derived_from
  - target: '[[references/claude-code-html-effectiveness]]'
    type: related_to
  - target: '[[concepts/agent-tools]]'
    type: related_to
sources:
  - "https://x.com/i/status/2087569590268391897"
summary: "Coding agents communicating via compact visual representations (component trees, call stacks, diagrams, diff syntax) instead of prose walls — popularized by Dex Horthy's show-me skill."
provenance:
  extracted: 0.6
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: "2026-08-14"
tier: supporting
created: "2026-08-14T00:00:00Z"
updated: "2026-08-14T00:00:00Z"
---

# Visual Agent Communication

The pattern of coding agents explaining themselves with compact, text-native visual representations — component trees, call stacks, state/sequence diagrams, file layouts, pseudocode, types and signatures, and diff syntax — instead of walls of prose. Popularized by the [[references/show-me-compact-visual-representations|show-me skill]] from [[entities/dex-horthy|Dex Horthy]] and [[entities/humanlayer|HumanLayer]] (August 2026). ^[extracted]

## Motivation

- Agents trained with RL increasingly produce dense, jargon-heavy prose; users report the experience of agents "got noticeably worse" along this dimension even as capability rose. ^[extracted]
- Humans parse rich visual information with a visual cortex "trained over millions of years," while reading and analyzing prose is effortful. ^[extracted]
- Coda Hale's intuition-vs-attention framing: analyzing information is hard and exhausting, so tools should be optimized to show rather than tell. ^[extracted]

## The Vocabulary

- **Component trees** — frontend structure keeping only the state hooks and module boundaries that matter
- **Call stacks** — control-flow/orchestration shapes; computable straight from the AST
- **Diagrams** — inline Mermaid (state and sequence diagrams preferred)
- **File layouts** — shallow trees with one line of responsibility per entry
- **Pseudocode** — for algorithmic content
- **Types and signatures** — the shape of code before it exists
- **Diff syntax** — deltas for components, call trees, file layouts, control flow
- **HTML mockups/explainers** — the heavier tier for prototyping and explainers ^[extracted]

## Relationship to the Agent Toolchain

[[concepts/agent-tools|Agent Tools]] describe what agents use to read the world (editor, terminal, browser); visual agent communication is the mirror-image output pattern: what agents produce so humans can read them. It sits between plain Markdown (cheap, low visual power) and full HTML (rich, heavier): "lighter and faster than HTML, good enough for most dev-work shaped problems." ^[inferred]

## Applications

- **Program design** — agreeing on types, signatures, and call stacks before code is written
- **Diff review** — navigating large diffs post-hoc to find what to dig into
- **Restatement** — "this is too much content. show me." as an interaction-level pressure valve ^[extracted]

## Open Questions

- Evidence is anecdotal; no evals compare comprehension or velocity against prose or HTML output. ^[inferred]
- Whether visuals transfer to non-technical stakeholders. ^[ambiguous]
- Interaction with the "voice/soul" critique of RL-trained models — visual output addresses clarity, not tone. ^[ambiguous]

## Related

- [[references/show-me-compact-visual-representations]] — the source deep-dive
- [[references/claude-code-html-effectiveness|The Unreasonable Effectiveness of HTML]] — the heavier HTML tier
- [[concepts/agent-tools]] — the input toolchain this complements
- [[concepts/agent-human-interaction]] — interaction-quality dimension
- [[concepts/mermaid]] — diagram syntax
- [[entities/humanlayer]] — publisher of the canonical skill
