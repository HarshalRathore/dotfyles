---
title: FedRAMP
category: concepts
tags: [cloud-security, government-compliance, security-controls, authorization, saas, government-ai]
summary: "Federal Risk and Authorization Management Program — standardized security assessment for U.S. government cloud services. Rev4 has 1,000+ controls with new continuous monitoring requirements."
sources:
  - "AIEF2025 - Applied AI and Agentic Science at a National Laboratory — Mark Machotton, Los Alamos National Laboratory - https://www.youtube.com/watch?v=cFxWPP1ik6A"
provenance: {extracted: 1.0, inferred: 0.0, ambiguous: 0.0}
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/ai-governance]]"
    type: component_of
  - target: "[[concepts/controlled-classified-ai]]"
    type: prerequisite_for
---

FedRAMP (Federal Risk and Authorization Management Program) provides a standardized approach to security assessment, authorization, and continuous monitoring for cloud products and services serving U.S. federal government agencies, forming a key component of [[concepts/ai-governance|U.S. AI governance]].

**FedRAMP Rev4** contains over 1,000 security controls and enhancements. It uses a three-level impact classification (Low, Moderate, High) based on the potential impact of a breach. A third-party authorizer validates compliance for each level.

Key characteristics:

- **Continuous monitoring:** A new FedRAMP initiative requires vendors to maintain continuous security posture monitoring — not just a one-time assessment. This is critical for AI systems where the threat landscape changes rapidly.
- **Downstream vendors:** Organizations that provide services to FedRAMP-authorized systems must themselves be compliant, creating a supply chain security requirement.
- **Pain point for vendors:** The process is widely regarded as complex and time-consuming, creating barriers to entry for AI startups seeking government customers.

For AI vendors, FedRAMP authorization is often a minimum requirement (not a differentiator) to serve government workloads. The DoD layers additional requirements on top: the DoD Security Requirements Guide (SRG) adds two more impact levels, and [[concepts/cnssi-1253|CNSSI 1253]] adds another layer of controls for classified systems.
