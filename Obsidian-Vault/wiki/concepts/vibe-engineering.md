---
title: Vibe Engineering
category: concepts
tags:
- vibe-engineering
- vibe-coding
- ai-coding
- agentic-coding
- code-scrutiny
- prompt-engineering
sources:
- 'https://www.youtube.com/watch?v=jv-wy5pxxlo'
- 'https://www.youtube.com/watch?v=lqq_lcbajcc'
relationships:
- target: '[[concepts/vibe-coding-origins]]'
  type: extends
- target: '[[concepts/burden-of-generated-code]]'
  type: contradicts
- target: '[[concepts/code-review-primary-skill]]'
  type: implements
- target: '[[concepts/agent-loop|Agent Loop]]'
  type: related_to
- target: '[[concepts/vibe-coding-as-agentic-ai|Vibe Coding as Agentic AI]]'
  type: related_to
- target: '[[concepts/voice-dictation-ai-coding]]'
  type: uses
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Vibe Engineering
---

# Vibe Engineering

A disciplined approach to AI-assisted development where the developer actively steers, scrutinizes, and corrects AI-generated code rather than blindly accepting it. ^[extracted] Coined as a response to the "vibe coding" paradigm of pressing accept without reading code.

## Core Distinction

Vibe engineering sits between blind "vibe coding" and traditional hand-written development:

- **Vibe coding** — Tell the LLM what to do, press accept, don't read the code. The output is either a jackpot or garbage. ^[extracted]
- **Vibe engineering** — Use agents to code continuously, but watch the screen, catch issues, and intervene. The vibe engineer looks like the Dexter meme — "something's fishy here." ^[extracted]

The vibe engineer has domain knowledge and uses it to evaluate AI output. The generated code reflects the engineer's own knowledge and limitations, making them uniquely qualified to spot problems. ^[inferred]

## Key Practices

1. **Voice-to-code narration** — After the agent generates code, narrate your thinking out loud about what you see in the UI and then in the code. Prompts can last up to five minutes. ^[extracted]
2. **Technical specificity** — Prompts must include technical jargon, TRPC definitions, abstraction patterns — not vague "fix the app" requests. ^[extracted]
3. **Context engineering** — Provide rules, docs, commands, and memories. The agent cannot read your entire app context and is not a mind reader. ^[extracted]
4. **Real-time intervention** — Use tools like Cursor Composer 1 to watch the agent work and stop/correct mid-generation. ^[extracted]
5. **Good-enough judgment** — Know which code doesn't need optimization and move on. Not everything requires perfection. ^[extracted]

## Cultural Dynamics

Vibe engineering requires convincing skeptical senior engineers to try it — they yield 10x results once adopted. ^[extracted] Conversely, giving AI tools to juniors and interns who assume AI output is perfect is dangerous. ^[extract0ed] Companies like Shopify track "vibe coding leaderboards" by token consumption, with top burners being the most valuable employees. ^[extracted]

## Relationship to Model Capability

Vibe engineering only works if the engineer knows what they're doing. A vibe coder with an unreliable model makes wrong decisions fast — not useful. ^[extracted] The skill combines technical knowledge, model capability awareness, context management, and the judgment to know when code is sufficient. ^[inferred]

## Related

- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — The paradigm vibe engineering evolved from
- [[concepts/burden-of-generated-code|Burden of Generated Code]] — Why blind acceptance is dangerous
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — The core skill vibe engineering requires
- [[concepts/voice-dictation-ai-coding|Voice Dictation for AI Coding]] — Kitze's preferred workflow technique
- [[entities/kitze|Kitze]] — Primary articulator
- [[entities/cursor-ai|Cursor]] — Tool with Composer 1 enabling real-time intervention

## Relationship to Agent Architecture

Vibe engineering operates on top of the agent loop pattern — an LLM wrapped in an execution loop that can read, decide, call tools, and self-verify. The ReAct framework (reason, act, reason, act until final answer) is the minimal architecture enabling agentic coding. ^[extracted]

While vibe coding is the proof-of-concept (telling an agent the gist of what you want), vibe engineering is the production discipline (watching, correcting, intervening). The gap between them is the guardrails problem: SSO, RBAC, secure external service integration, audit logs, compliance, cost control, and evals. ^[inferred]
