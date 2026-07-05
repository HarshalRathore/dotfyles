---
title: "From Vibe Coding To Vibe Engineering — Kitze, Sizzy"
category: references
tags:
  - vibe-coding
  - vibe-engineering
  - ai-coding
  - aief2025
  - cursor
  - composer
  - voice-to-code
  - abstraction
sources:
  - "[[sources/watchv=jv-wy5pxxlo]]"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# From Vibe Coding To Vibe Engineering — Kitze, Sizzy

Kitze delivered a talk at AI Engineer World's Fair 2025 arguing that the community should shift from "vibe coding" (blindly accepting AI-generated code) to "vibe engineering" (actively steering and scrutinizing AI code generation). The talk covers the state of front-end development, the hype cycle around AI coding tools, practical workflows for effective AI-assisted development, and the cultural dynamics of AI adoption in engineering teams.

## Key Themes

- **Vibe Engineering vs Vibe Coding** — Vibe engineering means using agents to code continuously while maintaining active scrutiny. The vibe engineer watches the agent work, catches issues, and steers corrections. Vibe coders just accept output without reading code. ^[extracted]
- **Front-End Development Stagnation** — After 10 years, front-end still struggles with basic CSS problems (`<select>` styling, `<dialog>` support, Internet Explorer). The industry hasn't solved fundamental problems despite massive tooling growth. ^[extracted]
- **LLMs Don't Care About DRY** — LLMs don't care about repetitive code, which reveals a human tendency to over-abstract. We abstract too early, and LLMs make it easier to reach the wrong abstraction quickly. ^[extracted]
- **Voice-to-Code Workflow** — Kitze's preferred workflow: after the agent generates code, he immediately starts voice dictation, narrating his thinking process out loud about what he sees in the UI and then in the code. Prompts can last up to five minutes. ^[extracted]
- **Context Engineering** — AI agents cannot read your entire app context and are not mind readers. Without the right context (rules, docs, commands, memories), AI will fail. Vibe engineering requires technical specificity in prompts, not vague requests. ^[extracted]
- **PITA Devs** — "Pain in the Ass" developers who nitpick everything, spend excessive time on PR reviews, are religious about tabs vs spaces, and chase micro-optimizations for tiny user bases. These developers will resist AI coding regardless of capability. ^[extracted]
- **Skill Issue** — Vibe engineering is not just writing English. It requires knowing model limits, agent capabilities, context management, prompt engineering, technical knowledge, and the judgment to know when code is "good enough." ^[extracted]
- **Model Timing** — Trying AI coding tools at the wrong time (e.g., after a model downgrade disguised as an update) leads to bad experiences and premature abandonment. ^[extracted]
- **Composer 1 as Game Changer** — Kitze credits Cursor's Composer 1 for shifting his workflow from watching models run for hours (GPT-5 Codex) to being back in the driver's seat, watching the agent work in real time and intervening. ^[extracted]
- **Junior/Senior Dynamics** — Do not give AI tools to interns and juniors who think AI output is perfect. Skeptical seniors who are convinced to try vibe engineering yield 10x results. ^[extracted]
- **Token Burners as Valuable** — Companies like Shopify track "vibe coding leaderboards" by token consumption — employees burning the most tokens are actually more valuable because they're adopting the new skill. ^[extracted]
- **Legacy Code Value** — The highest-paid engineers throughout history have been people maintaining legacy systems. The "vibe code fixer" role (fixing the last 20% of AI-generated code) is a real emerging job market. ^[extracted]
- **MCP as Buzzword** — Kitze satirizes the MCP hype cycle, coining the backronym "Marketing Charge Protocol" and listing it among mythical compatibility promises and manufactured complexity. ^[extracted]

## Speaker Background

Kitze is an independent developer and entrepreneur with ADHD, working on multiple projects simultaneously including Sizzy (front-end developer browser), Zero to Ship (life OS), and Glynk (changelogs/roadmaps). Active Twitter presence with provocative takes on AI coding. ^[extracted]

## Related

- [[concepts/vibe-engineering|Vibe Engineering]] — Core thesis of the talk
- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — Context for the vibe coding paradigm
- [[concepts/burden-of-generated-code|Burden of Generated Code]] — The problem of accepting bad AI output
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — The skill vibe engineering requires
- [[concepts/voice-dictation-ai-coding|Voice Dictation for AI Coding]] — Kitze's preferred workflow
- [[entities/kitze|Kitze]] — Speaker
- [[entities/cursor-ai|Cursor]] — AI coding tool with Composer 1
