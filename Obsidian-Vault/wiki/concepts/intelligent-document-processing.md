---
title: Intelligent Document Processing
category: concepts
tags: [document-processing, intelligent-document-processing, idp, classification, generative-ai, logistics, receipts]
summary: "An AI application pattern where documents (receipts, bills of lading, invoices) are processed using a combination of custom classifiers and generative AI models for faster, more accurate results than human annotators."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/evals-as-moat]]"
    type: related_to
  - target: "[[concepts/classification-vs-generation]]"
    type: related_to
  - target: "[[concepts/ai-native-toolchain]]"
    type: related_to
---

**Intelligent Document Processing (IDP)** is an AI application pattern where documents such as receipts, bills of lading, and invoices are processed using a combination of custom classifiers and generative AI models. This hybrid approach — classify first, then generate — produces faster and more accurate results than either approach alone, and can outperform human annotators. ^[extracted]

## The Pattern

**[[entities/randall-hunt|Randall Hunt]]** of **[[entities/caylent|Caylent]]** demonstrated this with a large logistics management customer that processes a "tremendous amount" of receipts and bills of lading:

1. **Custom classifier** — A domain-specific classifier determines the document type, key fields to extract, and processing strategy
2. **Generative AI** — The classified document is then processed by a generative AI model with the right context and constraints for the document type

The key insight: "Leveraging generative AI in a custom classifier before we send it into the generative AI models, we can get far faster, better results than even their human annotators can." ^[extracted]

## Why Classifier-Then-Generate Works

- **Reduced context window** — The classifier narrows down the document type, so the generative model only needs to extract fields relevant to that type
- **Faster processing** — Classification is typically faster than full generative extraction
- **Better accuracy** — The classifier provides structured context that guides the generative model
- **Domain adaptation** — The classifier can be trained on domain-specific document formats that general-purpose models handle poorly

## Contrast with Alternatives

| Approach | Speed | Accuracy | Cost |
|----------|-------|----------|------|
| Pure generative AI | Slow | Variable | High |
| Pure classification | Fast | Limited to classification | Low |
| Classifier + Generative | Fast | High | Medium |
| Human annotation | Slow | High | Very High |

## Applications

- **Logistics** — Receipts, bills of lading, shipping manifests
- **Finance** — Invoices, purchase orders, bank statements
- **Healthcare** — Insurance claims, patient forms, lab results
- **Legal** — Contracts, pleadings, discovery documents
- **Insurance** — Claims forms, damage assessments, policy documents

## Related

- [[concepts/evals-as-moat]] — IDP systems need robust evals to prove accuracy
- [[concepts/ai-native-toolchain]] — IDP is one of the application types in the AI-native toolchain
- [[concepts/monetizing-ai]] — IDP can be a monetizable AI feature added to existing SaaS platforms

## Sources

- AIEF2025 - POC to PROD: Hard Lessons from 200+ Enterprise GenAI Deployments - Randall Hunt, Caylent - https://www.youtube.com/watch?v=vW8wLsb3Nnc
