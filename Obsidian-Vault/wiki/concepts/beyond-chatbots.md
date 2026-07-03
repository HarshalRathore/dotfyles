---
title: "Beyond Chatbots"
tags:
  - agent
  - ai
  - architecture
  - integration
  - enterprise
sources:
  - "AI Engineer World's Fair 2025 - Effective agent design patterns in production — Laurie Voss, LlamaIndex - https://www.youtube.com/watch?v=72XxWkd8Jrk"
  - "AIEF2025 - The Bitter Layout or: How I Learned to Love the Model Picker — Maximillian Piras, Yutori - https://www.youtube.com/watch?v=BZtD0yYAgCQ"
  - "AIEF2025 - Form factors for your new AI coworkers — Craig Wattrus, Flatfile - https://www.youtube.com/watch?v=CiMVKnX-CNI"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Beyond Chatbots

The beyond chatbots philosophy, articulated by [[entities/laurie-voss|Laurie Voss]] at AI Engineer World's Fair 2025, argues that the predominant LLM application pattern — the chat interface where users ask questions and get answers — represents only a fraction of the addressable opportunity. The larger market is integrating LLMs into existing software to handle messy, unstructured inputs and produce structured data that feeds into deterministic business logic.

## The Core Idea

Instead of building chatbot interfaces, insert LLMs into existing software at the point where unstructured data enters the system. The LLM's job is to:
1. Accept messy, unstructured inputs (documents, emails, support tickets, invoices)
2. Extract or transform them into structured data (fields, decisions, categories, summaries)
3. Pass that structured data to traditional software for further processing

This turns LLMs into a preprocessing layer for existing systems rather than a new interface paradigm.

## Why It Matters

Voss argues the "beyond chatbots" approach has a much larger addressable surface than conversational AI:
- Chatbots are a 2023 way of using LLMs
- Every enterprise has pipelines that ingest unstructured data
- LLMs can handle the variability that traditional parsers cannot
- The output (structured data) fits naturally into existing systems without rearchitecting

## Counterpoint: The Bitter Design Lesson

The "beyond chatbots" vision faces a structural headwind articulated in the [[concepts/bitter-design-lesson|Bitter Design Lesson]]: as long as models are not commoditized and each new generation improves inference performance, the chat interface persists not because it is good design but because it can absorb the next model with minimal friction. [[entities/maximillian-piras|Maximillian Piras]] argues that chat's ability to conform to the next model outweighs every UX concern until models commoditize. ^[extracted]

This does not invalidate the beyond-chatbots approach — enterprise pipelines integrating LLMs for structured data extraction and the chat-like consumer interface serve different user needs and contexts. But it explains why the [[concepts/bitter-layout|bitter layout]] (chat + model picker) dominates consumer AI products despite the architectural case against it. ^[inferred]

## AI Coworker Form Factors

The [[concepts/ai-coworker-form-factors|AI coworker form factors]] framework, articulated by [[entities/craig-wattrus|Craig Wattrus]] of [[entities/flatfile|Flatfile]], extends the "beyond chatbots" thesis by giving it structure. Rather than a binary distinction (chatbots vs non-chatbots), Wattrus identifies four surfaces for AI interaction: ^[extracted]

1. **Invisible** — AI operates in the background without user awareness
2. **Ambient** — AI has a subtle, non-intrusive presence in the workspace
3. **In-Line** — AI works directly within the user's active workflow
4. **Conversational** — AI interacts through natural language chat

This reframes the "beyond chatbots" argument: the alternative to chat is not a single monolithic "integration into existing software" but a spectrum of form factors where chat is just one option. The non-chat form factors (invisible, ambient, in-line) correspond to Voss's enterprise integration vision, while the conversational form factor captures the consumer AI use case that the [[concepts/bitter-design-lesson|Bitter Design Lesson]] explains. ^[inferred]

Wattrus's contribution is practical: he demonstrates all four form factors operating in a single product (Flatfile), showing that the choice between chat and non-chat is not architectural but a product design decision about the right form factor for each task and user. See [[concepts/ai-coworker-form-factors]] for details. ^[inferred]

## Relationship to Other Concepts

- [[concepts/ai-coworker-form-factors]] — Extends the beyond-chatbots thesis with specific form factors
- [[concepts/llm-as-summarizer]] — The underlying capability that makes this pattern work
- [[concepts/unstructured-data-extraction]] — A specific application of the beyond-chatbots pattern
- [[concepts/agent-design-patterns]] — The agent patterns that enable complex beyond-chatbots workflows
- [[concepts/agentic-architecture]] — Platform-level architecture for beyond-chatbots applications

## Sources

- [[references/agent-design-patterns-production-laurie-voss-llamaindex]] — Talk at AI Engineer World's Fair 2025
- [[references/aief2025-bitter-layout-maximillian-piras-yutori|The Bitter Layout or: How I Learned to Love the Model Picker — Maximillian Piras, Yutori]] — Counterpoint providing the Bitter Design Lesson framing
- [[references/aief2025-form-factors-ai-coworkers-craig-wattrus-flatfile|Form Factors for Your New AI Coworkers — Craig Wattrus, Flatfile]] — Extended the thesis with form factors
