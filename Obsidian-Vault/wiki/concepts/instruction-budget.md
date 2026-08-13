---
title: Instruction Budget
category: concepts
tags: [instruction-budget, context-engineering, agents-md, llm-capability, token-efficiency]
relationships:
  - target: "[[concepts/system-prompt-curve]]"
    type: related_to
  - target: "[[concepts/agents-md]]"
    type: related_to
  - target: "[[concepts/context-engineering]]"
    type: related_to
sources:
  - "https://www.aihero.dev/a-complete-guide-to-agents-md"
  - "https://www.humanlayer.dev/blog/writing-a-good-claude-md"
summary: "The finite capacity of an LLM to follow instructions (~150-200 for frontier thinking models); every instruction token costs per-request context, so instruction-bearing files must stay small."
provenance:
  extracted: 0.78
  inferred: 0.17
  ambiguous: 0.05
base_confidence: 0.45
lifecycle: draft
lifecycle_changed: "2026-08-07"
tier: supporting
created: "2026-08-07T00:00:00Z"
updated: "2026-08-07T00:00:00Z"
---

# Instruction Budget

The instruction budget is the finite number of instructions an LLM can follow with reasonable consistency — a hard ceiling on how much guidance an `AGENTS.md`, system prompt, or skill file may usefully carry. ^[extracted]

## The Figure

Kyle (HumanLayer) introduced the concept: frontier thinking LLMs can follow roughly **150–200 instructions** with reasonable consistency; smaller models attend to fewer than larger ones, and non-thinking models attend to fewer than thinking models. ^[extracted] The exact figure is model-generation-specific and secondhand — treat it as an order of magnitude, not a measurement. ^[ambiguous]

## The Per-Request Tax

Every token in a file like `AGENTS.md` is loaded on **every single request**, whether or not it is relevant: ^[extracted]

| Scenario | Impact |
|---|---|
| Small, focused `AGENTS.md` | More tokens available for task-specific instructions |
| Large, bloated `AGENTS.md` | Fewer tokens for the actual work; agent gets confused |
| Irrelevant instructions | Token waste + agent distraction = worse performance |

The practical consequence: the ideal instruction-bearing file is as small as possible, and instructions that apply only to some tasks should be moved behind [[concepts/progressive-disclosure-forms|progressive disclosure]] so they cost nothing on unrelated requests. ^[extracted]

## Implications

- Instruction-bearing files compete with task instructions for the same context window — the budget is spent on every request, so spending it on rarely-relevant rules is waste. ^[inferred]
- The budget is capability-relative: instructions that constrain weaker models become tax on stronger ones — the same effect that drives the [[concepts/system-prompt-curve|system prompt curve]] and Anthropic's rule shift from "rules" to "judgment". ^[inferred]
- Auto-generated instruction files fail precisely here: they prioritize comprehensiveness over restraint, blowing the budget by default. ^[extracted]

## Related

- [[concepts/agents-md]] — the file where the budget is most commonly spent
- [[concepts/system-prompt-curve]] — the U-shaped curve of optimal prompt size vs model capability
- [[concepts/context-engineering]] — the discipline of managing every token in context
- [[concepts/progressive-disclosure-forms]] — the mechanism for staying under budget
- [[concepts/claude-doctor]] — tooling that trims instructions to fit newer models

## Sources

- "A Complete Guide To AGENTS.md" — Matt Pocock, AI Hero, https://www.aihero.dev/a-complete-guide-to-agents-md
- "Writing a good CLAUDE.md" — Kyle, HumanLayer, https://www.humanlayer.dev/blog/writing-a-good-claude-md (cited by the guide)
