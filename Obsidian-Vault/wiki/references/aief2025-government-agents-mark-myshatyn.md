---
title: >-
  Government Agents: AI Agents Meet Tough Regulations
category: references
tags: [aief2025, government-ai, ai-agents, regulations, national-security, los-alamos, hpc, classified-data, ai-governance, agentic-science]
summary: Mark Myshatyn (LANL) on bringing AI agents into government mission work under strict regulatory constraints — OMB memos, FedRAMP, CNSSI 1253, classified data, and HPC-executed agents.
sources:
  - "https://www.youtube.com/watch?v=tnsgx36ly0q"
provenance: >-
  {extracted: 0.85, inferred: 0.10, ambiguous: 0.05}
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T12:00:00Z
updated: 2026-07-04T12:00:00Z
---

## TL;DR

Mark Myshatyn, Enterprise AI Architect at [[entities/los-alamos-national-laboratory|Los Alamos National Laboratory]], presents how a 70-year-old applied AI/ML laboratory approaches agentic AI under the world's toughest regulatory environment. LANL demonstrates agents that execute code on HPC assets for scientific discovery (ICF capsule design), while navigating OMB memoranda, FedRAMP, CNSSI 1253, and the permanent classification of nuclear physics data.

## Problem / Motivation

- LANL has been doing applied AI/ML for ~70 years, dating to 1956's "Los Alamos Chess" on the Maniac I supercomputer — a time when computers lacked memory to hold an entire chessboard.
- The laboratory faces a squeeze: do better, faster, cheaper, and more to protect the country, with ~20,000 researchers across 40 square miles and 13 nuclear facilities.
- AI agents represent a chance to move science faster while the risks of nuclear stewardship also move faster.
- Government AI cannot be limited to productivity tools (PowerPoint assistants, email summarizers); it must go deeper into mission work with real-world kinetic and geopolitical consequences.

## Method / Architecture

- **Agentic science workflow**: An AI agent reads scientific papers, generates hypotheses, designs an ICF (inertial confinement fusion) capsule, and — uniquely — executes the generated code on LANL's HPC assets running thermodynamic and hydrodynamic simulations.
- The agent is not a generic chatbot; it integrates 50-60 years of math and science tools for nuclear stockpile stewardship into an agentic loop.
- LANL's AI office has three mandates: (1) push the science of AI faster by writing their own models, (2) partner with industry and academia, and (3) bring AI into operational workflows (payroll, procurement, cybersecurity).
- Frontier models (e.g., OpenAI) are brought onto classified networks via the Venato supercomputer for mission-specific research.

## Key Points

| Area | Detail |
|------|--------|
| **History** | 70 years of applied AI/ML since Manhattan Project era; Monte Carlo methods from post-war period still in use |
| **Agent demo** | ICF capsule design agent that reads papers, hypothesizes, designs, and simulates on HPC |
| **Scale** | 20,000 researchers, 40 sq miles, 13 nuclear facilities |
| **Data classification** | Open/public → controlled unclassified → classified → DOE restricted; nuclear physics data is born classified forever |
| **Infrastructure** | Venato supercomputer: 2,500+ Grace Hopper nodes (NVIDIA + HPE); OpenAI models on classified networks |
| **Partnerships** | UC family of schools (academic), OpenAI (chem/bio safety), NVIDIA/HPE (hardware), all frontier labs |
| **Governance** | OMB M25-21, M25-22 (April 2025); FedRAMP (Rev 4, 1,000+ controls); DOD CSfC; CNSSI 1253 |
| **Philosophy** | "A safe place to do dangerous things" — trusted partner for frontier labs with data constraints |

## Limitations

- Transcript is incomplete (cuts off mid-sentence about the 180-day rulemaking period).
- No quantitative results from the ICF agent demo are provided (yield optimization claims without metrics).
- Specific details about OMB M25-21/M25-22 requirements are referenced but not enumerated.

## Related

- [[concepts/government-ai-agents]]
- [[concepts/agentic-science]]
- [[concepts/ai-governance-omb]]
- [[concepts/classified-data-ai]]
- [[concepts/real-world-impact-ai]]
- [[concepts/ai-partnership-trust]]
- [[concepts/government-build-vs-buy-ai]]
- [[entities/venato-supercomputer]]
