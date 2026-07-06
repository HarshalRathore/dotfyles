---
title: Government Build-vs-Buy AI
category: concepts
tags: [build-vs-buy, government-ai, national-security, custom-models, frontier-partnerships, ai-strategy]
summary: >-
  The government AI procurement dilemma: build custom models and infrastructure vs. buy commercial solutions, constrained by classified data, compliance requirements, and mission-critical stakes.
sources:
  - "https://www.youtube.com/watch?v=tnsgx36ly0q"
provenance: >-
  {extracted: 0.75, inferred: 0.20, ambiguous: 0.05}
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T12:00:00Z
updated: 2026-07-04T12:00:00Z
relationships:
  - target: "[[concepts/build-vs-buy-agents]]"
    type: extends
  - target: "[[concepts/classified-data-ai]]"
    type: constrained_by
  - target: "[[concepts/ai-partnership-trust]]"
    type: relates_to
---

The government build-vs-buy AI decision is the strategic question of whether a government organization should build its own AI models and infrastructure or purchase commercial solutions. Unlike the commercial context, government build-vs-buy is heavily constrained by classified data requirements, compliance burdens, and the real-world consequences of AI failures.

## The LANL Approach: Both/And

[[entities/los-alamos-national-laboratory|Los Alamos National Laboratory]] takes a pragmatic both/and approach:

**Build internally:**
- Write their own AI models rather than consuming only commercial or open-source tools.
- Build domain-specific agent capabilities integrated with 50-60 years of scientific computational tools.
- Develop custom infrastructure (Venato supercomputer) for classified AI work.

**Buy/partner externally:**
- Partner with frontier labs (OpenAI) for model access and chem/bio safety work.
- Partner with academia (UC family of schools) for future AI development.
- Partner with hardware vendors (NVIDIA, HPE) for supercomputer infrastructure.
- Bring OpenAI's models onto classified networks via Venato.

LANL explicitly states they "can't do everything" and "don't have the hubris to understand or to say here, oh, we understand everything. We don't need anyone's help."

## Constraints That Favor Building

- **Classified data**: Models trained on classified data cannot leave classified environments, limiting the utility of commercial SaaS.
- **Domain specificity**: 50-60 years of nuclear stockpile stewardship tools and mathematical models must be integrated into agents.
- **HPC execution**: Agents need to execute code on supercomputing infrastructure, not just return text.
- **Real-world impact**: The consequences of failure require deep understanding of the domain that commercial models lack.

## Constraints That Favor Buying/Partnering

- **Model capability**: Frontier labs have access to the most capable models; government labs cannot compete on raw model size.
- **Talent**: Government labs cannot hire freely (security clearance requirements limit the talent pool).
- **Infrastructure cost**: Building and maintaining HPC infrastructure is extremely expensive.
- **Speed**: Partnering accelerates access to cutting-edge capabilities.

## Relationship to Other Concepts

Government build-vs-buy AI extends the general [[concepts/build-vs-buy-agents|build-vs-buy agents]] framework with government-specific constraints from [[concepts/classified-data-ai|classified data]] requirements. It is deeply shaped by [[concepts/ai-partnership-trust|AI partnership trust]] dynamics, as the government's unique position as a "safe place to do dangerous things" makes it an attractive partner for frontier labs.
