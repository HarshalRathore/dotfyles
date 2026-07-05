---
title: Super Tools
category: concepts
tags: [super-tools, launchdarkly, tool-augmentation, lean-startup, workflow-consolidation]
sources:
  - AIEF2025 - The New Lean Startup — Sid Bendre, Olive - https://www.youtube.com/watch?v=pQz-PgA1eJw
provenance:
  extracted: 0.82
  inferred: 0.13
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/lean-startup-playbook]]"
    type: related_to
  - target: "[[concepts/compounding-benefits]]"
    type: related_to
  - target: "[[concepts/ai-augmentation-10x]]"
    type: related_to
  - target: "[[entities/olive]]"
    type: related_to
---

# Super Tools

The principle that a lean team should consolidate workflows onto one platform whenever possible, which requires reinventing how old tools are used rather than adopting new ones.^[extracted]

## The Philosophy

"We're pretty lazy, so we like to consolidate a lot of our workflows onto one platform."^[extracted] Rather than accumulating a long tail of specialized tools, super tools are platforms that are stretched beyond their intended design to cover multiple workflows.^[extracted]

## Case Study: LaunchDarkly

LaunchDarkly is a feature management platform designed to help software teams control and release features safely.^[extracted] Olive extends it far beyond its intended use:

### 1. Manual Traffic Load Balancer for LLM Calls

LaunchDarkly sits between all LLM calls, enabling on-the-fly rerouting of traffic to different LLM providers based on rate limits, strategic initiatives, or other criteria.^[extracted] This was critical in early days when rate limits were tight and quota increases on individual endpoints (especially Azure OpenAI) were hard to obtain.^[extracted]

### 2. On-the-Fly Infrastructure Changes

For products like Unstuck AI that ingest many file formats with waterfall ingestion processes depending on multiple third-party services, LaunchDarkly enables dynamic prioritization of these processes.^[extracted] If a third-party service goes down, the team can reorganize the service flow on-the-fly to keep the product running for users worldwide.^[extracted]

### 3. UI Modifications and Paywall Experiments Without Code Pushes

An experimentation layer built around LaunchDarkly allows the team to run and spin up experiments without deploying code.^[extracted] This enables rapid A/B testing of UI changes and paywall configurations.^[extracted]

## Relationship to Compounding Benefits

Super tools become part of the blueprint system — once a tool is configured for extended use, that configuration compounds across all future products.^[inferred] See [[concepts/compounding-benefits|Compounding Benefits]].

## Sources

- [[references/aief2025-the-new-lean-startup-sid-bendre-olive|AIEF2025 — The New Lean Startup: Sid Bendre, Olive]]
