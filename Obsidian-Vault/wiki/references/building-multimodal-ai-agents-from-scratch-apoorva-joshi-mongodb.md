---
title: "Building Multimodal AI Agents From Scratch — Apoorva Joshi, MongoDB"
tags:
  - reference
  - talk
  - multimodal
  - agents
  - ai-engineer
sources:
  - "https://www.youtube.com/watch?v=640KMYtxCeI"
summary: "AI Engineer World's Fair 2025 workshop covering agent fundamentals, the ReAct pattern, multimodal retrieval via page-level screenshots and VLM-based embedding models, and short-term memory for coherent multi-turn conversations."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Building Multimodal AI Agents From Scratch

> **Talk:** Building Multimodal AI Agents From Scratch
> **Speaker:** [[entities/apoorva-joshi|Apoorva Joshi]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=640KMYtxCeI)

## Summary

A hands-on workshop building a multimodal AI agent from scratch using Python, covering the full stack: agent architecture fundamentals, the ReAct (reasoning + acting) planning pattern, multimodal retrieval using page-level screenshots embedded by VLM-based models, and short-term session-based memory. The agent answers questions about mixed-modality documents (text interleaved with images, charts, tables) and analyzes figures from research papers.

## Key Topics

### Agent Fundamentals

Apoorva defines an AI agent as "a system that uses an LLM to reason through a problem, create a plan to solve the problem, and execute and iterate on the plan with the help of a set of tools." Three paradigms for LLM interaction:

- **Simple prompting** — relies on parametric knowledge only, cannot handle complex queries or refine responses
- **RAG** — augments LLM with external data, enables basic personalization, but still cannot handle multi-step tasks
- **Agents** — LLM determines sequence of steps, uses tools, reasons through results, adapts

When to use agents: complex multi-step tasks, unstructured/hard-to-predict workflows, high latency tolerance, non-deterministic outputs acceptable, tasks benefiting from personalization over time.

### Four Components of an Agent

1. **Perception** — how agents gather information (text, images, voice, video inputs)
2. **Planning and reasoning** — the LLM determines how to solve the problem via prompts like chain-of-thought or ReAct
3. **Tools** — external interfaces (APIs, vector stores, ML models) defined as function schemas; LLM identifies when to call and arguments, but agent code executes the call
4. **Memory** — short-term (single conversation session) and long-term (across sessions)

### ReAct Pattern

The Reasoning + Acting pattern: prompt the LLM to generate verbal reasoning traces alongside actions, observe outcomes, and iterate until the final answer is determined. This is a form of planning with feedback — the agent refines its plan based on tool outcomes and its own reasoning traces.

### Multimodal Retrieval Challenge

Traditional chunking fails for documents with interleaved text, images, and tables. Two conventional approaches:

1. **Extract + chunk + summarize** — use vision transformers to identify elements, chunk text, summarize images/tables, embed everything with a text embedding model. Complex pipeline, suffers from chunk-boundary context loss.
2. **Extract + embed with multimodal embedding model** — chunk text, embed text and images/tables using a multimodal model. Still complex, and CLIP-based multimodal embedding models suffer from a modality gap.

### The Screen-Shot Approach

Simplify the pipeline: take a page-level screenshot of each document page, embed the screenshot using a VLM-based (vision-language model) multimodal embedding model (e.g., Voyage multimodal 3), store embeddings + image reference in a vector database. At query time, vector search returns relevant screenshot references; the agent fetches those screenshots and passes them to a multimodal LLM (e.g., Gemini 2.0 Flash Experimental) along with conversation history.

Advantages: preserves continuity between text and visual elements on the same page, eliminates complex extraction pipelines, avoids the modality gap problem because VLM-based architectures use a shared encoder for both modalities.

### Memory Management

Short-term memory implemented via session IDs. Each query retrieves the conversation history for that session from a database; the LLM receives the history alongside the query and retrieved images. New queries and responses are appended after each turn. At minimum, user queries and LLM responses should be logged; tool calls, outcomes, and reasoning traces can optionally be recorded.

## Pages Created from This Source

- [[concepts/multimodal-agent-architecture|Multimodal Agent Architecture]]
- [[concepts/modality-gap|Modality Gap]]
- [[concepts/screenshot-based-multimodal-retrieval|Screenshot-Based Multimodal Retrieval]]
- [[entities/apoorva-joshi|Apoorva Joshi]]
- [[entities/voyage-ai|Voyage AI]]

## Related

- [[concepts/agentic-architecture|Agentic Architecture]]
- [[concepts/agent-loop|Agent Loop]]
- [[concepts/chunking-for-retrieval|Chunking for Retrieval]]
- [[references/improving-recsys-search-llms-eugene-yan|Improving RecSys & Search with LLMs - Eugene Yan]]

## Sources

- [YouTube: Building Multimodal AI Agents From Scratch](https://www.youtube.com/watch?v=640KMYtxCeI)
