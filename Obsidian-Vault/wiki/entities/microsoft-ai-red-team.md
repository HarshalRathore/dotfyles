---
title: "Microsoft AI Red Team"
category: entities
tags:
  - organization
  - microsoft
  - ai-red-teaming
  - security
  - ai-risk
aliases: [Microsoft Red Team, AI Red Team]
relationships:
  - target: "[[entities/microsoft]]"
    type: implements
  - target: "[[entities/pyrit]]"
    type: implements
  - target: "[[concepts/ai-red-teaming]]"
    type: related_to
sources:
  - "[[sources/watchv=jhjkgramfiu]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Microsoft AI Red Team

The [[entities/microsoft|Microsoft]] AI Red Team is a specialized group of security and AI risk experts who identify vulnerabilities in AI systems. ^[extracted] They were pioneers in identifying LLM risks as early as the GPT-3 and GPT-4 era — two to three years before the talk — demonstrating that these models could be prompted to produce harmful outputs. ^[extracted]

## Philosophy

Their core principle, as articulated by [[entities/keiji-kanazawa|Keiji Kanazawa]], is "trust is a team sport." ^[extracted] AI engineers building production systems depend on the Red Team's expertise in security and AI risk to identify vulnerabilities they might miss. ^[extracted] The Red Team provides the adversarial testing capability that individual engineering teams cannot easily replicate internally. ^[inferred]

## Products

The Red Team developed [[entities/pyrit|PyRIT]], an open-source Python package for automated adversarial testing. ^[extracted] This is the core engine behind the AI Red Teaming Agent available in [[entities/azure-ai-foundry|Azure AI Foundry]], where it is wrapped in a hosted SDK and dashboard for broader accessibility. ^[extracted]

## Sources

- AI Red Teaming Agent: Azure AI Foundry — Nagkumar Arkalgud & Keiji Kanazawa, Microsoft. https://www.youtube.com/watch?v=JhJKgRAmfIU
