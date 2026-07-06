---
title: Voice Agents
category: concepts
tags:
- voice-ai
- agents
- real-time
- web-rtc
- user-experience
- stack-maturity
- video-ai
sources:
- 'https://www.youtube.com/watch?v=e71ytnbcfxy'
- 'https://www.youtube.com/watch?v=ia4lzjh9sts'
- 'AIEF2025 - Milliseconds to Magic: Real‑Time Workflows using the Gemini Live API and Pipecat - https://www.youtube.com/watch?v=fWY1FQwpWkY'
- AIEF2025 - Optimizing inference for voice models in production - Philip Kiely, Baseten - https://www.youtube.com/watch?v=gmTHs5T_YAE
- AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE
- AIEF2025 - From Self-driving to Autonomous Voice Agents — Brooke Hopkins, Coval - https://www.youtube.com/watch?v=kDczF4wBh8s
- 'AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - Neil Dwyer, Gabber - https://www.youtube.com/watch?v=rD23-VZZHOo'
- AIEF2025 - Realtime Conversational Video with Pipecat and Tavus — Chad Bailey and Brian Johnson, Daily & Tavus - https://www.youtube.com/watch?v=ujt0da9Z29Q
provenance:
  extracted: 0.68
  inferred: 0.24
  ambiguous: 0.08
base_confidence: 0.75
lifecycle: draft
tier: core
created: 2026-07-04
updated: 2026-07-05
relationships:
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
- target: '[[concepts/beyond-chatbots]]'
  type: extends
- target: '[[concepts/web-rtc]]'
  type: uses
- target: '[[concepts/turn-detection]]'
  type: related_to
- target: '[[concepts/voice-ai-stack]]'
  type: related_to
- target: '[[concepts/stack-maturity]]'
  type: related_to
- target: '[[entities/baseten]]'
  type: related_to
- target: '[[entities/orpheus-tts]]'
  type: related_to
- target: '[[concepts/voice-inference-metrics]]'
  type: related_to
- target: '[[concepts/voice-agent-trust-problem|Voice Agent Trust Problem]]'
  type: related_to
- target: '[[concepts/large-scale-simulation|Large-Scale Simulation]]'
  type: related_to
- target: '[[concepts/real-time-conversational-video]]'
  type: related_to
summary: Voice Agents
---

# Voice Agents

## Voice Agent Architecture (Rita Kozlov, Cloudflare)

Rita Kozlov (Cloudflare) at AIEF2025 outlined the full stack for building a voice-based CRM agent, illustrating the complete architecture:

+ **WebRTC transport** — Real-time audio streaming from user to cloud
+ **Speech-to-text model** — Convert voice input to text for the LLM
+ **Chat UI host** — Alternative text-based interface
+ **Gateway** — Caching and eval infrastructure for iterative improvement
+ **LLM reasoning** — The thinking/decision-making layer
+ **Workflow agent** — Tracks execution state and next actions
+ **Tool connections** — Browser, API, vector database for knowledge retrieval
+ **Human-in-the-loop** — Approval gate for sensitive actions


This architecture demonstrates that voice agents require the same four-component structure (client, reasoning, workflows, tools) as text agents, with the addition of real-time audio transport and STT/TTS layers. ^[extracted]

Voice agents are conversational AI systems that interact with users through spoken language rather than text. Building natural, fast, human-like voice experiences requires a fundamentally different engineering approach than text-based AI because latency is the dominant factor — nothing else matters as much.^[extracted]

## Building Voice Agents

Voice agent development shares similarities with multi-turn text agent engineering in most respects, but the latency requirements force ground-up rethinking of every component.^[extracted] A voice agent needs:

- **Real-time audio transport** — WebRTC for edge-to-cloud audio streaming, not WebSockets
- **Low-latency STT/TTS** — speech-to-text and text-to-speech pipelines optimized for speed
- **Fast LLM inference** — the model must generate responses within the voice-to-voice latency budget
- **Jitter buffer management** — WebRTC handles packet loss, resampling, and bandwidth estimation automatically
- **Turn detection** — knowing when the user has finished speaking and the agent should respond
- **Interruption handling** — managing the case where a user interrupts the agent mid-response

## Why Use a Framework?

Developers use frameworks like Pipecat instead of writing all the code themselves because the hard problems (turn detection, interruption handling, context management, function calling in async environments) require battle-tested implementations.^[extracted] Voice AI is even more dependent on well-tested infrastructure than other AI domains because the latency budget is so tight that any inefficiency breaks the user experience.^[extracted]

## Enterprise Voice Agents

Enterprise voice agents often become quite complicated because they connect to a large variety of existing legacy systems.^[extracted] They need:
- Reliable function calling to interact with business systems
- Context management across long conversations
- Integration with knowledge bases and internal APIs
- Observability and logging for non-deterministic agent behavior^[extracted]

## The Voice AI Stack

Voice agents live on a four-layer stack: (1) LLMs, (2) real-time APIs like the Gemini Live API, (3) orchestration frameworks like Pipecat, and (4) application code.^[extracted] Each "hard thing" in voice agent development lives somewhere in this stack and can be mapped on a two-dimensional grid of where the code lives and how solved the problem is.^[extracted]

## Stack Maturity Observation

A key insight from the AIEF2025 talk "Milliseconds to Magic": no part of the voice AI stack is more than ~50% solved.^[extracted] Capabilities migrate down the stack over time — from application code to frameworks to APIs to models — but new problems constantly emerge at the application layer as the stack matures.^[extracted] Turn detection is the canonical example: it started as application code, moved to Pipecat, then to the Gemini Live API, and will eventually be handled natively by models.^[extracted]

## The Voice UI Vision

