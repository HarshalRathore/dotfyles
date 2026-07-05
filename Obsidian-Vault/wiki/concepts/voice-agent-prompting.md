---
title: "Voice Agent Prompting"
tags:
  - ai
  - voice
  - prompting
  - ux
  - speech
sources:
  - "[[sources/watchv=-oxiljtjxqu]]"
summary: "Techniques for prompting voice agents that go beyond text prompts, controlling expressiveness, tone, demeanor, and enthusiasm through voice-specific customization."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Voice Agent Prompting

Prompting for voice agents introduces control dimensions absent in text-based LLM prompting. Beyond instructing what to say, voice prompts control **how** the agent speaks — its demeanor, tone, enthusiasm, and expressiveness. ^[inferred]

## Voice-Specific Prompt Dimensions

In text-based agents, the prompt controls only content and structure. Voice agents add:

- **Demeanor** — professional, casual, friendly, authoritative
- **Tone** — warm, neutral, serious, playful
- **Enthusiasm level** — measured, energetic, subdued
- **Pacing** — fast, measured, slow
- **Expressiveness** — dynamic range, emotional inflection

These parameters are controlled through the same prompt mechanism but yield qualitatively different output in speech-to-speech models because the model generates speech directly rather than going through a separate TTS layer. ^[inferred]

## Prompt Structure for Voice Agents

The talk demonstrated a structured approach to voice agent prompts:

1. **Greeting** — How the agent introduces itself
2. **Description** — What the agent does and its scope
3. **Instructions for users** — What the user should expect and how to interact
4. **Behavioral guidelines** — How to handle edge cases, interruptions, topic changes

This mirrors few-shot prompting patterns from text agents but adapted for the conversational flow of a voice interaction.

## Brand Customization

Voice agent prompting is also a brand customization surface. The talk cited [[entities/tinder|Tinder's]] Riz Chat experience as an example where brand realism and customization were critical to user adoption. The voice personality must align with the brand identity to create a coherent user experience. ^[extracted]

## Experimentation

OpenAI provides [OpenAI.fm](https://openai.fm) as a tool for experimenting with voice customization — changing voices, adjusting prompt styles, and observing the range of expressive variation. The talk emphasized that prompt quality alone can produce significant fluctuations in voice agent performance, making experimentation an important part of the development cycle.

## Related

- [[concepts/voice-agent-architecture|Voice Agent Architecture]] — the architectural patterns that voice prompting runs on top of
- [[concepts/voice-agent-evals|Voice Agent Evals]] — how to evaluate whether your voice prompts achieve the desired tone and behavior
- [[concepts/agentic-architecture|Agentic Architecture]] — broader context of agent design

## Sources

- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk
