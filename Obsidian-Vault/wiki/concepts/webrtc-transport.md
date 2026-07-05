---
title: "WebRTC Transport"
category: concepts
tags:
  - webrtc
  - voice-agents
  - real-time
  - transport-protocol
  - voice-ai
  - streaming
aliases:
  - WebRTC
  - real-time transport
  - voice transport
sources:
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"
summary: "WebRTC as the real-time transport layer for voice-based agent interfaces, enabling bidirectional audio streaming between users and AI agents. A foundational technology for voice agents.
provenance:
  extracted: 0.85
  inferred: 0.10
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
  - target: "[[concepts/speech-to-text]]"
    type: feeds_into
---

# WebRTC Transport

**WebRTC** (Web Real-Time Communication) is the real-time transport layer for voice-based agent interfaces, enabling bidirectional audio streaming between users and AI agents. In agent architectures, WebRTC serves as the client interface for voice interaction.

## Role in Voice Agent Architecture

Rita Kozlov (Cloudflare) at AIEF2025 identified WebRTC as the first component in building a voice agent:

> "If I wanted to have something that works over voice where I can be like, 'hey, do this for me,' you need something that connects over WebRTC."

WebRTC handles the real-time audio capture and streaming, providing the low-latency transport that makes conversational voice agents possible. Without WebRTC, voice interaction would require recording, uploading, and waiting for responses — destroying the conversational feel.

## Position in the Voice Stack

The voice agent stack flows as:

1. **WebRTC transport** — captures user voice, streams agent voice back
2. **Speech-to-text** — converts spoken input to text for the LLM
3. **LLM reasoning** — processes text, generates response plan
4. **Text-to-speech** — converts agent response to audio
5. **WebRTC transport** — streams audio back to the user

WebRTC is the bidirectional pipe at both ends of this stack.

## Relationship to Chat Interfaces

WebRTC is the voice equivalent of the chat UI in the four-component agent architecture. Both serve as the client interface, but WebRTC adds real-time audio streaming on top of the basic client-server model.

## Related

- [[concepts/voice-agents]] — Voice agent architecture overview
- [[concepts/voice-ai-stack]] — Full voice AI technology stack
- [[concepts/speech-to-text]] — STT that consumes WebRTC audio
- [[concepts/agent-architecture]] — Where WebRTC fits as a client interface
