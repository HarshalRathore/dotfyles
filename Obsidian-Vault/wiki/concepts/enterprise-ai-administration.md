---
title: Enterprise AI Administration
category: concepts
tags:
- enterprise-ai
- administration
- governance
- monitoring
- pii
- phi
- third-party-tools
- zscaler
- surepath
summary: The challenge of administering and tracking usage of third-party AI tools in enterprise environments, including PII/PHI monitoring, traffic interception, and compliance — solved with tools like Sur...
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[concepts/evals-as-moat]]'
  type: related_to
- target: '[[concepts/agent-middleware-trust-boundary]]'
  type: related_to
- target: '[[concepts/observability-for-enterprise-trust]]'
  type: related_to
sources: []
---

**Enterprise AI Administration** refers to the challenge of administering, tracking, and governing the usage of third-party AI tools and APIs within enterprise environments. As organizations adopt generative AI tools, they need visibility into how employees use these tools, what data is being sent, and whether sensitive information (PII, PHI) is being exposed. ^[extracted]

## The Problem

Enterprises face several distinct challenges when employees use third-party AI tools:

1. **No visibility** — Without network interception, organizations cannot see what data employees send to third-party AI APIs
2. **PII/PHI exposure** — Sensitive personal and health information may be sent to external AI services without the organization's knowledge
3. **Compliance risk** — Regulations (GDPR, HIPAA, etc.) may be violated when employees use unapproved AI tools
4. **Shadow IT** — Employees adopt AI tools independently, creating security and compliance gaps

## Network Interception Approaches

Organizations with on-prem networks and VPNs have more control:

- **Traffic interception** — Monitor all outbound API calls
- **PII/PHI detection** — Scan traffic for patterns matching sensitive data
- **Policy enforcement** — Block or flag traffic that violates data handling policies

However, not all organizations have this level of network control. ^[extracted]

## Tools for AI Administration

**[[entities/surepath|SurePath]]** is a tool recommended by Randall Hunt for enterprise AI administration:

- Monitors and tracks third-party AI tool usage
- Detects PII and PHI in API traffic
- Integrates with network security tools like **[[entities/zscaler]]** for policy enforcement
- Provides visibility into what employees are doing with AI tools

## The Three Categories of AI Application

Randall categorizes how enterprises use AI into three tiers:

1. **Self-service productivity tools** — Things you can typically buy (ChatGPT, Copilot, etc.). Some institutions may need fine-tuning or custom application layers on top.
2. **Automating business functions** — End-to-end AI in a particular business process (e.g., intelligent document processing for logistics).
3. **Monetization** — Adding AI as a new feature to an existing product to charge users more.

Each tier has different administration and governance requirements. ^[inferred]

## Related

- [[concepts/evals-as-moat]] — Administration and evals are both part of building a durable AI system
- [[concepts/agent-middleware-trust-boundary]] — Separating auth and governance from application code
- [[concepts/observability-for-enterprise-trust]] — Building trust through observability in enterprise AI
- [[concepts/intelligent-document-processing]] — An example of Tier 2: automating business functions

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
