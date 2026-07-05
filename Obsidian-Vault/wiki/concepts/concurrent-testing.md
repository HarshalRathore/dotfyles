---
title: "Concurrent Testing"
category: concepts
tags:
  - testing
  - concurrency
  - race-conditions
  - ci
  - deterministic
  - interleaving
sources:
  - "AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss"
relationships:
  - target: "[[concepts/stochastic-evals|Stochastic Evals]]"
    type: related_to
  - target: "[[concepts/deterministic-eval-scoring|Deterministic Eval Scoring]]"
    type: related_to
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.88
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Concurrent Testing

A testing methodology that exercises every possible random interleaving of concurrent operations by running a test many times with a simulated scheduler. Each failing interleaving can be replayed deterministically, frozen, and debugged with full control. ^[extracted]

## Zed's Approach

Zed runs 50+ iterations of each concurrent test with every random interleaving of network packets and operations. When a specific interleaving (e.g., iteration 375,000) fails, it can be replayed repeatedly in a frozen state for debugging. This approach has enabled Zed to maintain zero flaky tests in CI for all non-AI features. ^[extracted]

## Test Structure

Each concurrent test starts a server, creates two clients, and passes in a simulated scheduler. The test exercises the full system under concurrent load, with the simulated scheduler controlling the timing of all operations. ^[extracted]

## Why It Works

The simulated scheduler turns non-deterministic concurrent behavior into deterministic, replayable test cases. Any failure is reproducible, which is essential for debugging race conditions in complex systems. ^[extracted]

## Limitations

This approach works only for deterministic systems. When LLMs enter the pipeline, the output non-determinism cannot be controlled by a simulated scheduler — requiring the shift to **Stochastic Evals**. ^[inferred]
