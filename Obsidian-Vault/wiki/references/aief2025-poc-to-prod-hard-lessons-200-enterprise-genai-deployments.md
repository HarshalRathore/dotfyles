---
title: AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments
category: references
tags: [aief2025, enterprise-ai, poc-to-prod, evals, input-output, moat, multimodal, video-search, pgvector, semantic-search]
summary: "Randall Hunt of Caylent shares hard lessons from 200+ enterprise GenAI deployments at AIEF2025, covering evals as the real moat, input-output specification, multimodal video search, and practical architecture patterns."
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.00
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[entities/randall-hunt]]"
    type: related_to
  - target: "[[entities/caylent]]"
    type: related_to
  - target: "[[concepts/evals-testing-pyramid]]"
    type: related_to
  - target: "[[concepts/sequence-of-moats]]"
    type: related_to
  - target: "[[concepts/multimodal-embedding]]"
    type: related_to
  - target: "[[concepts/pgvector]]"
    type: related_to
---

## TL;DR

Randall Hunt, co-founder of **[[entities/caylent|Caylent]],** shares lessons learned from building AI systems for 200+ enterprise customers. His core thesis: **evals and the input-output specification are the real moat** — not the LLMs or tools themselves. He demonstrates practical architectures for multimodal video search, real-time sports analytics, and intelligent document processing, using technologies like Nova Pro, Titan V2 embeddings, pgvector, OpenSearch, and Elasticsearch.

## Problem / Motivation

Enterprise organizations are rushing to adopt generative AI after reading about it in mainstream media (e.g., the Wall Street Journal), but most lack the infrastructure and processes to deploy AI responsibly and effectively. Common problems include:

- **No visibility into third-party AI tool usage** — Organizations struggle to track how employees use third-party APIs and tools
- **PII/PHI exposure** — Without proper network interception and monitoring, sensitive data leaks through AI tool usage
- **Building chatbots as AI products** — Simply wrapping a chatbot around a product and charging more for it is a losing strategy ("sayonara, good luck, you're the Polaroid")
- **POC-to-prod gap** — Many AI projects work in proof-of-concept but fail to reach production at scale

## Method / Architecture

Randall presents a layered architecture for building enterprise AI systems:

1. **Inputs and Outputs (foundation layer)** — The most fundamental specification. What goes in, what comes out. This does not change even as models evolve.
2. **Evals layer** — Proves the system is robust, not just a "vibe check" on a unique prompt. "Evals, evals, evals."
3. **System Architecture** — The orchestration, data pipelines, and integration patterns.
4. **LLMs and Tools (incidental layer)** — The models and tools used, which will continue to evolve and change.

He also demonstrates three concrete customer architectures:

### Multimodal Video Search (Nature Footage)

- Frame samples from videos are embedded using **[[entities/amazon-nova|Nova Pro]]** models
- Embeddings are **pooled** across frames to create a single multimodal embedding per video
- Stored in **[[entities/elasticsearch]]** via **[[entities/amazon-titan|Titan V2 multimodal embeddings]]**
- Enables text-to-video search using pooled embeddings

### Real-Time Sports Analytics (Unnamed Sports Media Company)

- Sports footage split into audio and video tracks
- Audio transcribed; highlights detected via **FFmpeg amplitude spectrograph** (audience cheering = highlight)
- Embeddings generated from both text and video
- **[[entities/meta|SAM2]]** model used for court annotations (e.g., three-pointer line) — tiny annotations dramatically improve video understanding model accuracy
- Results stored in database; push notifications sent via **[[entities/amazon-sns]]**
- Key insight: "A tiny bit of annotation can do wonders" — static camera angles with annotated court lines make models perform far better than on raw video

### Intelligent Document Processing (Large Logistics Company)

- Receipts and bills of lading processed using generative AI
- **Custom classifier** applied before generative AI models for faster, better results than human annotators

## Key Equations / Principles

> "The inputs to your system and what your system is going to do with them — that is the most fundamental part, your inputs and your outputs." — Randall Hunt

> "Evals, evals, evals, evals." — Randall Hunt (channeling Steve Ballmer)

The core principle: **your input-output specification is your moat**. LLMs, tools, and architecture are incidental. They will evolve. Your specification of what problem you're solving and what inputs/outputs matter will not. ^[inferred]

## Results / Demonstrations

- **Brainbox AI decarbonization agent** — Named among the Times 100 best inventions of the year for drastically reducing greenhouse emissions through building HVAC management
- **Multimodal video search** — Successfully indexed and made searchable stock footage of wildlife using pooled embeddings
- **Sports highlight detection** — Real-time and batch processing with push notifications for detected events (e.g., three-pointers)
- **Annotation-augmented video understanding** — SAM2-generated court annotations dramatically improved model accuracy for basketball play detection

## Limitations

- The transcript covers only the beginning of Randall's talk — the full architecture discussion (including the AWS services mentioned at the bottom) is incomplete
- No quantitative metrics provided (accuracy percentages, latency, cost per deployment)
- The "hard lessons" framing suggests deeper failures and failures-to-scale that are not yet detailed in the available transcript

## Related

- [[concepts/evals-testing-pyramid]] — Evals as a layered testing strategy
- [[concepts/sequence-of-moats]] — Competitive moats in AI systems
- [[concepts/multimodal-embedding]] — Multimodal embedding techniques
- [[concepts/pgvector]] — PostgreSQL vector search extension
- [[concepts/intelligent-document-processing]] — AI-powered document processing
- [[entities/randall-hunt]] — Speaker and co-founder of Caylent
- [[entities/caylent]] — Company with 200+ enterprise AI deployments

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
