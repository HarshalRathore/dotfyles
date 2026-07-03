---
title: "Voice Agent Architecture"
tags:
  - agent
  - ai
  - voice
  - architecture
  - speech
sources:
  - "AI Engineer World's Fair 2025 talk — Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI - https://www.youtube.com/watch?v=-OXiljTJxQU"
  - "AI Engineer World's Fair 2025 talk - Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit - https://www.youtube.com/watch?v=1v9zBiZKlIY"
summary: "Two dominant architectures for voice agents: chained (transcription + LLM + TTS) and speech-to-speech (single model), with trade-offs across latency, cost, accuracy, UX, and integrations."
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

# Voice Agent Architecture

Building production voice agents involves architectural decisions not present in text-based LLM applications. Two dominant patterns have emerged, each suited to different use cases. ^[inferred]

## Chained Architecture

The established approach stitches three models together:

1. **Automatic Speech Recognition (ASR)** — transcribes incoming audio to text
2. **LLM reasoning layer** — processes the transcribed text for intent, context, and response
3. **Text-to-Speech (TTS)** — converts the LLM's text response into spoken audio

**Problems:**
- **Latency** — each hop adds delay; overall response time is the sum of all three stages
- **Lossiness** — semantic understanding degrades across the transcription → reasoning → speech pipeline; paralinguistic cues (tone, emotion, prosody) are lost in transcription and never recovered ^[inferred]
- **Brittleness** — harder to steer mid-conversation; interrupting the model or changing the topic often produces incoherent responses, as shown in the talk's demo of models from ~6 months prior

## Speech-to-Speech Architecture

An emerging pattern where a single end-to-end model handles transcription, reasoning, and speech generation in one pass. OpenAI's [[concepts/openai-real-time-api|Real-time API]] exemplifies this approach.

**Benefits:**
- **Lower latency** — single model eliminates inter-stage hops
- **Semantic preservation** — the model maintains full understanding of conversational context, including tone and emotion
- **Expressiveness** — models can produce emotional, dynamic speech with appropriate pacing and intonation
- **Steerability** — users can interrupt, change topics, or redirect the conversation mid-turn

The talk demonstrated that speech-to-speech models reached a "good enough" tipping point where they transitioned from "slow, robotic, and brittle" to "fast, expressive, and accurate" in roughly six months. ^[extracted]

## Trade-off Framework

The choice between architectures depends on five dimensions that trade off against each other: ^[inferred]

| Dimension | Consumer Application | Customer Service |
|---|---|---|
| **Latency** | Critical — must be fast and responsive | Important but can sacrifice for accuracy |
| **Cost** | Lower priority | Significant but justified by value |
| **Accuracy/Intelligence** | Lower priority — more about expressiveness | Critical — cannot get order numbers or account details wrong |
| **User Experience** | Highest priority | Important but can trade for accuracy |
| **Integrations/Tooling** | Minimal — simple interaction | Critical — SIP, Twilio, internal systems |

## Delegation Through Tools

A pattern seen in production voice agents: the [[concepts/openai-real-time-api|real-time API]] serves as a **frontline agent** handling common interactions, while delegating harder tasks to smarter models (O3, O4 mini) via tool calls. This allows the voice layer to stay fast and responsive for routine interactions while routing complex reasoning to more capable models that run asynchronously. ^[extracted]

**Key guidelines for tool use:**
- Start simple — don't connect 10+ tools to a single agent
- Keep the number of tool calls limited per agent
- Add tools incrementally as needed
- Use summarization of conversation state during handoffs between agents to avoid information loss

Voice agent architecture is a specialization of broader [[concepts/agentic-architecture|agentic architecture]], where the speech modality adds constraints around latency, expressiveness, and real-time interaction that text-based agents don't face. The same directed-graph orchestration and tool-use patterns apply, but with voice-specific considerations for turn-taking, interruption handling, and paralinguistic communication.

## Turn-Taking and the VAD Bottleneck

A critical component of the cascading architecture is [[concepts/voice-activity-detection|Voice Activity Detection (VAD)]], which determines when the user has finished speaking. Traditional VAD uses a neural network (speech/not-speech) plus a silence algorithm (~500ms threshold) — entirely backward-looking and serial. ^[extracted]

This creates the interruption problem that plagues production voice agents, especially in high-stakes contexts like healthcare where interruptions cause user churn. ^[extracted]

Emerging solutions fall into two categories: ^[inferred]
- [[concepts/semantic-end-of-utterance-detection|Semantic VAD augmentation]] — models that analyze conversation context, syntax, and prosody to predict turn endings
- [[concepts/full-duplex-voice-models|Full duplex models]] — always-listening, always-generating architectures that process input and output simultaneously

The talk predicted that augmented cascading models, not full duplex, will dominate production voice AI because they offer more control over brand-specific behavior and instruction following. ^[inferred]

## Sources

- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk
- [[references/why-chatgpt-keeps-interrupting-you-tom-shapland-livekit|Why ChatGPT Keeps Interrupting You — Dr. Tom Shapland, LiveKit]] — Conference talk
