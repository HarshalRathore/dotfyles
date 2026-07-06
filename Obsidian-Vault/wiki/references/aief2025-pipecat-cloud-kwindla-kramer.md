---
title: 'AIEF2025 - Pipecat Cloud: Enterprise Voice Agents Built On Open Source'
category: references
tags:
- aief2025
- voice-ai
- pipecat
- cloud
- enterprise
- open-source
- real-time
sources:
- 'https://www.youtube.com/watch?v=ia4lzjh9sts'
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/pipe-cat]]'
  type: related_to
- target: '[[entities/daily]]'
  type: related_to
- target: '[[concepts/voice-ai-latency]]'
  type: related_to
summary: 'AIEF2025 - Pipecat Cloud: Enterprise Voice Agents Built On Open Source'
---

# AIEF2025 - Pipecat Cloud: Enterprise Voice Agents Built On Open Source

Kwindla Hultman Kramer (co-founder of Daily, stepping in for colleague Mark) presents PipeCat and PipeCat Cloud at AI Engineer World's Fair 2025. The talk covers building reliable, performant voice AI agents using 100% open-source, vendor-neutral software, plus a new commercial layer for hosting voice AI agents on top of Daily's global real-time infrastructure.

## Key Topics

**Voice Agent Engineering** — Three fundamental concerns: writing the code, deploying it, and connecting users over the network/telephony. User expectations are high: natural-sounding responses, fast voice-to-voice latency (target 800ms, hard ceiling ~500ms), turn-taking awareness, and access to knowledge bases.

**PipeCat Framework** — 100% open source, vendor-neutral voice AI framework with 60+ model/service integrations. Native telephony support (Twilio, Plevo for India, etc.), pipeline-based architecture written in Python with C performance-critical paths. Supports both chained STT→LLM→TTS and native speech-to-speech models.

**PipeCat Cloud** — A thin layer on top of Daily's global media infrastructure, designed specifically for hosting voice AI agents. Solves cold starts, auto-scaling for real-time workloads, global deployment for latency and data residency, and cost optimization. Built as a thin wrapper around Docker/Kubernetes optimized for voice AI.

**Turn Detection & Ambient Noise** — The open-source Smart Turn model (hosted by FAL on GPU-optimized inference) is built into PipeCat Cloud and runs for free. Crisp noise model (commercial) is available for free on PipeCat Cloud; handles background noise that triggers false interruptions in transcription/LLM pipelines.

**Speech-to-Speech Future** — Moshi (Kyotai) architecture with constant bi-directional streaming and back-channeling. Sesame uses Moshi's neural encoder. Ultravox trained on Llama 3 70B backbone. Speech-to-speech models expected to become default for ~95% of voice AI within two years. Current limitation: audio expands context tokens massively, degrading model performance; insufficient audio training data causes latent space issues (model responding in wrong language).

**Global Deployment** — PipeCat endpoints terminate WebRTC/telephony at the edge, then route over private AWS/OCI backbones to hosting regions. Regional availability expanding quarterly. For long-haul latency, deploy close to inference servers rather than users, optimizing for one long trip + many fast short trips.

## Significance

This talk bridges the gap between open-source voice AI development (PipeCat) and production deployment (PipeCat Cloud), addressing the most common community questions about Kubernetes deployment and scaling. It also surveys the cutting edge of voice AI model architecture, including streaming speech-to-speech models and turn detection advances.
