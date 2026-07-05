---
title: "AI Application Data Requirements"
category: concepts
tags:
  - data-strategy
  - ai-agents
  - application-design
  - generative-ai
  - enterprise-ai
sources:
  - "[[sources/watchv=rofhhjmumcc]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.83
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---
# AI Application Data Requirements

Different AI application types have fundamentally different data requirements. The same foundational model can serve very different use cases, but each use case demands a distinct data architecture, governance model, and privacy strategy. ^[extracted]

## Three Archetypes

### 1. Customer-Facing Agents (e.g., Travel Agent)

Requires:
- **Customer profile data** — Personalization requires knowing the user (name, preferences, history). Without this, the agent cannot provide a personalized experience. ^[extracted]
- **Company policy data** — Business rules like travel policies, refund eligibility, airline preferences
- **PII protection** — Personal data must be handled responsibly; disclosure risks brand damage and regulatory liability
- **Multi-source integration** — Data may span CRM, booking systems, policy databases ^[extracted]

### 2. Employee Productivity Chatbots

Requires:
- **Company knowledge base** — Internal documentation, procedures, FAQs
- **Access control** — Employees must only see data they're authorized to access; over-sharing is a security risk
- **Channel integration** — Slack, custom apps, or other interfaces
- **Multi-source data** — Data resides in different sources requiring unified access ^[extracted]

### 3. Brand Marketing

Requires:
- **Brand voice and tone data** — Campaign materials, brand guidelines, past successful content
- **Customer insights** — Market research, engagement data, audience segmentation
- **Different governance** — Marketing data has different compliance and approval requirements ^[extracted]

## Design Implication

When designing an AI application, the first question is not "which model?" but "what data does this application need, and how is that data governed?" The data requirements drive the architecture, not the reverse. ^[extracted]

## Related Pages

- [[concepts/data-as-differentiator|Data as Differentiator]] — The overarching principle
- [[concepts/ai-agent-data-pipeline|AI Agent Data Pipeline]] — How data flows through an agent
- [[concepts/pii-protection-in-ai|PII Protection in AI]] — Privacy requirements for customer-facing agents
- [[concepts/data-silos-problem|Data Silos Problem]] — Why siloed data blocks AI applications
