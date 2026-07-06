---
title: "Windsurf Reviews"
category: concepts
tags:
  - ai
  - code-review
  - windsurf
  - automation
  - self-driving
  - aief2025
summary: "Windsurf's automated code review feature that asynchronously leaves comments and suggests changes, enabling developers to ship production-ready code with AI-native review instead of manual PR review."
sources:
  - "https://www.youtube.com/watch?v=jvunpl5qo8q"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Windsurf Reviews

**Windsurf Reviews** is an automated code review feature by [[entities/windsurf|Windsurf]] that asynchronously leaves comments and suggests changes on pull requests, enabling developers to ship production-ready code without manual PR review. The concept was introduced by [[entities/kevin-hou|Kevin Hou]] at AIEF2025 as part of Windsurf's vision of "doing everything" a software engineer would do. ^[extracted]

## How It Works

Windsurf Reviews operates as part of the [[concepts/developer-outer-loop|developer outer loop]] automation. After code is written and a PR is opened (via [[concepts/model-context-protocol|GitHub MCP]] with context from previous PRs), Windsurf Reviews automatically:

- Leaves comments on the PR
- Suggests changes asynchronously
- Ensures the code hitting main is production-ready

This is a concrete implementation of the [[concepts/self-driving-code-review|self-driving code review]] thesis — the idea that AI should handle the manual, painful parts of review so developers can focus on shipping. ^[extracted]

## Position in the "Doing Everything" Vision

Hou frames Windsurf Reviews as one of the surfaces where the AI must take action beyond coding. The full sequence he describes is:

1. Run terminal commands intelligently
2. Use [[concepts/developer-outer-loop|Windsurf browser previews]] to visually iterate
3. Open PR via GitHub MCP
4. Run [[concepts/windsurf-reviews|Windsurf Reviews]] for automatic async review
5. Deploy to Netlify with one-click

Windsurf Reviews sits at step 4 — the quality gate between coding and deployment, automated by AI. ^[extracted]

## Relationship to Human Review

Windsurf Reviews does not eliminate human review entirely. Hou's vision targets 99% agent / 1% human — the AI handles everything except final approval. Windsurf Reviews automates the bulk of review comments and suggestions, leaving the human to approve or reject the AI's findings. ^[inferred]

## Related

- [[concepts/self-driving-code-review|Self-Driving Code Review]] — The broader thesis Windsurf Reviews implements
- [[concepts/developer-outer-loop|Developer Outer Loop]] — The outer loop automation context
- [[concepts/model-context-protocol|Model Context Protocol]] — GitHub MCP integration for PR creation
- [[concepts/always-on-ai|Always-On AI]] — The 99% agent vision Windsurf Reviews advances
- [[references/aief2025-windsurf-everywhere-kevin-hou]] — Full talk
