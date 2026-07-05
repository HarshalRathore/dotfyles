---
title: "The Last Mile Problem in AI"
category: concepts
tags: [last-mile, ai-reliability, production-ai, demo-vs-production, enterprise-ai]
summary: "The gap between demo-ready/POC-ready AI systems and production-grade, enterprise-grade, reliable systems. Has persisted 2+ years since ChatGPT despite promises of autonomy and enterprise transformation."
sources:
  - "[[sources/watchv=omgpvw8tbhc]]"
  - "[[sources/watchv=mrm7oa3jsfs]]"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/brittleness-lipschitz-discontinuity]]"
    type: relates_to
  - target: "[[concepts/fuzz-testing-ai]]"
    type: addressed_by
  - target: "[[concepts/reliability-over-intelligence]]"
    type: related_to
  - target: "[[concepts/demo-savvy-problem]]"
    type: extends
---

# Last Mile Problem in AI

The last mile problem in AI is the gap between demo-ready/POC-ready AI systems and production-grade, enterprise-grade, reliable systems. ^[extracted]

## The Timeline

This gap has persisted for 2+ years since ChatGPT launched, despite ongoing promises of "autonomy and agency and full-gen AI and enterprise transformation." ^[extracted] We are "still not quite there." ^[extracted]

## The Two Dimensions

[[entities/leonard-tang|Leonard Tang]] (Haize Labs) frames the last mile as a trust and reliability problem: ^[extracted]

> "At this point in 2025, it's extremely easy to get something that is demo-ready or POC-ready... but it's really hard to get that same product into production at a point where it's truly robust and enterprise-grade and reliable."

The core blocker is **trust and reliability and risk** — not model capability. ^[extracted]

## Connection to Brittleness

The last mile problem is driven by brittleness (Lipschitz discontinuity): a system that works on carefully chosen demo inputs fails on the dense perturbations of real-world inputs. Static eval datasets cannot bridge this gap because they lack coverage of the input space. ^[inferred]

## Connection to Domain-Native Approach

[[entities/christopher-lovejoy|Christopher Lovejoy]] (Anterior) addresses the last mile from a different angle: models reach ~95% capability, but the final 4-5% requires domain-specific context that only domain experts can provide. ^[extract0] The last mile is a domain context problem, not a model capability problem. ^[inferred]

## Relationship to Fuzz Testing

[[concepts/fuzz-testing-ai|Fuzz testing]] is Haize's proposed solution to the last mile: systematically pressure-test AI systems through large-scale adversarial input generation before deployment, discovering bugs and corner cases that static evals miss. ^[inferred]

## Sources

- AIEF2025 - Fuzzing in the GenAI Era — Leonard Tang, Haize Labs. https://www.youtube.com/watch?v=OMGPvW8TBHc
- AIEF2025 - Make your LLM app a Domain Expert: How to Build an Expert System — Christopher Lovejoy, Anterior. https://www.youtube.com/watch?v=MRM7oA3JsFs
