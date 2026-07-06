---
title: Bismuth
category: entities
tags:
- agent-debugging
- bug-detection
- github-integration
- on-prem
- aief2025
summary: End-to-end agent debugging solution by Ian Butler. Creates PRs automatically, scans for vulnerabilities, provides reviews. Integrates with GitHub, GitLab, JIRA, and Linear. Supports on-prem deploym...
sources:
- AIEF2025 - How to Improve your Vibe Coding — Ian Butler - https://www.youtube.com/watch?v=g03m-WFEu1U
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/ian-butler]]'
  type: created_by
- target: '[[concepts/agent-evaluation-pipeline]]'
  type: implements
---

# Bismuth

**Bismuth** (bismuth.sh) is an end-to-end agent debugging solution led by [[entities/ian-butler|Ian Butler]]. ^[extracted]

## Capabilities

- Automatically creates PRs linked to GitHub and GitLab
- Integrates with JIRA and Linear for issue tracking
- Scans codebases for vulnerabilities
- Provides automated code reviews
- Supports on-prem deployments (addressing a known concern for enterprise customers) ^[extracted]

## Benchmark

Bismuth published the SM100 benchmark, evaluating AI agent bug-finding capabilities across 100+ repositories. The full benchmark data, methodology, and results are available at bismuth.sh. ^[extracted]
