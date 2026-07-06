---
title: Always-On AI
category: concepts
tags:
- ai
- ambient
- autonomous
- windsurf
- background
- human-ai-ratio
- agent-ratio
summary: The vision of AI working continuously in the background — researching, preparing, and acting autonomously — targeting a 99% agent / 1% human ratio where the AI only asks for final approval. An exte...
sources:
- 'https://www.youtube.com/watch?v=jvunpl5qo8q'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Always-On AI

**Always-On AI** is the vision of AI working continuously in the background — researching, preparing, and acting autonomously — targeting a 99% agent / 1% human ratio where the AI only asks for final approval. The concept was articulated by [[entities/kevin-hou|Kevin Hou]] of [[entities/windsurf|Windsurf]] at AIEF2025 as the future trajectory of the [[concepts/shared-timeline|shared timeline]] model. ^[extracted]

## The Ratio Trajectory

Hou frames the evolution of human-AI collaboration as a ratio: ^[extracted]

- **Current state**: Timelines are 80-90% agent, 10-20% human
- **Target**: 99% agent, 1% human — only asking the user for final approval

This represents a shift from AI as an active participant (the developer must prompt, guide, and review) to AI as a background worker (the AI does the work and surfaces results for approval).

## Background Operation

Always-On AI means Windsurf works for you "even when you don't know it" — not only while you type and use autocomplete, but also in the background, researching when you're working, fully in parallel, only asking you to approve. ^[extracted]

This is the practical realization of the [[concepts/parallel-agents|parallel agents]] capability: multiple agents working simultaneously on different aspects of a task while the human continues their work.

## Anytime, Anywhere Coding

Hou extends the always-on vision to include voice-activated coding from any location: "your bed, the toilet, when you're on the bus, voice activated Alexa, the possibilities are endless." ^[extracted] The always-on AI is not bound to a desk or keyboard — it's available through any interface, working in the background regardless of how the human initiates interaction.

## Relationship to Ambient Agents

Always-On AI is the software engineering domain's version of [[concepts/ambient-agents|ambient agents]] — AI that operates with no or minimal human input. While ambient agents in the broader AI landscape include systems like NotebookLM (deep research without per-request input), always-on AI is specifically oriented toward the developer workflow: background research, parallel task execution, and autonomous action with approval gates. ^[inferred]

## Technical Requirements

Achieving always-on AI requires:
- [[concepts/ai-harness|Improved agentic harness]] with robust checkpointing
- [[concepts/ai-harness|Memory systems]] that maintain context across sessions
- [[concepts/ubiquitous-ai|Ubiquitous AI]] capabilities to read from all sources
- [[concepts/software-engineering-model|Models trained for workflows]] rather than just code generation
- [[concepts/data-flywheel|Data flywheel]] to continuously improve based on user feedback

## Related

- [[concepts/ambient-agents|Ambient Agents]] — The broader concept always-on AI extends
- [[concepts/shared-timeline|Shared Timeline]] — The model that enables always-on operation
- [[concepts/parallel-agents|Parallel Agents]] — The mechanism for background work
- [[concepts/voice-activated-software|Voice-Activated Software]] — The interface for anytime coding
