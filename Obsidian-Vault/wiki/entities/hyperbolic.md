---
title: "Hyperbolic"
category: entities
tags:
  - company
  - gpu
  - marketplace
  - ai-infrastructure
  - aief2025
aliases:
  - Hyperbolic AI
sources:
  - "[[sources/watchv=m6vbaig1tsm]]"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/hyperdos|HyperDOS]]"
    type: implements
  - target: "[[concepts/gpu-marketplace|GPU Marketplace]]"
    type: implements
  - target: "[[concepts/gpu-commoditization|GPU Commoditization]]"
    type: related_to
---

# Hyperbolic

Hyperbolic is an AI cloud platform for developers, building a global GPU marketplace and orchestration layer that aggregates GPU providers across data centers into a unified network. ^[extracted]

Founded by [[entities/jasper-zhang|Dr. Jasper Zhang]] (CEO and co-founder), Hyperbolic's thesis is that the compute shortage should be solved not by building more data centers, but by building a GPU marketplace that makes better use of existing idle capacity. ^[extracted]

## Product: HyperDOS

Hyperbolic's core software is [[entities/hyperdos|HyperDOS]] (Hyperbolic Distributed Operating System) — a Kubernetes-like orchestration layer that can turn any GPU cluster into a node in Hyperbolic's global network within five minutes of installation. ^[extracted]

## Marketplace Model

Hyperbolic offers GPUs through multiple rental modes: ^[extracted]

- **Spot instances** — discounted, interruptible GPU time
- **On-demand** — standard pay-as-you-go pricing
- **Long-term reservations** — committed capacity at lower rates
- **Model hosting** — rent GPUs to host and serve your own models

## Pricing

At the time of the talk, Hyperbolic's beta marketplace priced H100 GPUs at $0.99/hour — dramatically below on-demand pricing from major providers (Google at ~$11/hour, Lambda at $2–3/hour). ^[extracted]

## Roadmap

Hyperbolic is launching two additional products beyond the marketplace: ^[extracted]

- **Business Card** — production-ready GPUs with 99.5% reliability
- **Enterprise Card** — enterprise-grade compute with guaranteed availability

## Philosophy

Hyperbolic's core argument: building data centers alone cannot solve the compute shortage. The real lever is [[concepts/gpu-utilization|GPU utilization]] — enterprises idle 80% of their GPUs, and 100+ GPU clouds exist in a fragmented market. A marketplace aggregation layer solves the matching problem between GPU demand and supply. ^[extracted]

## Related

- [[entities/jasper-zhang|Dr. Jasper Zhang]] — Founder
- [[entities/hyperdos|HyperDOS]] — Core software product
- [[concepts/gpu-marketplace|GPU Marketplace]] — The problem space
- [[concepts/data-center-economics|Data Center Economics]] — The alternative (building more DCs)
- [[concepts/compute-allocation|Compute Allocation]] — Smart resource distribution
- [[references/aief2025-why-we-dont-need-more-data-centers-jasper-zhang-hyperbolic|Source talk]]
