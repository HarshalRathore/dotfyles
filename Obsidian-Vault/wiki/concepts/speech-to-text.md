---
title: "Speech-to-Text"
category: concepts
tags:
  - speech-to-text
  - stt
  - voice-agents
  - transcription
  - voice-ai
aliases:
  - STT
  - transcription
  - voice recognition
sources:
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"
summary: "The capability to convert spoken language into text, serving as the bridge between voice interfaces and text-based AI systems. A core component of voice agent architectures that enables spoken interaction with LLM-based agents.
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/voice-agents]]"
    type: core_component_of
  - target: "[[concepts/voice-ai-stack]]"
    type: extends
  - target: "[[concepts/agent-architecture]]"
    type: enables
---

# Speech-to-Text

**Speech-to-text** (STT) is the capability to convert spoken language into text, serving as the bridge between voice interfaces and text-based AI systems like LLMs. In agent architectures, STT enables spoken interaction with agents that otherwise operate on text input and output.

## Role in Voice Agent Architecture

Rita Kozlov (Cloudflare) at AIEF2025 described STT as one of the essential components of a voice-based agent:

> "If I wanted to have something that works over voice where I can be like, 'hey, do this for me,' you need something that connects over WebRTC. You then need a speech-to-text model to translate what you said back into text."

The voice agent stack follows this sequence:

1. **WebRTC transport** — captures and streams the user's voice in real time
2. **Speech-to-text** — transcribes the spoken input into text
3. **LLM reasoning** — processes the text and generates a response plan
4. **Text-to-speech** (optional) — converts the agent's text response back to spoken output
5. **WebRTC transport** — streams the response back to the user

## Relationship to Chat Interfaces

STT is the voice equivalent of the chat UI component in the four-component agent architecture. Both serve as the client interface, but STT adds the voice modality layer on top. Rita contrasted voice agents with the more familiar chat UIs that most people use with AI systems today.

## Related

- [[concepts/voice-agents]] — Voice agent architecture overview
- [[concepts/voice-ai-stack]] — Full voice AI technology stack
- [[concepts/agent-architecture]] — Where STT fits as a client interface
- [[entities/cloudflare-agents-sdk]] — SDK that supports voice agent infrastructure
