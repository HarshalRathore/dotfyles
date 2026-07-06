---
title: Voice-to-Code
category: concepts
tags:
- voice-to-code
- voice-dictation
- ai-coding
- vibe-engineering
- prompt-engineering
- cursor
sources:
- 'https://www.youtube.com/watch?v=jv-wy5pxxlo'
relationships:
- target: '[[concepts/voice-dictation-ai-coding]]'
  type: extends
- target: '[[concepts/vibe-engineering]]'
  type: implements
- target: '[[concepts/context-engineering]]'
  type: related_to
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Voice-to-Code
---

# Voice-to-Code

A workflow technique where developers use voice dictation to narrate their thinking process to AI coding agents, providing rich context and continuous steering of generated code. ^[extracted] Described by [[entities/kitze|Kitze]] as a "game changer" for vibe engineering.

## The Workflow

Kitze's voice-to-code process:

1. **The agent finishes generating code**
2. **Immediately start voice dictation** — Narrate what you see in the UI as if talking to a friend: "so you did this, you did that, there's a bug"
3. **Jump into the code** — Continue talking about what the agent implemented in the code
4. **Prompts can last up to five minutes** — Rich, detailed narration rather than short commands

The key insight: voice narration externalizes the thinking process, providing the agent with continuous context about intent, observed bugs, and desired changes. ^[inferred]

## Why It Works

Voice-to-code solves a core problem in AI-assisted development: providing sufficient context to the agent. The agent cannot read your entire app context and is not a mind reader. ^[extracted] Voice narration bridges this gap by continuously feeding the agent your mental model of the codebase.

## Comparison to Text Prompts

Text-based vibe coding prompts tend to be vague ("move this entire thing to TypeScript and make no mistakes") and expect perfect results. ^[extracted] Voice prompts are technical, detailed, and specific — containing actual jargon, TRPC definitions, and abstraction patterns. The difference between "vibe engineering" prompts and "vibe coding" prompts is the level of technical specificity. ^[extracted]

## Tool Support

VS Code Copilot includes voice dictation (Command-I by default) using a local model for privacy and speed, with read-back for accessibility and "Hey Copilot" activation. ^[extracted] Kitze uses a separate voice-to-code app (unnamed, citing competitive reasons) for his workflow. ^[extracted]

## Related

- [[concepts/voice-dictation-ai-coding|Voice Dictation for AI Coding]] — Broader concept covering voice input in AI coding tools
- [[concepts/vibe-engineering|Vibe Engineering]] — The paradigm voice-to-code serves
- [[concepts/context-engineering|Context Engineering]] — The problem voice-to-code solves
- [[entities/kitze|Kitze]] — Primary advocate
- [[entities/cursor-ai|Cursor]] — Tool with built-in voice dictation
