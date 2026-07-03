---
title: "Agentic Architecture"
tags:
  - agent
  - ai
  - architecture
  - orchestration
  - enterprise
sources:
  - "https://www.youtube.com/watch?v=12v5S1n1eOY"
summary: "Platform-level AI architecture using directed graphs of agents with tools, memory, and orchestration for complex enterprise tasks."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
created: 2026-07-03
updated: 2026-07-03
---

# Agentic Architecture

Agentic architecture is a platform-level approach to building AI systems where tasks are decomposed into a directed graph of AI-powered nodes, each with access to tools, memory, and secure data. Unlike simple [[concepts/agent-loop|agent loops]] which iterate on a single task, agentic architecture emphasizes orchestration — the ability to define, compose, and evolve multi-step workflows where each node can be an AI call, a deterministic function, or a human-in-the-loop step.

[[entities/microsoft|Microsoft]]'s [[entities/asha-sharma|Asha Sharma]] articulates a broader vision — the [[concepts/agentic-web|agentic web]] — where these architectures operate across any cloud, company, or device, enabled by [[concepts/agent-factory|agent factory platforms]] and [[concepts/model-ensemble-routing|intelligent model routing]]. ^[extracted]

## Core Components

Based on [[entities/box|Box]]'s production architecture, an agentic platform includes:

- **Instructions and objectives** — each node has a goal, not just a prompt
- **Tools** — secure access to external systems (APIs, databases, content stores)
- **Memory** — context carried across nodes to advance the task
- **Directed graph orchestration** — the workflow is a graph, not a linear chain, allowing branching, parallel execution, and conditional paths
- **Reflection and self-correction** — nodes that evaluate outputs and trigger retries

## Key Distinctions

| Aspect | Simple LLM Call | Agentic Architecture |
|---|---|---|
| Task scope | Single question, simple field extraction | Multi-step, complex reasoning across many fields |
| Error handling | One-shot, no recovery | LLM-as-a-judge feedback with retry |
| Field complexity | 10 fields on a 10-page document | 100 fields on a 100-page document with cross-field dependencies |
| Evolution | Replace model, rewrite prompt | Add/modify nodes in the directed graph |
| Orchestration | None | Both AI-driven planning and human-specified graphs |

## Box's Implementation

Box applied agentic architecture to solve the problem of extracting structured data from complex unstructured documents. Their pipeline includes:

1. **Field preparation and grouping** — intelligently grouping related fields (e.g., parties and their addresses) so the AI handles them together, avoiding mismatches
2. **Multi-query extraction** — separate queries for different field groups across the document
3. **Multi-model voting** — using models from multiple vendors to vote on uncertain answers ^[inferred]
4. **OCR double-check** — re-examining scanned pages visually when text extraction is uncertain
5. **LLM-as-a-judge** — evaluating output quality and triggering retries with feedback

## Enterprise Deep Research

Box extended this architecture to support deep research on enterprise content — an agentic workflow that searches for relevant documents, builds an outline, iterates on content, and produces a synthesized report. This follows the same directed-graph pattern as the simpler extraction pipeline, demonstrating how the architecture scales across use cases. ^[inferred]

## Advantages

- **Easy evolution** — adding a summarization node at the end of a research pipeline took days, not months
- **Separation of concerns** — the agentic framework is independent of the scalable distributed system that processes millions of documents
- **Model-agnostic** — works across model vendors (OpenAI, Anthropic, Gemini, Llama) without retraining
- **Incremental improvement** — each node can be independently tuned without redesigning the whole system

## Relationship to Agent Loops

While the [[concepts/agent-loop|agent loop]] pattern focuses on iterative self-improvement of a single task (code, research, optimization), agentic architecture addresses the orchestration layer — composing multiple agents, tools, and evaluation steps into a coherent workflow. The two patterns are complementary: individual nodes in an agentic architecture may themselves be agent loops.

## Voice Agent Specialization

Voice agents introduce a modality-specific specialization of agentic architecture. Unlike text-based agents, voice agents operate under real-time latency constraints and must preserve paralinguistic information (tone, emotion, pacing) that text pipelines strip away. The talk by [[entities/toki-sherbakov|Toki Sherbakov]] and [[entities/anoop-kotha|Anoop Kotha]] at AI Engineer World's Fair 2025 described two [[concepts/voice-agent-architecture|voice agent architectures]]:

- **Chained architecture** — ASR → LLM → TTS, which aligns with a linear multi-node agentic pipeline but suffers from latency accumulation and semantic loss
- **[[concepts/speech-to-speech-architecture|Speech-to-speech architecture]]** — a single model performing all stages, enabling the fast, expressive interaction patterns that voice users expect

