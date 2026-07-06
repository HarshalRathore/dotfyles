---
title: 'Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing — Neil Dwyer, Gabber'
category: references
tags:
- voice-ai
- orpheus
- lora
- voice-cloning
- latency
- open-source
- aief2025
- voice-inference-metrics
- snack-tokens
- consumer-ai
- head-of-line-silence
summary: Neil Dwyer (CTO, Gabber) at AIEF2025 on hosting Orpheus TTS inference at $1/hr for consumer voice AI, covering LoRA fine-tuning for voice cloning, head-of-line silence, snack token throughput, and...
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
sources:
- 'AIEF2025 - Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing - Neil Dwyer, Gabber - https://www.youtube.com/watch?v=rD23-VZZHOo'
relationships:
- target: '[[entities/neil-dwyer]]'
  type: related_to
- target: '[[entities/gabber]]'
  type: related_to
- target: '[[entities/orpheus-tts]]'
  type: related_to
- target: '[[entities/snack]]'
  type: related_to
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
- target: '[[concepts/voice-cloning]]'
  type: related_to
- target: '[[concepts/fine-tuning-practices-2025]]'
  type: related_to
---

# Serving Voice AI at $1/hr: Open-source, LoRAs, Latency, Load Balancing — Neil Dwyer, Gabber

**Speaker:** Neil Dwyer (CTO, Gabber)
**Event:** AI Engineer World's Fair 2025
**Source:** https://www.youtube.com/watch?v=rD23-VZZHOo

## TL;DR

Neil Dwyer, CTO of Gabber, shares Gabber's experience self-hosting the Orpheus TTS model for real-time consumer voice AI. Driven by the need to bring voice costs down from $5+/hr (proprietary platforms) to ~$1/hr, Gabber moved to open-source Orpheus on NVIDIA L40s GPUs. Key technical decisions include LoRA fine-tuning for high-fidelity one-shot voice cloning, a novel approach to eliminating "head of line silence" (a 600ms latency artifact in Orpheus), and targeting 90-100 tokens/sec throughput for real-time streaming. The talk emphasizes that consumer AI use cases (AI companions, therapists, trainers) need near-free voice infrastructure, which is only achievable through self-hosting open-source models.

## Background

Dwyer's career spans real-time media infrastructure: Bebo (acquired by Amazon), game streaming (OBS-like), ML pipelines for Fortnite spectator effects, Uber, a multiplayer gaming startup with his brother Jack, LiveKit (where he built the LiveKit Agents platform from the first line of code), and now Gabber. Gabber focuses on real-time AI personas for consumer apps — voice, memory, video inputs, tool calling — with a deliberate differentiation from enterprise use cases (call centers, AI SDRs).

## The Economics Problem

Consumer AI use cases need voice infrastructure close to free. Proprietary voice platforms charge $5+/hr end-to-end, which works for AI companion apps (where users buy credits) but not for the 90% of consumer apps that can't charge that way. Dwyer states: "the only way to execute on our vision of putting these experiences everywhere, we had to start bringing more things in house and running on our own GPUs."

## Orpheus Architecture

Orpheus started as a LLaMA 3 billion-parameter model, pre-trained on ~100,000 hours of voice + text data to maintain language understanding. It outputs **snack tokens** (from the Snack audio codec project), decoded to 24kHz audio. Critical metric: ~85 snack tokens per second of audio, requiring 90-100 tokens/sec throughput to keep up with real-time.

## Voice Cloning via LoRA

One-shot zero-shot cloning doesn't work well for Orpheus (only 100k hours of pre-training vs. million-hour models that exhibit emergent zero-shot behavior). Gabber uses **LoRA fine-tuning** for voice clones:
- Uses 16 rank, alpha 32, all projections
- Requires ~30 minutes of source audio (10 minutes works but is overfitted)
- Produces emotive, high-fidelity clones that pick up on language cues (tone, emotion)
- Example: cloned his brother Jack's voice in one session

## Head of Line Silence

A specific Orpheus latency problem: some fine-tunes of Orpheus (notably the "Tara" default voice) include ~600ms of silence at the beginning of generated audio. This was likely added by voice actors during data collection for fine-tuning. On NVIDIA L40s (~100 tokens/sec), 600ms of silence = ~50 tokens of wasted compute, adding ~0.5s of latency even when silence is filtered out (because the model is only barely faster than real-time).

**Surprising finding:** They could fine-tune the silence away. A customer's LoRA clone had ~100ms P50 latency at the start — effectively half a second of latency "for free" by training out the silence. This matters because real-time applications have a latency budget, and the "snooze period" after user speech is when agent work happens.

## Infrastructure

- Running on **NVIDIA L40s** GPUs (~100 tokens/sec per GPU)
- Self-hosting for cost control and consumer pricing
- Company went viral after Jack's tweet about the Orpheus-powered demo

## Use Cases Mentioned

- AI companions / AI girlfriends (first use case because users accept credit-based spending)
- AI MPCs
- AI therapists
- AI personal trainers
- AI toys for kids

## Key Takeaways

1. **Consumer voice AI requires self-hosting.** $5+/hr proprietary voice costs make consumer-scale apps impossible; open-source Orpheus on owned GPUs brings cost to ~$1/hr.
2. **LoRA fine-tuning is the practical path to voice cloning for Orpheus.** One-shot zero-shot is insufficient; 30 minutes of audio + LoRA (rank 16, alpha 32) produces emotive, high-fidelity clones.
3. **Head of line silence is a real latency killer.** 600ms of baked-in silence at audio start is a significant portion of the real-time latency budget, and fine-tuning it away is an effective fix.
4. **Real-time voice throughput is tight.** 85 tokens/sec is the minimum; 90-100 tokens/sec is the target for gap-free streaming on L40s.
5. **Consumer use cases are the real volume play.** Enterprise voice AI (call centers, support) is well-served by existing platforms; the unserved market is consumer apps that need near-free voice.

## Limitations

- The transcript cuts off mid-sentence during the latency discussion (the "snooze period" explanation is incomplete).
- No specific GPU cost numbers or cost-per-hour calculations are provided beyond the "$1/hr" framing.
- Only one voice cloning example shown (Jack's voice), trained on ~10 minutes of "pretty bad data."

## Related

- [[entities/neil-dwyer]] — Speaker, CTO of Gabber
- [[entities/gabber]] — Real-time AI personas startup
- [[entities/orpheus-tts]] — The open-source TTS model they self-host
- [[entities/snack]] — The audio codec whose tokens Orpheus outputs
- [[concepts/voice-ai-latency]] — Why milliseconds matter for voice
- [[concepts/voice-cloning]] — Voice cloning approaches and fidelity
- [[concepts/fine-tuning-practices-2025]] — LoRA as a fine-tuning method
- [[concepts/voice-agents]] — Voice agent architecture and stack
