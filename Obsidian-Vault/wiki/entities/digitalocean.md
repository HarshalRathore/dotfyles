---
title: "DigitalOcean"
tags:
  - company
  - cloud-provider
  - observability
  - customer-case-study
  - ai-eng-worlds-fair-2025
aliases: [digitalocean, DO]
sources:
  - "[[sources/watchv=l6_nigiexzq]]"
summary: Cloud provider serving hundreds of thousands of customers. Traversal.ai customer that achieved ~40% MTTR reduction through autonomous incident investigation using causal ML and agent swarms.
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.90
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/traversal-ai]]"
    type: uses
  - target: "[[concepts/mttr]]"
    type: related_to
  - target: "[[concepts/production-troubleshooting]]"
    type: related_to
---

# DigitalOcean

DigitalOcean is a cloud infrastructure provider serving hundreds of thousands of customers. It is a customer of [[entities/traversal-ai|Traversal.ai]] and serves as the primary public case study for the company's autonomous troubleshooting product.

## Production Environment

DigitalOcean's production environment exemplifies the scale of the troubleshooting problem:

- Hundreds of millions of metrics viewable on thousands of dashboards
- Tens of billions of logs from thousands of services
- Incident response involves 40-60 engineers in Slack channels
- Root cause is often a single log entry among massive data volumes

## Pre-Traversal Incident Response

When an incident occurred, on-call engineers were thrown into Slack channels with dozens of other engineers, frantically searching through massive observability data. Resolution took hours of collective effort.

## Post-Traversal Results

After deploying Traversal's autonomous troubleshooting:

- **~40% reduction in MTTR** (mean time to resolution)
- Traversal's AI investigation completes in ~5 minutes
- Root cause findings confirmed correct by DigitalOcean engineers
- Engineers can explore findings in Traversal UI with cited data, confidence levels, and reasoning
- AI-generated impact maps allow follow-up questions about stack impact

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
