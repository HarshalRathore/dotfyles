---
title: "7RDGS"
category: entities
tags:
  - company
  - ai-consulting
  - privacy-focused
  - microsoft-partner
  - on-device-ai
sources:
  - "AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls"
summary: "AI consulting firm (7RDGS) that builds AI projects for clients requiring on-device processing of sensitive data. Uses Foundry Local to create hybrid solutions where sensitive components run locally."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/foundry-local|Foundry Local]]"
    type: uses
  - target: "[[concepts/data-sovereignty|Data Sovereignty]]"
    type: enforces
---

# 7RDGS

**7RDGS** is an AI consulting firm that has been building AI projects for clients for an extended period. ^[extracted] They are a Foundry Local early customer, using the platform to serve clients with strict data privacy requirements. ^[extracted]

## Use Case

Many of 7RDGS's clients want to use the latest AI technologies but are restricted from using external cloud services when processing sensitive information. ^[extracted] Foundry Local enables them to create hybrid solutions where the sensitive parts of the pipeline run entirely locally. ^[extracted]

## Demo

7RDGS demonstrated a Foundry Local + local speech-to-text solution processing sensitive financial data (bank account numbers) entirely on-device. ^[extracted]

## Impression

> "One aspect we were really impressed by was the simplicity of the installation and the ease of using the models." ^[extracted]

## Related

- [[entities/foundry-local|Foundry Local]] — the platform 7RDGS uses for on-device AI
- [[concepts/data-sovereignty|Data Sovereignty]] — the requirement driving 7RDGS's local-first approach
- [[concepts/privacy-first-ai|Privacy-First AI]] — architectural principle for sensitive data processing

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
