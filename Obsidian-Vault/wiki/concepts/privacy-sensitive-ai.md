---
title: Privacy-Sensitive AI
category: concepts
tags:
- privacy
- security
- data-sovereignty
- local-ai
- compliance
sources:
- 'AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls'
summary: AI applications that process sensitive data (legal, medical, financial) requiring on-device execution to prevent data from leaving the user's control. Driven by compliance, legal, and organizationa...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/on-device-inference|On-Device Inference]]'
  type: requires
- target: '[[concepts/data-sovereignty|Data Sovereignty]]'
  type: implements
---

# Privacy-Sensitive AI

**Privacy-sensitive AI** refers to AI applications that process data types (legal documents, patient records, financial information) where regulatory, legal, or organizational policy constraints prevent data from leaving the user's device or organization. ^[extracted]

## The Constraint

Many companies work with very sensitive data that must be processed entirely locally without anything ever leaving the device. ^[extracted] This is not a technical preference — it is a compliance requirement. ^[inferred]

## Use Cases

- **Legal document processing** — Client communications, contracts, case files cannot leave the organization ^[extracted]
- **Healthcare** — Patient information subject to HIPAA and similar regulations ^[extracted]
- **Financial data** — Bank account numbers, transaction records, personal savings data ^[extracted]
- **Government** — Classified or restricted information ^[inferred]

## Hybrid Architecture

Privacy-sensitive AI often uses a hybrid approach where sensitive components run locally while non-sensitive components may use cloud services. ^[extracted] [[entities/7rdgs|7RDGS]] demonstrated this with a Foundry Local + local speech-to-text solution processing sensitive financial data entirely on-device. ^[extracted]

## Platform Support

Platforms designed for privacy-sensitive AI provide: ^[extracted]

- Guaranteed no-data-exit architecture
- Local model management (download once, run forever offline)
- Hardware acceleration for acceptable performance without cloud offloading
- Cross-platform support for organizational deployment

## Related

- [[concepts/on-device-inference|On-Device Inference]] — the technical mechanism
- [[concepts/data-sovereignty|Data Sovereignty]] — the regulatory framework
- [[entities/foundry-local|Foundry Local]] — platform enabling privacy-sensitive AI
- [[entities/7rdgs|7RDGS]] — consulting firm serving privacy-sensitive clients

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