Sean DuBois of OpenAI articulates a strong vision: voice is going to be the core building block of the next generation of user interfaces for the generative AI era.^[extracted] People already spend hours talking to computers — driving development environments with voice, brainstorming, using the computer as a personal assistant, coach, therapist, or researcher.^[extracted] Voice represents what DuBois calls "the next bicycle for the mind" — just as mobile computing freed us from being tethered to desks, voice computing frees us from needing our hands.^[extracted]

## Accessibility and Democratization

The voice agent space is becoming increasingly accessible to non-technical builders. Open source frameworks like Pipecat enable people with no coding experience to build voice applications.^[extracted] This democratization mirrors the early mobile era — just as anyone could build an iPhone app without deep systems knowledge, voice AI tools are lowering the barrier to creating voice experiences.^[extracted]


## The Scaling Challenge

A key challenge for voice agents is the gap between proof-of-concept and production. Voice agents can be made to work for ~10 conversations, but scaling to 10,000 or 100,000 conversations is extremely difficult. Enterprises often get stuck in POC hell — building voice agent demos but being unable or unwilling to deploy them to customer-facing workflows. ^[inferred]

The solution, according to [[entities/brooke-hopkins|Brooke Hopkins]] (Coval, formerly Waymo), is large-scale simulation and continuous eval loops — the same methodology that made autonomous vehicles scalable. ^[inferred] This approach treats voice agents as systems that interact with the real world, requiring simulation infrastructure to cover the non-deterministic space of possible user responses. ^[inferred]

## Beyond Voice: Conversational Video

The voice agent paradigm is extending to video.^[extracted] Real-time conversational video systems combine Pipecat's orchestration with Tavus's video rendering to create interactive video conversations with AI-generated replicas.^[extracted] These systems process both audio and video input, and produce synchronized video and audio output.^[extracted]

Response times for conversational video average around 600 milliseconds, though sometimes intentionally slowed for naturalness.^[extracted] Video synchronization with audio is "a really, really hard thing to do well" and depends on exactly how the pipeline is built.^[extracted] This represents the next evolution of voice agents — adding a visual dimension to the conversation.^[extracted]

## Relationship to Other Concepts


- [[concepts/voice-ai-latency]] — The primary technical challenge in voice agent design
- [[concepts/beyond-chatbots]] — Voice is a new interaction paradigm beyond text chat
- [[concepts/web-rtc]] — The transport protocol that makes real-time voice agents possible
- [[concepts/llm-ui]] — Voice as the next generation of AI user interfaces
- [[concepts/turn-detection]] — Critical component for natural conversation flow
- [[concepts/voice-ai-stack]] — The four-layer architecture voice agents run on
- [[concepts/stack-maturity]] — How capabilities migrate down the stack over time
- [[concepts/real-time-conversational-video]] — The video extension of voice agents

## Production Example: Finvoice

[[entities/intercom-fin|Intercom]] shipped [[concepts/finvoice|Finvoice]] — an enterprise voice AI agent for inbound phone support — in approximately 100 days. ^[extracted] The agent handles knowledge-based queries (pricing plans, return policies, help articles) with a 56% average resolution rate on the text channel and similar targets for voice. ^[extracted] Key design decisions included choosing a flexible knowledge-based agent over narrow scheduling use cases, building a thin-voice playground for rapid customer feedback, and prioritizing workflow integration (escalation paths, context handoff) alongside model quality. ^[extracted]

## Production Example: Baseten/Orpheus

[[entities/baseten|Baseten]] runs [[entities/orpheus-tts|Orpheus TTS]] voice agents at production scale using [[concepts/gpu-mig|MIG-partitioned H100 GPUs]] with [[entities/tensorrt-llm|TensorRT-LLM]] and FP8 quantization, achieving 24 concurrent streams on half an H100 at a few cents per hour of conversation. ^[extracted]

## Production Example: Cartesia/Sonic 2
[[entities/cartesia|Cartesia]] ships [[entities/sonic-2|Sonic 2]] — described as "the fastest model in the world for text-to-speech" — built on state space models rather than transformers. ^[extracted] Sonic 2 is one component of a larger voice agent system that must be integrated with an LLM and speech-to-text model to form a complete pipeline. ^[extracted] Cartesia's approach frames voice AI around three pillars: quality (exquisite naturalness as table stakes), latency (first audio bite delivered as quickly as possible), and controllability (brand-aligned voice customization, described as "arguably most important"). ^[extracted] The company also operates a voice marketplace where voice actors license their voices rather than being replaced by AI, turning c…

## Relationship to State Space Models

Cartesia's Sonic 2 uses state space models (SSMs) instead of transformers, maintaining O(1) generation cost at inference time regardless of context length. ^[extracted] This provides consistent latency — critical for voice applications where latency variability is as bad as high latency. ^[extracted] Cartesia claims to have closed the quality gap that historically made SSMs underperform transformers. ^[extracted]
## Production Example: Gabber/Orpheus

[[entities/gabber|Gabber]] (Neil Dwyer, CTO) self-hosts [[entities/orpheus-tts|Orpheus TTS]] on [[entities/nvidia|NVIDIA]] L40s GPUs for consumer voice AI at ~$1/hr per stream (vs. $5+/hr for proprietary platforms). ^[extracted] They use [[concepts/lora-fine-tuning|LoRA fine-tuning]] (rank 16, alpha 32) for voice cloning and discovered that head-of-line silence (~600ms baked into some Orpheus fine-tunes like "Tara") can be eliminated by fine-tuning, effectively reducing startup latency to ~100ms P50. ^[extracted] Use cases include AI companions, therapists, trainers, and toys — consumer apps that need near-free voice infrastructure. ^[extracted]
