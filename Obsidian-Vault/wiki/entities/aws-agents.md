---
title: AWS Agents Ecosystem
tags:
- aws
- ai-agents
- enterprise-ai
- generative-ai
sources:
- AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo
summary: 'AWS''s internal ecosystem of AI agents: 1,000+ generative AI applications, an internal agent managing 6,000+ tools via semantic search, and the Alexa Plus platform with hundreds of expert systems.'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/aws|AWS]]'
  type: related_to
- target: '[[entities/alexa|Alexa]]'
  type: related_to
- target: '[[entities/strands-agents|Strands Agents]]'
  type: related_to
category: entities
---
# AWS Agents Ecosystem

AWS operates one of the largest internal AI agent ecosystems known, with applications spanning the entire Amazon business. ^[extracted]

## Scale

- **1,000+** generative AI applications built or in development across Amazon
- **6,000+** tools managed by an internal AWS agent using semantic search over a knowledge base
- **Hundreds** of specialized expert systems in Alexa Plus
- **Tens of thousands** of partner services and devices orchestrated by Alexa

## Application Domains

Internal AI agents transform:
- **Inventory forecasting** — predicting demand and optimizing stock levels
- **Delivery route optimization** — finding the most efficient delivery paths
- **Customer shopping** — personalizing and enhancing the shopping experience
- **Smart home interactions** — powering Alexa's agent capabilities

## Tool Management at Scale

The internal agent managing 6,000+ tools exemplifies the tool discovery challenge: a single context window cannot hold all tool descriptions. The solution uses the **Retrieve** tool to perform semantic search over a knowledge base of tool descriptions, loading only the most relevant tools for each task. ^[extracted]

## Productized as Strands Agents

The internal expertise in building and operating agents at scale was productized as **Strands Agents**, an open-source SDK that external developers can use to build their own agents. ^[extracted]

## Related Pages

- [[entities/aws]] — AWS organization
- [[entities/alexa]] — Alexa Plus, the largest agent integration
- [[entities/strands-agents]] — Open-source SDK productized from internal expertise
- [[entities/antje-barth]] — Speaker who presented this ecosystem
