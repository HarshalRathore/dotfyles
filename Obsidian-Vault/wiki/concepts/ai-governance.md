---
title: AI Governance
category: concepts
tags: [ai-policy, government-regulation, nist, fedramp, omb, compliance, national-security]
summary: "U.S. government AI governance landscape: OMB memoranda, NIST frameworks, FedRAMP, DoD SRG, and CNSSI 1253. Strategies still under development as of 2025."
sources:
  - "AIEF2025 - Applied AI and Agentic Science at a National Laboratory — Mark Machotton, Los Alamos National Laboratory - https://www.youtube.com/watch?v=cFxWPP1ik6A"
provenance: {extracted: 0.95, inferred: 0.05, ambiguous: 0.0}
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: "[[concepts/fedramp]]"
    type: includes
  - target: "[[concepts/nist-ai-risk-management]]"
    type: incorporates
  - target: "[[concepts/cnssi-1253]]"
    type: layers_with
  - target: "[[concepts/controlled-classified-ai]]"
    type: constrains
---

AI governance in the U.S. government refers to the frameworks, regulations, and policies that govern how federal agencies develop, deploy, and operate AI systems. As of 2025, the landscape is rapidly evolving, shaped by [[concepts/omb-memorandum-m25-21|OMB Memorandum M-25-21]], [[concepts/omb-memorandum-m25-22|M-25-22]], [[concepts/nist-ai-risk-management|NIST's AI Risk Management Framework]], and [[concepts/fedramp|FedRAMP]] authorization requirements.

**OMB Memoranda (April 2025):**
- **M-25-21** and **M-25-22** codify AI governance requirements for federal agencies. They direct agencies to move faster in AI adoption while recognizing that government workloads have real-world impacts (unlike commercial applications). The memoranda mandate 180-day strategy development periods for agencies.
- The memoranda tell the government to "go faster" but also acknowledge that AI systems in government have kinetic consequences — people can die if these systems fail.

**NIST AI Risk Management Framework (2023):**
- Released by NIST to provide a structured approach to managing AI risk. Provides prescriptive guidance on identifying, measuring, and mitigating AI risks across the AI lifecycle.

**FedRAMP:**
- Federal Risk and Authorization Management Program. Provides a standardized approach to security assessment and authorization for cloud services. FedRAMP Rev4 contains over 1,000 security controls and enhancements. A new FedRAMP initiative emphasizes continuous monitoring and continuous security posture assessment.

**DoD Security Requirements Guide (SRG):**
- Layers two additional impact levels on top of FedRAMP's three levels for systems touching DoD data (PII, mission data, operational data, finance data).

**CNSSI 1253:**
- Another security standard layered on top of FedRAMP and DoD SRG for classified systems.

The current state (as of April 2025) is that AI-specific governance is still on the drawing board. Agencies are in a 180-day rule-making period to develop their AI implementation strategies, classify use cases by risk level, and establish governance for pilots. This creates both challenges and opportunities for AI vendors seeking to serve government workloads.
