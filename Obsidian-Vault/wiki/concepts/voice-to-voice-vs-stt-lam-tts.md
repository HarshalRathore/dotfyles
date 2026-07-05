---
title: "Voice-to-Voice vs STT-LAM-TTS Architecture"
category: concepts
tags:
  - voice-ai
  - architecture
  - stt
  - tts
  - voice-to-voice
  - model-design
summary: Comparison of two voice agent architectures: the traditional STT → LLM → TTS pipeline versus emerging voice-to-voice models that process audio directly.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/voice-pipeline]]"
    type: related_to
  - target: "[[concepts/voice-ai-latency]]"
    type: related_to
  - target: "[[concepts/finvoice]]"
    type: implements
---

# Voice-to-Voice vs STT-LAM-TTS Architecture

There are two primary architectures for building voice AI agents: the traditional pipeline approach (STT → LLM → TTS) and the emerging voice-to-voice approach (audio in, audio out).^[extracted]

## STT-LAM-TTS Pipeline

The standard approach processes voice through a text intermediate:

1. **Speech-to-Text (STT)** — converts spoken input to text
2. **Language Model (LAM)** — generates a text response
3. **Text-to-Speech (TTS)** — converts the response back to audio

This is the architecture used by [[concepts/finvoice|Finvoice]] and most current voice agents.^[extracted]

**Advantages:**
- **Control over output.** The text intermediate allows for prompt engineering, RAG retrieval, tool calling, and content filtering.^[extracted]
- **Mature ecosystem.** Each component (STT, LLM, TTS) has a mature, competitive market with many options.
- **Composability.** The text layer enables integration with existing text-based agent systems (like [[entities/intercom-fin|Intercom Fin]] on chat).
- **Debuggability.** Transcripts provide a human-readable record of the interaction.

**Disadvantages:**
- **Cumulative latency.** Each component adds latency; the total voice-to-voice latency is the sum of all three plus network transport.
- **Information loss.** Speech contains prosody, emotion, and emphasis that may be lost in transcription.
- **Articificial quality.** The separate TTS step can produce speech that sounds less natural than end-to-end models.

## Voice-to-Voice Models

Voice-to-voice models process audio input directly and produce audio output, skipping the text layer entirely.^[extracted]

**Advantages:**
- **Potentially faster.** Fewer processing steps means lower latency.
- **More natural speech.** The model can preserve prosody, emotion, and emphasis from the input and generate more natural-sounding output.^[extracted]

**Disadvantages:**
- **Less control.** Without a text intermediate, it's harder to inject RAG content, apply tool calls, or filter output.
- **Immature ecosystem.** Voice-to-voice models are newer and less mature than the individual STT/LLM/TTS components.
- **Harder to debug.** Audio recordings are less convenient to review than text transcripts.

## Trade-off Summary

| Dimension | STT-LAM-TTS | Voice-to-Voice |
|---|---|---|
| Output control | High (text intermediate) | Low (audio only) |
| Latency | Higher (3 stages) | Potentially lower |
| Naturalness | Good (improving TTS) | Potentially better |
| Ecosystem maturity | Mature | Emerging |
| Debuggability | High (transcripts) | Lower (audio) |
| RAG integration | Native | Challenging |

## Current State

Most production systems, including Finvoice, use the STT-LAM-TTS approach.^[extracted] The voice-to-voice approach is promising but not yet mature enough for enterprise customer service use cases that require robust RAG, tool calling, and content control.^[inferred]

## Related

- [[concepts/voice-pipeline]] — the STT-LAM-TTS pipeline architecture
- [[concepts/voice-ai-latency]] — latency constraints that both architectures must satisfy
- [[concepts/finvoice]] — uses STT-LAM-TTS architecture
- [[concepts/agentic-rag]] — RAG integration is easier with text intermediate
