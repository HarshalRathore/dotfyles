---
title: N8N
tags:
- tool
- workflow
- automation
- no-code
- node-js
aliases:
- n8n.io
- N8N Workflow Automation
sources:
- 'https://www.youtube.com/watch?v=9aqovt8lnmi'
summary: Open-source workflow automation tool with AI agent nodes, used for rapid prototyping of multi-agent KAG systems. Its AI agent node enables supervisory agents that orchestrate sub-agents updating a...
provenance:
  extracted: 0.55
  inferred: 0.4
  ambiguous: 0.05
base_confidence: 0.25
lifecycle: draft
tier: peripheral
created: 2026-07-03
updated: 2026-07-03
relationships:
- target: '[[concepts/kag-knowledge-augmented-generation|KAG (Knowledge Augmented Generation)]]'
  type: related_to
- target: '[[concepts/wisdom-graph|Wisdom Graph]]'
  type: related_to
- target: '[[entities/neo4j|Neo4j]]'
  type: related_to
category: entities
---

# N8N

N8N is an open-source, extensible workflow automation tool built on Node.js. It provides a visual no-code interface for building automation workflows. Since adding AI agent nodes, it has become a platform for prototyping multi-agent AI systems. ^[extracted]

## AI Agent Support

N8N's AI agent node supports different model providers (OpenAI, Anthropic, on-prem models) and can function as a **supervisory agent** that orchestrates sub-agents — each sub-agent performing a specific task and updating a shared knowledge graph (e.g., [[entities/neo4j|Neo4j]]). This makes it suitable for prototyping the [[concepts/wisdom-graph|Wisdom Graph]] state machine used in KAG systems. ^[extracted]

## Usage in KAG Prototyping

Chin Keong Lam of [[entities/patho-ai|Patho AI]] uses N8N for rapid prototyping of KAG systems before migrating to lighter frameworks if needed. He maps the Wisdom Graph state machine directly to N8N workflows: ^[extracted]

- Wisdom agent → supervisory N8N AI agent node
- Sub-agents → separate agent nodes for insight, market data, competitor analysis
- Knowledge graph → centralized Neo4j graph updated by all agent nodes

## Sources

- [[references/aief2025-wisdom-driven-kag-chin-keong-lam|AIEF2025 — Wisdom-Driven Knowledge Augmented Generation at Scale — Chin Keong Lam, Patho AI]] — Conference talk
