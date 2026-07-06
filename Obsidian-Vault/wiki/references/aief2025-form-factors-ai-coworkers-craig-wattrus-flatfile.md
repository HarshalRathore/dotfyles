---
title: Form Factors for Your New AI Coworkers — Craig Wattrus, Flatfile
tags:
- reference
- talk
- aief2025
- agent-design
- flatfile
sources:
- 'https://www.youtube.com/watch?v=cimvknx-cni'
summary: Craig Wattrus (Flatfile) on four form factors for AI coworkers (invisible, ambient, in-line, conversational), character coaching vs output control, and woodworking-inspired design philosophy of fee...
provenance:
  extracted: 0.8
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# Form Factors for Your New AI Coworkers — Craig Wattrus, Flatfile

> [!tldr] Craig Wattrus of Flatfile argues AI product design should focus on form factors (invisible, ambient, in-line, conversational) for AI coworkers, treating model interaction as "feeling the material" — directly understanding model properties through hands-on prototyping instead of designing through layers of mockups and prototypes. Inspired by Amanda Askell's character design work at Anthropic, he advocates for a "character coach" approach over output control.

## Key Themes

### 1. The Four AI Coworker Form Factors

Wattrus identifies four surfaces where AI interacts with users:

| Form Factor | Description | Example |
|---|---|---|
| **Invisible** | AI operates in the background, completely hidden from the user | When a user signs up for Flatfile, AI agents write a customized demo application without the user knowing |
| **Ambient** | AI has a subtle, non-intrusive presence in the workspace | Sparkle icons appear on columns where the AI detects data that can be transformed |
| **In-Line** | AI works directly within the user's active workflow | AI writes and executes code against the user's dataset as they work |
| **Conversational** | AI interacts through natural language chat | Flatfile's no-code Build Mode where users describe applications through conversation |

See [[concepts/ai-coworker-form-factors]] for the full treatment.

### 2. Character Coaching vs Output Control

Inspired by [[entities/anthropic|Anthropic]]'s Amanda Askell on building Claude's character, Wattrus describes his shift from controlling agent outputs (editing copy, policing word choice) to coaching agent character (shaping personality, nature, tendencies). He built a "chat tuner" tool to experiment with system prompt parameters — friendliness, conciseness, caution — to explore how different personalities manifest. ^[extracted]

See [[concepts/character-coach-approach]].

### 3. Feeling the Material

Drawing from his woodworking background, Wattrus argues AI design must move from mediated layers (mockups, prototypes, specs) to direct model interaction. The goal: understand model properties through hands-on building. "My new north star is treating an environment for these LLMs to shine — what's this form factor that can help them nail their assignment, stay aligned, and grow as the models get better?" ^[extracted]

See [[concepts/feeling-the-material]].

### 4. Finding the Grain

Once you understand the material, work with its grain — its natural characteristics of smoothness, roughness, strength, and weakness. Wattsrus demonstrated this with Flatfile's build mode UI redesign, where the agent communicates visually, asks for confirmation, shows emotion, and backs off gracefully. The redesign felt so natural that the conversational pattern was portable to in-line interfaces. ^[extracted]

See [[concepts/finding-the-grain]].

### 5. Forward-Leaning Agents

Wattrus describes the forward-leaning agent characteristic: curious, excitable, focused. He demonstrated emergent behavior where an agent dropped into an environment with JSON and CSV files independently decided to combine them, wrote a report, flagged duplicates, and suggested next steps — all without prompting. ^[extracted]

See [[concepts/forward-leaning-agent]].

### 6. Emergent Behavior from Play

Wattrus emphasizes the value of play and curiosity in AI design. He demonstrates emergent outcomes that came from prototyping and experimentation rather than top-down planning:
- An agent that combined data files unprompted
- An agent that analyzed customer knowledge and told the human how to fix issues it couldn't fix itself
- The forward-leaning nature emerging naturally from a model in the right environment

"I don't think I would be able to get to that without playing and being curious." ^[extracted]

## Flatfile AI Architecture

Wattrus describes Flatfile's AI stack (at time of talk): ^[extracted]

1. **Customer applications** on Flatfile infrastructure
2. **Real-time context** — data and validation outcomes (errors, warnings, dirty data signals)
3. **AI agents** — with tools and jobs
4. **User-facing surfaces** — the four form factors

See [[entities/flatfile]] for full architecture.

## Notable Prototypes

- **Chat tuner** — tool for exploring system prompt personality parameters
- **Cursor experiment** — giving AI a cursor in design tools (felt "like touching AGI" briefly, then constraining)
- **Forward-leaning agent** — prototype where agent took initiative without explicit prompting
- **Obvious** — new consumer-facing product bringing data migration learnings to end users

## Personal Benchmark: Order Complete

Wattrus describes "Order Complete" as a personal benchmark — a specific data-fixing task for evaluating model quality and speed trade-offs. He runs it as a "bake-off" between models and has yet to find one that is both very fast and very good for this specific problem. ^[extracted]

## Related

- [[entities/craig-wattrus]] — Speaker
- [[entities/flatfile]] — Company
- [[concepts/ai-coworker-form-factors]] — The four form factors
- [[concepts/character-coach-approach]] — Character coaching methodology
- [[concepts/feeling-the-material]] — Direct model interaction design
- [[concepts/finding-the-grain]] — Working with model characteristics
- [[concepts/forward-leaning-agent]] — Proactive but bounded agent behavior
- [[concepts/beyond-chatbots]] — Extends the beyond-chatbots thesis with specific form factors
- [[concepts/agent-design-patterns]] — Agent patterns that form factors deploy
- [[concepts/gardening-as-design-paradigm]] — Related non-deterministic design paradigm

## Sources

- <https://www.youtube.com/watch?v=CiMVKnX-CNI> — AI Engineer World's Fair 2025 talk
