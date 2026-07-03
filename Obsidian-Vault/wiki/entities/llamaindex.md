---
title: "LlamaIndex"
tags:
  - organization
  - framework
  - ai
  - rag
  - agent
  - python
  - typescript
sources:
  - "AI Engineer World's Fair 2025 - Effective agent design patterns in production — Laurie Voss, LlamaIndex - https://www.youtube.com/watch?v=72XxWkd8Jrk"
summary: "Framework (Python/TypeScript) for building generative AI applications with focus on agents and RAG. Offers LlamaParse for document parsing, LlamaCloud for enterprise RAG-as-a-service, LlamaHub for integrations, and Workflows for agent orchestration."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# LlamaIndex

LlamaIndex is a framework in Python and TypeScript for building generative AI applications, with particular strengths in [[concepts/rag-evaluation|RAG]] and [[concepts/agent-design-patterns|agent]] systems. It provides a complete stack from document parsing to production deployment.

## Platform Components

- **LlamaParse** — Document parsing service that handles PDF, Word, PowerPoint, and other complex formats. Improves agent quality by transforming unstructured data into representations that LLMs can process effectively, versus naive open-source parsers.
- **LlamaCloud** — Enterprise SaaS: ingest documents on one end, get a retrieval endpoint on the other. Available as a hosted service or deployable to a private cloud.
- **LlamaHub** — Registry of open-source integrations: data source adapters (Notion, Slack, databases), vector database connectors, 400+ LLM models across 80+ providers (including local models like Llama 3), and pre-built agent tools.
- **Workflows** — Event-driven Python abstraction for building multi-step agent pipelines. Functions are annotated with event type hints to define step transitions. Includes a built-in visualizer for debugging and observability.

## Design Philosophy

LlamaIndex frames its value as helping developers go faster by skipping boilerplate, getting best practices for free, and reaching production faster. The framework implements the five [[concepts/agent-design-patterns|Anthropic agent design patterns]] (chaining, routing, parallelization, orchestrator workers, evaluator-optimizer) natively through its Workflows system.

## Agent + RAG Focus

LlamaIndex specializes in two capabilities that [[entities/laurie-voss|Laurie Voss]] argues are symbiotic: agents need [[concepts/rag-evaluation|RAG]] for contextual data, and RAG needs agents for introspection, decomposition, and self-correction. The framework supports building multi-agent systems where control passes between agents — configurable in one line of code.

## Related

- [[entities/laurie-voss]] — VP of Developer Relations
- [[references/agent-design-patterns-production-laurie-voss-llamaindex]] — Talk at AI Engineer World's Fair 2025
- [[concepts/agent-design-patterns]] — The five patterns LlamaIndex implements
- [[concepts/rag-evaluation]] — RAG evaluation, a core use case
