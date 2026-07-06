---
title: Randall Hunt
category: entities
tags:
- ai-engineer
- founder
- aws
- mongodb
- spacex
- caylent
- enterprise-ai
summary: AI engineer and builder who co-founded Kalen (Caylent). Previously at AWS, SpaceX (led CI/CD team), and TenGen (became MongoDB). Spoke at AIEF2025 on hard lessons from 200+ enterprise GenAI deploym...
provenance:
  extracted: 0.9
  inferred: 0.1
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/caylent]]'
  type: implements
- target: '[[entities/aws]]'
  type: related_to
- target: '[[entities/nvidia]]'
  type: related_to
- target: '[[references/aief2025-poc-to-prod-hard-lessons-200-enterprise-genai-deployments]]'
  type: related_to
sources: []
---

**Randall Hunt** is an AI engineer and builder who co-founded **[[entities/caylent|Caylent]]** (formerly Kalen), a company he describes as built by hiring "passionate autodidacts with a little bit of product ADHD" who build software for hundreds of customers ranging from Fortune 500 companies to startups. He is active on X at [@JRHunt](https://x.com/JRHunt).

His career spans multiple infrastructure-heavy companies: he worked at **[[entities/mongodb|TenGen]]** before its IPO, led the CI/CD team at **[[entities/spacex]]** (where no rockets were blown up during his tenure), and spent a long tenure at **[[entities/aws]]** building technology for customers. He also did physics work at **[[entities/nasa]]**. In July 2017, he made a video about the Transformer paper ("Attention Is All You Need") before the model's transformative impact was widely recognized. ^[extracted]

Caylent won Partner of the Year at AWS for multiple years. The company builds everything from chatbots to copilots to AI agents for enterprise customers. ^[extracted]

Randall spoke at the AI Engineer World's Fair 2025, sharing hard lessons from 200+ enterprise GenAI deployments, emphasizing that evals and the input-output specification are the real moat — not the LLMs themselves. ^[extracted]

## Customers and Projects

Caylent has built AI solutions for several notable clients:

- **Brainbox AI** — Building operating system for HVAC management across tens of thousands of buildings; Randall's team built an agent for decarbonization that was named among the Times 100 best inventions of the year
- **Simmons** — Water management and conservation, implemented with AI
- **Nature Footage** — Multimodal video search and semantic understanding using Nova Pro models, Elasticsearch, and Titan V2 multimodal embeddings with pooling embeddings
- **Sports media company** — Real-time and batch processing of sports footage with audio transcription, vector embeddings, and push notifications via Amazon SNS

## Philosophy

Randall's core thesis (from AIEF2025): the inputs and outputs of an AI system are the fundamental moat — they do not evolve and change. LLMs, tools, and system architecture are incidental and will continue to evolve. Evals are the layer that proves a system is robust rather than just a "vibe check." ^[inferred]

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
