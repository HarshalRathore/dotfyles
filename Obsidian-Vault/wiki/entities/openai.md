---
title: "OpenAI"
tags:
  - organization
  - ai
  - llm
  - research
sources:
  - "AI Engineer World's Fair 2025 talk — On Curiosity — Sharif Shameem, Lexica - https://www.youtube.com/watch?v=0F8mnGPUycY"
  - "AI Engineer World's Fair 2025 talk — Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI - https://www.youtube.com/watch?v=-OXiljTJxQU"
  - "AI Engineer World's Fair 2025 - State of Startups and AI 2025 - Sarah Guo, Conviction - https://www.youtube.com/watch?v=3MZS5gNElZM"
  - "AIEF2025 - Automating Escrow with USDC and AI - Corey Cooper, Circle - https://www.youtube.com/watch?v=AXMdSqdoGHM"
summary: "AI research and deployment company behind GPT, the Real-time API, and multimodal models spanning text, image, video, and audio. Its model market share is declining as competition from Anthropic, Google, and open-source intensifies."
provenance:
  extracted: 0.55
  inferred: 0.38
  ambiguous: 0.07
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# OpenAI

OpenAI is an AI research and deployment organization. Beyond their text-based GPT models, they have expanded into multimodal AI including image generation (DALL-E, Sora for video), and audio — notably the [[concepts/openai-real-time-api|Real-time API]] for speech-to-speech voice applications.


## Enterprise Integration Use Cases

OpenAI's multimodal models (GPT-4o) are being used in [[concepts/ai-escrow-automation|AI escrow automation]] workflows. [[entities/circle|Circle]]'s open-source escrow agent app uses GPT-4o to: ^[extracted]

- **Parse PDF agreements** — extract structured data (amount, task summaries, deliverables) from unstructured legal documents via vision capabilities. ^[extracted]
- **Verify deliverables** — analyze uploaded images against task requirements and produce a confidence score that triggers conditional smart contract settlement. ^[extracted]

This demonstrates multimodal models expanding beyond chat into financial workflow automation, serving as verification checkpoints in [[concepts/agent-to-agent-payments|payment workflows]].

## Market Position

Per [[entities/sarah-guo|Sarah Guo]] (Conviction), OpenAI is facing increasing competition across the model market: ^[extracted]

- **GPT-4 pricing collapse** — $30 per million tokens at launch to $2 in 18 months. Distilled versions at ~$0.10. ^[extracted]
- **Sam Altman quote**: "Last year's model is a commodity." ^[extracted]
- **OpenRouter market share** — Claude ([[entities/anthropic|Anthropic]]) and Gemini (Google) are cutting into OpenAI's share. The data is biased (many users go direct to OpenAI), but on multi-model platforms the mix is real. ^[extracted]
- **Acquisition of Windsurf** — acquired for $3B, suggesting the labs cannot "steamroll" application-layer companies. ^[extracted]

## Board and Investments

- **Bret Taylor** is chairman of the board at OpenAI. He also founded [[entities/sierra-ai|Sierra]], an AI customer service company. ^[extracted]
- OpenAI was the seed investor in [[entities/harvey-ai|Harvey]], the legal AI platform that grew to $70M+ ARR. ^[extracted]

The fact that both Taylor and Harvey's leadership are not "fretting about thin wrappers" is cited as evidence that application-layer AI companies have durable value. ^[inferred]

## Voice and Audio Products

- **Real-time API** — end-to-end speech-to-speech model for low-latency voice agents
- **GPT-4o audio** — multimodal model capable of understanding tone, pacing, and intonation for audio evaluation
- **Whisper** — speech-to-text transcription model
- **TTS models** — text-to-speech generation
- **OpenAI.fm** — experimentation tool for voice customization and prompt prototyping

## Key People (Voice/Audio)

- [[entities/toki-sherbakov|Toki Sherbakov]] — Leads US Solution Architecture team
- [[entities/anoop-kotha|Anoop Kotha]] — Solution Architect

## Architecture Approach

OpenAI advocates a [[concepts/speech-to-speech-architecture|speech-to-speech architecture]] over the traditional chained approach (ASR + LLM + TTS). Their Real-time API exemplifies this, with native support for tool use and delegation to more capable models (O3, O4 mini) via the Agents SDK for complex sub-tasks. ^[extracted]

## GPT-3 Historical Context

The GPT-3 era (2020–2021) was formative for AI demo culture, characterized by unique constraints: ^[extracted]

- **2,000-token context window** initially, expanded to ~4,000 tokens in 2021
- **$75 per million output tokens**
- **No instruct models** — only the base model, requiring few-shot prefix completion
- **Restrictive terms of service** — shipping chat apps was prohibited; special permission required to share anything about the model

Despite these constraints, early builders like [[entities/sharif-shameem|Sharif Shameem]] discovered that GPT-3 had latent capabilities — like web browsing and React component generation — that even OpenAI researchers were unaware of. ^[extracted]

## Cultural Impact

GPT-3's base-model-only era seeded several now-common practices: chain-of-thought decomposition via multistep prompting (e.g., Shameem's Multivac system), parallel prompt decomposition to overcome context limits, and browser-based real-time code generation (the precursor to vibe coding). The constrained environment forced creative workarounds that became methodological innovations. ^[inferred]

## Related

- [[concepts/voice-agent-architecture|Voice Agent Architecture]] — architectural patterns OpenAI supports
- [[concepts/openai-real-time-api|OpenAI Real-time API]] — their speech-to-speech product
- [[concepts/agentic-architecture|Agentic Architecture]] — broader AI agent design

## Sources
- [[references/on-curiosity-sharif-shameem-ai-eng-2025|On Curiosity — Sharif Shameem, Lexica (AI Engineer World's Fair 2025)]]
- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk
