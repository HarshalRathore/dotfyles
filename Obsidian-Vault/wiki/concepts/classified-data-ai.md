---
title: Classified Data AI
category: concepts
tags: [classified-data, born-classified, nuclear-weapons, data-security, air-gapped, national-security, government-ai]
summary: AI systems operating on data that is permanently classified (born-classified, never expires), creating unique constraints for model training, inference, and vendor partnerships in the national security domain.
sources:
  - "[[sources/watchv=tnsgx36ly0q]]"
provenance: {extracted: 0.80, inferred: 0.15, ambiguous: 0.05}
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T12:00:00Z
updated: 2026-07-04T12:00:00Z
relationships:
  - target: "[[concepts/government-ai-agents]]"
    type: extends
  - target: "[[concepts/ai-trust-pillars]]"
    type: uses
  - target: "[[concepts/ai-partnership-trust]]"
    type: related_to
---

Classified data AI refers to the domain of AI systems that process, train on, or generate outputs from data that is permanently classified — most notably nuclear weapon physics information, which is "born classified and stays classified forever." This creates constraints that no commercial AI system has had to address.

## The Permanence Problem

Unlike most data whose sensitivity decays over time, the physics of how nuclear weapons work does not expire. This means:

- Data classified today will remain classified in perpetuity, regardless of geopolitical changes or technological advances.
- AI models trained on classified data cannot be exported, shared, or even have their weights transferred to unclassified environments.
- Vendor AI systems must be deployed within classified network boundaries (e.g., LANL's classified networks via the Venato supercomputer).

## Data Classification Spectrum

Government AI systems must operate across a data classification hierarchy:

| Level | Description | Example |
|-------|-------------|---------|
| Open/Public Unrestricted | No restrictions | Open science research, ICF capsule agent demo |
| Controlled Unclassified | Handling controls apply | PII, law enforcement sensitive |
| Classified | Need-to-know access required | Nuclear weapon design data |
| Restricted/Formerly Restricted | Once classified, now restricted | Formerly classified data with ongoing handling requirements |

## Implications for AI Vendors

The classified data domain creates a unique vendor-customer relationship:

- **SOC 2 is insufficient.** Government customers require understanding of NIST SP 800-53 Rev 4 (1,000+ controls), FedRAMP authorization, and classified-network deployment capability.
- **Model weights must stay classified.** Commercial AI models (like OpenAI's) must be brought onto classified infrastructure rather than having classified data sent to commercial clouds.
- **Trust is bidirectional.** Government labs serve as "a safe place to do dangerous things" — frontier labs that cannot freely hire or share data partner with government labs for data-sensitive work.

## Relationship to Other Concepts

Classified data AI is a core constraint within [[concepts/government-ai-agents|government AI agents]], requiring the trust frameworks described in [[concepts/ai-trust-pillars|AI trust pillars]] and [[concepts/ai-partnership-trust|AI partnership trust]]. It fundamentally shapes the [[concepts/government-build-vs-buy-ai|government build-vs-buy AI]] decision, as classified data often necessitates building custom solutions.
