---
title: Runbook Dependency
tags:
- runbooks
- incident-response
- documentation
- agent-workflows
- observability
aliases:
- runbook-dependency
- runbook-problem
- runbook-deprecation
sources:
- 'https://www.youtube.com/watch?v=l6_nigiexzq'
summary: The problem that runbooks — documented incident response procedures — are deprecated the moment they are created. This makes runbook-dependent agent workflows ineffective for production troubleshoo...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/production-troubleshooting]]'
  type: related_to
- target: '[[concepts/agent-swarm]]'
  type: contradicts
- target: '[[concepts/causal-machine-learning]]'
  type: related_to
category: concepts
---

# Runbook Dependency

**Runbook dependency** is the problem that documented incident response procedures (runbooks) are deprecated the moment they are created. This makes any troubleshooting approach that relies on runbooks fundamentally ineffective.

## The Problem

[[entities/anish-agarwal|Anish Agarwal]] notes that runbooks are typically "deprecated by the time they're built." Production systems are constantly changing — new services, new configurations, new failure modes — while runbooks are static documents that cannot keep up.

## Impact on Agent Workflows

React-style AI agents that rely on runbooks as their meta-workflow face a critical flaw:

- The agent assumes access to a documented workflow for decision-making
- The runbook is already outdated by the time the agent uses it
- The agent follows an obsolete path that doesn't match the current system state
- Even with broad system search, simple tool-calling loops take too long (days vs. minutes)

## Contrast with First-Principles Debugging

Traversal's approach avoids runbook dependency entirely:

- **Causal ML** discovers root causes from data, not from pre-written procedures
- **Agent swarms** perform exhaustive search rather than following a planned path
- **Reasoning models** extract context from actual system state, not from static documentation

This is what enables **out-of-sample troubleshooting** — handling incidents never seen before, without any pre-existing runbook.

## Sources

- Video: <https://www.youtube.com/watch?v=L6_NiGIEXZQ>
