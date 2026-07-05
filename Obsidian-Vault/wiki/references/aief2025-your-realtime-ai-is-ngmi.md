---
title: "Your Realtime AI is NGMI — Sean DuBois (OpenAI), Kwindla Kramer (Daily)"
category: references
tags:
  - aief2025
  - voice-ai
  - web-rtc
  - web-sockets
  - latency
  - real-time
sources:
  - "[[sources/watchv=e71ytnbcfxy]]"
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.95
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/voice-ai-latency]]"
    type: related_to
  - target: "[[concepts/web-rtc]]"
    type: related_to
  - target: "[[concepts/voice-agents]]"
    type: related_to
---

# Your Realtime AI is NGMI

**Speakers:** Sean DuBois (OpenAI), Kwindla Kramer (Daily)
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=E71YtNbCFXY

## Summary

Sean DuBois from OpenAI and Kwindla Kramer from Daily delivered a talk on building natural, fast, human-like voice experiences. The core thesis: latency is the single most important factor in voice AI — nothing else matters as much. Voice-to-voice latency must stay under 500ms for natural conversation, and exceeding 1 second dooms voice agents to low completion rates.

## Key Points

### Voice AI Latency
- Human-to-human conversation feels natural at ~500ms response time
- Voice agents exceeding 1s response latency suffer poor completion rates and NPS
- Voice-to-voice latency = time between human stopping talking and hearing first audio byte from AI
- A real-world demo showed latency just under 1 second (good but not great)

### WebRTC vs WebSockets
- WebSockets (TCP) guarantee in-order delivery — dropped packets block everything behind them
- WebRTC does "super fast best effort networking" — ignores lost packets within latency budget
- Using WebSockets for real-time audio causes glitches, high latency, or disconnections in 10-15% of connections
- WebRTC handles resampling, packetization, bandwidth estimation, and observability automatically
- WebSockets are fine for server-to-server and prototyping; WebRTC for edge-to-cloud audio

### Voice as the Next UI Paradigm
- Voice will be the core building block of next-gen UIs for the generative AI era
- People already spend hours talking to computers (coding, brainstorming, coaching, therapy)
- Voice is "the next bicycle for the mind" — frees computing from needing hands
- Mobile computing analogy: we're in late 2007, voice is the next platform shift

### Live Demo
- Demonstrated "Squabbert" — a Raspberry Pi running a peer-to-peer WebRTC connection to a laptop
- Showcased on-device syllable counting (impossible for cloud LLMs)
- Demonstrated multi-party connection via PipeCat framework

### Builder Spotlight
- Featured Yashin, a non-technical mom who built a bilingual language education voice app
- She had never written code before but built a working prototype with community guidance
- Demonstrates the democratization of voice AI development

### WebRTC Beyond Consumer Apps
- WebRTC used for surgery over the internet and autonomous vehicles in the field
- Described as "the standard language of the real-time world"
- Can be embedded in any app — websites, iOS, Android — connections "just work"^[extracted]

### The 1-800 ChatGPT
- Sean works on OpenAI's phone-callable ChatGPT service
- Demonstrates real-world voice AI at scale: calling ChatGPT from a regular phone^[extracted]

### Squabbert
- A Raspberry Pi named by Chad's daughter Ella
- Runs a peer-to-peer WebRTC connection directly to Sean's laptop (serverless)
- Demonstrated syllable counting in a poem — a task impossible for cloud LLMs within voice latency budgets^[extracted]

### Resources Shared
- Quinn (Kwindla Kramer) wrote a book on WebRTC included in conference bags
- QR code shared for Yashin's bilingual voice app project
- OpenAI team active on Discord, Twitter, and LinkedIn for builder support^[extracted]

## Relationship to Other Pages

- [[concepts/voice-ai-latency]] — Core concept from this talk
- [[concepts/web-rtc]] — Primary protocol discussed
- [[concepts/voice-agents]] — The application domain
