---
title: Controlled and Classified AI Systems
category: concepts
tags: [classified-data, data-governance, national-security, ai-security, hpc, government-ai]
summary: "AI systems on classified data face unique challenges: data never expires from classification, agents must run on isolated networks, and trust requirements exceed commercial SaaS."
sources:
  - "AIEF2025 - Applied AI and Agentic Science at a National Laboratory — Mark Machotton, Los Alamos National Laboratory - https://www.youtube.com/watch?v=cFxWPP1ik6A"
provenance: {extracted: 0.90, inferred: 0.10, ambiguous: 0.0}
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/fedramp]]"
    type: builds_on
  - target: "[[concepts/ai-governance]]"
    type: subdomain_of
  - target: "[[concepts/agent-environment]]"
    type: constrains
---

AI systems operating on classified or controlled data face fundamentally different trust and governance requirements than commercial AI applications. The data classification landscape for U.S. national security labs includes four levels:

1. **Open/public unrestricted data** — open science, published research. Standard commercial AI tools may be acceptable.
2. **Controlled unclassified data** — sensitive but unclassified. Requires enhanced security controls.
3. **Classified data** — born classified and stays classified forever. The physics of how nuclear weapons work never expires from classification. AI systems must run on classified networks (air-gapped or equivalent).
4. **DOE-restricted data** — Department of Energy specific restrictions.

The key challenge is that commercial SaaS companies cannot easily serve classified workloads. SOC 2 reports and FedRAMP authorization are necessary but insufficient — the U.S. government has thousands of security controls across multiple frameworks. For the DoD, FedRAMP's three impact levels are layered with two additional DoD impact levels plus CNSSI 1253.

This creates a unique market position for national laboratories like [[entities/los-alamos-national-laboratory|Los Alamos National Laboratory]], which can serve as a trusted environment for frontier AI labs (e.g., [[entities/openai|OpenAI]]) to test models on classified data that the labs themselves cannot access. LANL describes itself as "a safe place to do dangerous things."

Practical implications for agentic AI:

- Agents must run on classified HPC infrastructure (e.g., [[entities/venato-supercomputer|Venato]] at LANL).
- Model weights and inference must stay within classified networks.
- Agent outputs (simulations, designs) inherit the classification level of the input data.
- Commercial AI providers must undergo extensive security vetting to serve government workloads.
