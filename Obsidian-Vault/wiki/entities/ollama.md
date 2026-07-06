---
title: Ollama
category: entities
tags:
- tool
- open-source
- local-inference
- llm
- inference
aliases:
- Ollama
- ollama CLI
relationships:
- target: '[[concepts/ai-red-teaming]]'
  type: uses
- target: '[[entities/microsoft]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=jhjkgramfiu'
- 'https://www.youtube.com/watch?v=q3nreeadkmc'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Ollama
---

# Ollama

**Ollama** is an open-source tool for running large language models locally. ^[extracted] It provides a simple CLI and API for downloading, running, and serving LLMs on local hardware. ^[extracted]

## Role in AI Red Teaming Demos

Ollama was used in the AIEF2025 AI Red Teaming Agent demo as the local inference engine for the target RAG application. ^[extracted] Nagkumar Arkalgud's demo ran a RAG app on PostgreSQL with a llama-based model served via Ollama, demonstrating that the Red Teaming Agent can test any application that accepts a query string and returns a string response — not just Azure-hosted systems. ^[extracted]

## Significance

Using Ollama in the demo illustrated a key point: the [[entities/azure-ai-foundry|Azure AI Foundry]] Red Teaming Agent is not locked to Azure models. ^[inferred] Engineers can use it to test locally-running models during development, then scale to production scans against Azure-hosted models. ^[inferred]

### Strands Agents Integration

[[entities/strands-agents|Strands Agents]] supports Ollama as a local model option, allowing developers to test agents with locally-running models without Bedrock or cloud dependencies. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
