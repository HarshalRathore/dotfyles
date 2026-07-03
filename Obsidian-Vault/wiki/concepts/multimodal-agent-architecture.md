---
title: "Multimodal Agent Architecture"
tags:
  - agent
  - multimodal
  - architecture
  - retrieval
sources:
  - "AI Engineer World's Fair 2025 - Building Multimodal AI Agents From Scratch — Apoorva Joshi, MongoDB - https://www.youtube.com/watch?v=640KMYtxCeI"
summary: "Architecture for agents that process and retrieve across multiple modalities (text, images, tables) using a multimodal LLM for reasoning, VLM-based embedding for retrieval over page-level screenshots, and short-term memory for coherent conversation."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Multimodal Agent Architecture

An architectural pattern for [[concepts/agentic-architecture|AI agents]] that can process, retrieve, and reason across multiple data modalities — primarily text and images, but extensible to audio, video, and structured data. The core insight is that a multimodal LLM handles perception and reasoning, while VLM-based (vision-language model) embedding models simplify retrieval over mixed-modality documents by operating on page-level screenshots rather than extracted elements. ^[extracted]

## Why Multimodal Agents

Most real-world data is multimodal: research papers with figures and equations, financial reports with charts, healthcare documents with scan images and clinical notes. Text-only agents cannot reason about the visual content these documents contain. A multimodal agent can:

- Search over a corpus of documents containing interleaved text, images, and tables
- Accept user queries that reference visual content ("explain this chart," "what does this equation mean?")
- Retrieve the relevant document pages and reason across both their text and visual elements

## Architecture Components

### 1. Multimodal LLM (Reasoning Engine)
The central reasoning component that plans actions, generates responses, and makes sense of retrieved multimodal content. Must accept both text and images as input. Examples: Gemini 2.0 Flash Experimental, GPT-4V, Claude 3.5 Vision.

### 2. VLM-Based Embedding Model (Retrieval)
A multimodal embedding model built on a vision-language model architecture (shared encoder for text and images) rather than the older CLIP architecture (separate encoders). This avoids the [[concepts/modality-gap|modality gap]] problem where text and image embeddings of related content don't align. Example: Voyage multimodal 3.

### 3. Screenshot-Based Document Store
Documents are pre-processed by capturing each page as a screenshot. Screenshots are embedded with the VLM-based model and stored in a vector database alongside references to the screenshot file. At query time, vector search returns relevant screenshot references; the agent fetches the actual screenshots and passes them to the multimodal LLM. ^[extracted]

See [[concepts/screenshot-based-multimodal-retrieval|Screenshot-Based Multimodal Retrieval]] for details.

### 4. Tool Interface (Vector Search)
The multimodal LLM is given a single tool: vector search over the document store. When the LLM determines it needs information to answer a query, it invokes this tool, which returns references to relevant screenshots. The agent's code executes the vector search, fetches the images, and passes them back to the LLM alongside the conversation history. ^[inferred]

### 5. Short-Term Memory
Session-based chat history stored in a database. Each user query retrieves prior turns for the session, which are passed to the LLM as additional context. User queries and LLM responses are persisted after each turn. This enables coherent multi-turn conversations where the LLM can reference earlier exchanges.

## Workflow

1. User submits a query (text, or text + an attached image)
2. Agent forwards query + conversation history to the multimodal LLM
3. LLM decides: call vector search tool, or generate answer directly
4. If vector search is called → agent executes search → retrieves screenshot references → fetches screenshots → passes screenshots + query + history back to LLM
5. LLM generates the final answer (possibly after multiple tool-call iterations)
6. Agent stores the query and response in the session's conversation history

## Key Distinction from Text-Only Agents

| Aspect | Text-Only Agent | Multimodal Agent |
|---|---|---|
| Retrieval | Chunk text, embed with text embedding model | Screenshot pages, embed with VLM-based model |
| LLM | Text-only LLM | Multimodal LLM (text + images) |
| Perception | Text inputs only | Text, images, potentially audio/video |
| Data prep | Standard chunking pipeline | Screenshot capture + multimodal embedding |

## Open Questions

- How does chunk strategy interact with screenshot-based retrieval for very long pages? Some overlap or adjacent-page retrieval may help.
- What are the latency implications of passing full-resolution screenshots to the LLM on every tool-call turn?
- How well does this extend to video or audio in the document corpus itself (beyond user input modalities)?

## Related

- [[concepts/agent-loop|Agent Loop]] — The ReAct pattern drives the iteration loop
- [[concepts/agentic-architecture|Agentic Architecture]] — General framework for multi-agent orchestration
- [[concepts/screenshot-based-multimodal-retrieval|Screenshot-Based Multimodal Retrieval]] — The retrieval technique this architecture relies on
- [[concepts/modality-gap|Modality Gap]] — Problem this architecture avoids by using VLM-based embeddings
- [[concepts/chunking-for-retrieval|Chunking for Retrieval]] — Traditional approach, contrasted in multimodal context

## Sources

- AI Engineer World's Fair 2025 — Apoorva Joshi, MongoDB: <https://www.youtube.com/watch?v=640KMYtxCeI>
