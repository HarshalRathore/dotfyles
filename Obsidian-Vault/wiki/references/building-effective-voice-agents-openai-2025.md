---
title: "Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI"
tags:
  - reference
  - talk
  - voice
  - openai
  - ai-engineer
sources:
  - "https://www.youtube.com/watch?v=-OXiljTJxQU"
summary: "AI Engineer World's Fair 2025 talk covering voice agent architectures, prompting, evals, guardrails, and production patterns for speech-to-speech applications."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Building Effective Voice Agents

> **Talk:** Building Effective Voice Agents
> **Speakers:** [[entities/toki-sherbakov|Toki Sherbakov]] + [[entities/anoop-kotha|Anoop Kotha]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=-OXiljTJxQU)

## Summary

Practical guidance on building production voice agents using [[entities/openai|OpenAI's]] [[concepts/openai-real-time-api|Real-time API]], covering architecture choices, prompting for expressiveness, evaluation strategies, and safety guardrails.

## Key Topics

### Architecture
- Two [[concepts/voice-agent-architecture|voice agent architectures]]: chained (ASR + LLM + TTS) and [[concepts/speech-to-speech-architecture|speech-to-speech]] (single model)
- The trade-off framework: latency, cost, accuracy, UX, integrations
- Delegation pattern using the Real-time API as a frontline agent with smarter model handoffs

### Prompting
- [[concepts/voice-agent-prompting|Voice-specific prompting]]: controlling demeanor, tone, enthusiasm
- Structured prompts with greeting, description, user instructions
- Brand customization for voice personality

### Evals
- Four-tier [[concepts/voice-agent-evals|evaluation strategy]]: observability, SME labeling, transcription-based evals, audio evals
- Synthetic conversations between two real-time API clients

### Guardrails
- [[concepts/voice-agent-guardrails|Async guardrail execution]] leveraging the text-before-audio latency window
- Configurable debounce periods (e.g., every 100 characters)

## Case Studies

- **[[entities/lemonade-insurance|Lemonade]]** — early investment in evals, guardrails, and feedback mechanisms drove faster iteration
- **[[entities/tinder|Tinder]]** — brand customization and realism were critical for the Riz Chat experience

## Model Evolution

The talk demonstrated how far speech-to-speech models advanced in ~6 months:
- Before: multi-second delays, robotic speech, brittle to interruptions
- After: fast, expressive, steerable, and accurate

## Pages Created from This Source

- [[concepts/voice-agent-architecture|Voice Agent Architecture]]
- [[concepts/speech-to-speech-architecture|Speech-to-Speech Architecture]]
- [[concepts/voice-agent-prompting|Voice Agent Prompting]]
- [[concepts/voice-agent-evals|Voice Agent Evals]]
- [[concepts/voice-agent-guardrails|Voice Agent Guardrails]]
- [[concepts/openai-real-time-api|OpenAI Real-time API]]
- [[entities/toki-sherbakov|Toki Sherbakov]]
- [[entities/anoop-kotha|Anoop Kotha]]
- [[entities/openai|OpenAI]]

## Sources

- [YouTube: Building Effective Voice Agents](https://www.youtube.com/watch?v=-OXiljTJxQU)
