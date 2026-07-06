---
title: OpenAI
tags:
- organization
- ai
- llm
- research
sources:
- 'https://www.youtube.com/watch?v=0f8mngpuycy'
- 'https://www.youtube.com/watch?v=-oxiljtjxqu'
- 'https://www.youtube.com/watch?v=3mzs5gnelzm'
- 'https://www.youtube.com/watch?v=jfalqqfxqpa'
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
summary: AI research and deployment company behind GPT, the Real-time API, and multimodal models spanning text, image, video, and audio. Its model market share is declining as competition from Anthropic, Go...
provenance:
  extracted: 0.55
  inferred: 0.38
  ambiguous: 0.07
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-03
updated: 2026-07-05
category: entities
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

## GPT-4.5: The Expensive Lemon

GPT-4.5 was released in February 2025 and described by [[entities/simon-willison|Simon Willison]] as "a bit of a lemon." Key facts: ^[extracted]

- **$75 per million input tokens** — horrifyingly expensive
- **750× more expensive than GPT-4o Nano** — but not 750× better
- **Deprecated six weeks after release** — "not long for this world"
- **Demonstrated scaling limits** — showed that "you can throw a ton of money and training power at these things, but there's a limit to how far we're scaling with just throwing more compute at the problem"

Willison compared GPT-4.5's $75 rate to GPT-3.5 DaVinci's $60 rate from three years ago, illustrating that good model prices have crashed ~500× over three years. ^[extracted]

## O1 Pro

O1 Pro (March 2025) was described as "twice as expensive as GPT-4.5" — approximately $150 per million input tokens. ^[extracted]

- Willison's pelican-on-bicycle SVG benchmark cost **88 cents** for O1 Pro
- "I don't know anyone who is using O1 Pro via the API very often" — limited practical adoption
- Described as "super expensive" with a "crap pelican" SVG output

## GPT-4o Multimodal Image Generation

OpenAI launched GPT-4.0 native multimodal image generation in March 2025, described as "one of the most successful product launches of all time." ^[extracted]

- **100 million** new user accounts signed up in one week
- Peak of **1 million accounts per hour** during viral spikes
- Had been promised for a year before launch
- Featured a "memory" capability that adds unrequested contextual elements to generated images
- Willison's demo: uploaded a photo of his dog Cleo, asked for a pelican costume, and the model added an unrequested "Half Moon Bay" sign in the background

## Pricing Context

Willison documented a dramatic price compression in capable LLM pricing over three years: ^[extracted]

- GPT-3.5 DaVinci (3 years ago): $60 per million tokens
- GPT-4.5 (Feb 2025): $75 per million input tokens — only ~25% more expensive despite being newer
- GPT-4o Nano (cheapest capable): ~$0.10 per million tokens
- **Overall: ~500× price compression** for good models over three years

This trend has NOT applied uniformly — reasoning models (O1 Pro at ~$150/M) remain at extreme premiums.

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
- [[entities/sean-dubois|Sean DuBois]] — Works on WebRTC and the real-time API; co-presenter at AIEF2025

## ChatGPT as Commerce Interface

ChatGPT is emerging as a platform for agentic commerce — users interact with their AI agents within the ChatGPT interface to express purchase intent (e.g., "I want a new TV") and the agent navigates merchant websites or APIs to complete purchases. ^[extracted] This positions ChatGPT as a potential gateway between consumer agents and the agentic commerce infrastructure described by [[entities/new-generation|New Generation]]. ^[inferred]

## Agent Security & Robustness

[[entities/fouad-matin|Fouad Matin]] works on agent robustness and control in post-training at OpenAI, and recently contributed to Codex and Codex CLI. ^[extracted] His AIEF2025 talk covered OpenAI's preparedness framework for code-executing agents: ^[extracted]

- **Sandboxing** — The gold standard is giving the agent its own computer (isolated containers producing PRs). For local execution: macOS Seatbelt (Rust, inspired by Chromium) and Linux Seccomp + Landlock
- **Internet access controls** — Configurable allowlists specifying which domains and HTTP methods are permitted, with explicit risk warnings
- **Human review** — Reviewing diffs via GitHub PR code review or requiring approvals; balancing YOLO mode against impractical per-command approval
- **Data exfiltration prevention** — Limiting network access as the primary defense against both prompt injection and data exfiltration

[[entities/codex|Codex CLI]] was fully open-sourced to showcase both the agent and the security patterns for building similar systems. ^[extracted]

## Developer Experience & Fine-Tuning

- [[entities/ilan-bigio|Ilan Bigio]] — Developer Experience team; focuses on early testing of new API products and directions. Covered SFT, DPO, and RFT at AIEF2025. ^[extracted]
- **Image fine-tuning** — supports image-to-text fine-tuning for bounding box and visual recognition tasks ^[extracted]
- **GPT-3.5 → GPT-4 distillation** — internally demonstrated achieving GPT-4 level accuracy at GPT-3.5 latency by fine-tuning GPT-3.5 on distilled synthetic data from GPT-4 on function-calling tasks ^[extracted]
- **Fine-tuning APIs** — supports SFT, DPO, and RFT via the chat completions API and fine-tuning endpoints ^[extracted]

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


## Middle East Infrastructure

As part of the UAE-US Middle East AI Deal, [[entities/openai|OpenAI]] will have a GPU cluster in the Middle East. This was an unstated but understood component of the deal between [[entities/g42|G42]] and US officials, announced during Trump's visit to Saudi Arabia and UAE. ^[inferred]

- Sam Altman had previously stated that OpenAI wanted to build GPU clusters in the Middle East
- G42's deal allows 500,000 GPUs/year with 20% retention for G42 and 80% allocation to US companies
- This represents a significant decentralization of AI infrastructure beyond the US

### O3 Benchmark Cost (Artificial Analysis)

Artificial Analysis measured O3 at approximately $2,000 to run their Intelligence Index — roughly 30× more expensive than GPT 4.1 and 500× more expensive than GPT 4.1 Nano. This measurement was reported in a TechCrunch article about their eval spending. ^[extracted]
## Related

- [[concepts/voice-agent-architecture|Voice Agent Architecture]] — architectural patterns OpenAI supports
- [[concepts/openai-real-time-api|OpenAI Real-time API]] — their speech-to-speech product
- [[concepts/agentic-architecture|Agentic Architecture]] — broader AI agent design

## Sources
- [[references/on-curiosity-sharif-shameem-ai-eng-2025|On Curiosity — Sharif Shameem, Lexica (AI Engineer World's Fair 2025)]]
- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk
- [[references/aief2025-your-realtime-ai-is-ngmi|Your Realtime AI is NGMI — Sean DuBois (OpenAI), Kwindla Kramer (Daily)]] — Conference talk on WebRTC and voice AI latency
- [[references/aief2025-securing-code-executing-ai-agents-fouad-matin|OpenAI on Securing Code-Executing AI Agents — Fouad Matin (Codex, Agent Robustness)]] — Conference talk on agent security, sandboxing, and preparedness framework
- [[references/aief2025-machines-of-buying-and-selling-grace-adam-behrens-new-generation|Machines of Buying and Selling Grace — Adam Behrens, New Generation]] — Conference talk on agentic commerce evolution