The delegation pattern (using a fast voice model as a frontline agent with smarter model handoffs) mirrors the directed-graph orchestration of general agentic architectures, adapted for the real-time constraints of speech. See [[concepts/openai-real-time-api|OpenAI Real-time API]] for one implementation of this pattern.

## Multimodal Agent Architecture

A specialization of agentic architecture for mixed-modality data (text interleaved with images, charts, tables). Instead of chunking text separately from images, [[concepts/multimodal-agent-architecture|multimodal agents]] use VLM-based embedding models to embed page-level screenshots as single coherent units. The agent combines a multimodal LLM for reasoning, a vector search tool over the screenshot embeddings, and session-based short-term memory for coherent multi-turn conversation. ^[extracted]

This architecture was demonstrated by [[entities/apoorva-joshi|Apoorva Joshi]] at AI Engineer World's Fair 2025, building a Python agent that answers questions about mixed-modality document corpora and analyzes figures from research papers. The key simplification: VLM-based embedding models (e.g., [[entities/voyage-ai|Voyage multimodal 3]]) avoid the [[concepts/modality-gap|modality gap]] that plagues CLIP-based architectures, allowing direct screenshot embedding without separate element extraction. See [[concepts/screenshot-based-multimodal-retrieval|Screenshot-Based Multimodal Retrieval]] for the pipeline details. ^[extracted]


## Agent Factories

At AI Engineer World's Fair 2025, [[entities/microsoft|Microsoft]] demonstrated agentic architecture scaled to an enterprise [[concepts/agent-factory|agent factory]] level. The [[entities/azure-ai-foundry|Azure AI Foundry]] platform enables multi-agent systems where a voice-controlled [[concepts/orchestrator-worker-pattern|orchestrator agent]] dynamically delegates tasks to specialized sub-agents — research agents, email agents, image generation agents — all with full thread-level transparency and integrated evaluation. ^[extracted] This demonstrates how agentic architecture scales from single-document extraction to platform-level agent orchestration serving 70,000+ customers and 50,000+ agents built daily. ^[inferred]
## Foundational Patterns

Agentic architecture systems compose the five [[concepts/agent-design-patterns|agent design patterns]] codified by [[entities/anthropic|Anthropic]] and presented by [[entities/laurie-voss|Laurie Voss]] at AI Engineer World's Fair 2025: chaining, routing, parallelization (sectioning and voting), orchestrator workers, and evaluator-optimizer. Box's implementation uses several of these — multi-model voting (parallelization), LLM-as-a-judge (evaluator-optimizer), and multi-query extraction (orchestrator workers) — demonstrating how the patterns compose in production. ^[inferred]

## Open Questions

- How do you design effective evaluation nodes that catch failures without excessive cost?
- What's the right granularity for field grouping in document extraction?
- How does the architecture handle the latency vs accuracy tradeoff for enterprise users?

## Sources
- [[references/agent-design-patterns-production-laurie-voss-llamaindex]] — Talk at AI Engineer World's Fair 2025
- [[references/box-agentic-platform-ben-kus|Building an Agentic Platform — Ben Kus, CTO Box]] — Conference talk
- [[references/building-effective-voice-agents-openai-2025|Building Effective Voice Agents — Toki Sherbakov + Anoop Kotha, OpenAI]] — Conference talk at AI Engineer World's Fair 2025
- [[references/ai-eng-worlds-fair-2025-agents-vs-workflows-sam-bhagwat-mastra|Agents vs Workflows — Sam Bhagwat, Mastra.ai]] — Agent-workflow composition and power-vs-control trade-off
- [[references/ai-eng-worlds-fair-2025-spark-to-system-open-agentic-web-asha-sharma|Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft]] — Keynote at AI Engineer World's Fair 2025

## Related
- [[references/building-multimodal-ai-agents-from-scratch-apoorva-joshi-mongodb|Building Multimodal AI Agents From Scratch]] — Workshop at AI Engineer World's Fair 2025
- [[concepts/agentic-web|Agentic Web]] — Cross-platform, cross-company agent interoperability vision
- [[concepts/agent-factory|Agent Factory]] — Platform for building and deploying agent behaviors at scale
- [[concepts/model-ensemble-routing|Model Ensemble Routing]] — Intelligent routing across model catalogs
- [[entities/microsoft|Microsoft]] — Core AI Platform and Azure AI Foundry
- [[entities/azure-ai-foundry|Azure AI Foundry]] — Reference agent factory platform