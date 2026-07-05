---
title: "LangGraph"
tags:
  - framework
  - agents
  - llm
  - graphrag
  - aief2025
aliases:
  - langgraph
sources:
  - "[[sources/watchv=j-9ebjbxcbg]]"
  - "[[sources/watchv=lqq_lcbajcc]]"
summary: "A LangChain sub-project for building stateful, multi-actor applications with LLMs. At AIEF2025, used to build a simple retrieval agent that connects to a Neo4j knowledge graph via retrieval tools."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/graphrag|GraphRAG]]"
    type: used_by
  - target: "[[concepts/agent-loop|Agent Loop]]"
    type: implements
  - target: "[[concepts/build-vs-buy-agents|Build vs Buy Agents]]"
    type: related_to
---

# LangGraph

LangGraph is a LangChain sub-project for building stateful, multi-actor applications with LLMs. At AIEF2025, [[entities/zach-blumenfeld|Zach Blumenfeld]] used it in Module 3 of his GraphRAG workshop to build a simple retrieval agent that connects to a [[entities/neo4j|Neo4j]] knowledge graph via retrieval tools. ^[extracted]

## Role in the Workshop

LangGraph serves as the agent framework in the third module of the workshop: ^[extracted]

- The agent is built with LangGraph's state machine primitives
- It connects to the Neo4j graph through retrieval tools (functions that execute Cypher queries)
- The agent demonstrates how a knowledge graph serves as the agent's data layer, enabling structured queries

## Relationship to Other Concepts

- [[concepts/graphrag|GraphRAG]] — LangGraph agents query the knowledge graph
- [[concepts/agent-loop|Agent Loop]] — LangGraph implements the agent reasoning loop
- [[concepts/model-context-protocol|MCP]] — alternative protocol for connecting agents to data sources (Blumenfeld also demonstrated this in his other AIEF2025 talk)
- [[concepts/langchain|LangChain]] — LangGraph is a sub-project of LangChain

## Sources

- [[references/aief2025-intro-to-graphrag-zach-blumenfeld|AIEF2025 — Intro to GraphRAG Workshop — Zach Blumenfeld]]
