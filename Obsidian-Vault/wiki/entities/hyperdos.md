---
title: "HyperDOS"
category: entities
tags:
  - software
  - orchestration
  - gpu
  - kubernetes
  - distributed-systems
  - hyperbolic
aliases:
  - Hyperbolic Distributed Operating System
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
  - target: "[[entities/hyperbolic|Hyperbolic]]"
    type: implements
  - target: "[[entities/kubernetes|Kubernetes]]"
    type: related_to
---

# HyperDOS

HyperDOS (Hyperbolic Distributed Operating System) is the core software product of [[entities/hyperbolic|Hyperbolic]]. ^[extracted]

## What It Does

HyperDOS is a Kubernetes-like orchestration system that turns any GPU cluster into a node in Hyperbolic's global network. ^[extracted]

Installation takes approximately five minutes — once installed, the data center becomes part of Hyperbolic's aggregated compute network. ^[extracted]

## Architecture

HyperDOS operates on two sides: ^[extracted]

1. **Supply side**: Installs into existing GPU clusters/data centers, making them nodes in the global network
2. **Demand side**: Provides a unified marketplace where users can rent GPUs in various modes

## Design Philosophy

The key insight is that GPU clusters are already distributed globally — HyperDOS doesn't need to build new infrastructure, it just needs to connect existing infrastructure into a unified layer. ^[extracted]

## Related

- [[entities/hyperbolic|Hyperbolic]] — Parent company
- [[entities/kubernetes|Kubernetes]] — Analogous orchestration model
- [[concepts/gpu-marketplace|GPU Marketplace]] — The marketplace it enables
- [[concepts/gpu-utilization|GPU Utilization]] — The problem it solves
