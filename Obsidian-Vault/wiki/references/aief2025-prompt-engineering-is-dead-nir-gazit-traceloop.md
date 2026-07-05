---
title: "Prompt Engineering is Dead — Nir Gazit, Traceloop"
category: references
tags: [aief2025, prompt-engineering, rag, evaluation, auto-improvement, llm-as-judge, crewai]
summary: "Nir Gazit argues prompt engineering never existed as real engineering. He demonstrates an auto-improving agent loop that optimized a RAG chatbot over five weeks without manual prompt iteration."
sources:
  - "AIEF2025 - Prompt Engineering is Dead — Nir Gazit, Traceloop - https://www.youtube.com/watch?v=jvKf6zXrNO4"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/nir-gazit.md]]"
    type: related_to
  - target: "[[entities/traceloop.md]]"
    type: related_to
  - target: "[[concepts/prompt-engineering-is-dead.md]]"
    type: related_to
  - target: "[[concepts/rag-pipeline-architecture.md]]"
    type: related_to
  - target: "[[concepts/llm-as-judge-evaluation.md]]"
    type: related_to
  - target: "[[concepts/auto-improving-agent-loop.md]]"
    type: related_to
---

# Prompt Engineering is Dead — Nir Gazit, Traceloop

Nir Gazit, founder of [[entities/traceloop.md|Traceloop]], delivered this talk at the AI Engineer World's Fair 2025 arguing that prompt engineering never actually existed as a discipline of engineering. He illustrated this through a personal story: he improved his company's RAG-based chatbot on their website over five weeks without doing any prompt engineering at all.

The chatbot was a simple retrieval-augmented generation pipeline — a [[concepts/rag-pipeline-architecture.md|RAG pipeline]] using Chroma vector database and OpenAI — that answered questions about Traceloop documentation. After initial deployment, the bot made too many mistakes, answered off-topic questions (e.g., about the weather), and needed improvement. The conventional approach would be iterative prompt engineering. Instead, Gazit built an auto-improving agent system.

His approach had three components: a RAG pipeline, an evaluator, and an auto-improving agent. The evaluator used an LLM-as-judge approach with ground truth — he created 20 question examples, each with three expected facts, and the judge verified whether each fact appeared in the generated answer, producing pass/fail per fact and a summary score. The auto-improving agent (built with [[entities/crewai.md|CrewAI]) would crawl the web for prompt engineering guides, combine them with the evaluator's failure reasons, generate a new prompt, and iterate the evaluation loop — analogous to classic ML training but with "vibes."

His core argument: the manual iteration on prompts is not engineering. The real value is in building the evaluation and improvement infrastructure around the LLM, not in tweaking the prompt text itself.
