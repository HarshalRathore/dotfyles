---
title: Streaming Diff Algorithm
category: concepts
tags:
- diff
- streaming
- llm
- text-comparison
- ai-editing
sources:
- 'AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss'
relationships:
- target: '[[concepts/fuzzy-text-matching|Fuzzy Text Matching]]'
  type: related_to
- target: '[[concepts/stochastic-evals|Stochastic Evals]]'
  type: related_to
- target: '[[concepts/indentation-robustness|Indentation Robustness]]'
  type: related_to
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.88
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Streaming Diff Algorithm
---

# Streaming Diff Algorithm

A text comparison algorithm designed to handle LLM-generated diffs where new text is emitted incrementally (streamed) rather than all at once. The core challenge: determining whether missing text from the old document was deleted or simply hasn't been streamed yet. ^[extracted]

## The Problem

When an LLM emits edit operations as a streaming diff (old text, new text blocks), the system must compare the streamed output against the original document in real time. If text present in the old document is absent from the streamed output so far, the system must decide: was this text deleted by the model, or is it just not yet emitted? ^[extracted]

## Zed's Implementation

Zed implemented a streaming diff algorithm that dynamically decides between deletion and pending emission as text arrives. This is a critical component for agentic editing, where the model emits edit blocks incrementally and the editor must apply them correctly in real time. ^[extracted]

## Deterministic Verification

Even though the streaming diff algorithm operates on stochastic (streaming) input, the algorithm itself is deterministic and can be tested with standard unit tests. Zed includes streaming diff verification in its regular test suite. ^[extracted]

## Relationship to Other Text Processing

The streaming diff algorithm works in concert with **Fuzzy Text Matching** (for approximate matching when the model generates slightly wrong text) and **Indentation Robustness** (for handling indentation deltas). Together, these three algorithms form Zed's text processing pipeline for agentic editing. ^[inferred]
