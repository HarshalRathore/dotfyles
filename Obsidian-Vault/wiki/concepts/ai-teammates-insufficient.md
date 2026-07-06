---
title: AI Teammates Are Insufficient
tags:
- ai
- developer-tools
- software-engineering
- workflow
- aief2025
aliases:
- AI teammates not enough
- AI agents insufficient
relationships:
- target: '[[concepts/ai-native-toolchain]]'
  type: related_to
- target: '[[concepts/peer-programming]]'
  type: contradicts
- target: '[[concepts/developer-outer-loop]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=h6mrr5nbtza'
summary: Adding AI 'teammates' (background agents, AI reviewers) to the existing workflow is insufficient to solve the outer loop bottleneck. The entire toolchain must be AI-native.
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: concepts
---

# AI Teammates Are Insufficient

An early hypothesis at [[entities/graphite|Graphite]] was that the outer loop bottleneck could be solved by adding AI "teammates" — background agents, AI reviewers, or additional AI-powered tools — to the existing developer workflow. This hypothesis was found to be insufficient. ^[extracted]

## The Insufficiency Argument

The core insight from [[entities/tomas-reimers|Tomas Reimers]] at AIEF2025 is that you cannot solve an AI-induced bottleneck (caused by AI-accelerated code generation) with incremental AI additions to a non-AI-native workflow. ^[extracted]

The problem is structural, not incremental:

- **AI teammates** are bolted onto workflows designed for human-scale code generation
- The **volume and velocity** of AI-generated code requires fundamentally different tooling
- Adding more AI agents to a legacy toolchain does not address the root cause

> "We don't think that [AI teammates] is enough. Your entire toolchain has to be AI-native, not just your IDE." — Tomas Reimers ^[extracted]

## Contrast with Peer Programming

This thesis directly contrasts with the [[concepts/peer-programming|peer programming]] model, where AI is treated as a genuine teammate assigned tasks end-to-end. While peer programming may work for the inner loop (code generation), the outer loop requires deeper architectural changes. ^[inferred]

## The AI-Native Alternative

The sufficient solution is an AI-native toolchain where the entire outer loop — testing, review, merge, deploy — is designed for the AI-accelerated inner loop. See [[concepts/ai-native-toolchain|AI-Native Toolchain]] for the full thesis.

## Related

- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — The sufficient alternative: re-architecting the entire toolchain
- [[concepts/peer-programming|Peer Programming]] — The contrasting model where AI is treated as a genuine teammate
- [[concepts/developer-outer-loop|Developer Outer Loop]] — The two-loop model showing the bottleneck
- [[references/aief2025-dont-get-one-shotted-tomas-reimers-graphite]] — Source talk
