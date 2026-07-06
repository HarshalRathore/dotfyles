---
title: 'AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed'
category: references
tags:
- aief2025
- stochastic-evals
- ci
- agentic-editing
- zed
- testing
- llm
sources:
- 'AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals — Nathan Sobo, Zed - https://www.youtube.com/watch?v=WXy8Yy9xGss'
relationships:
- target: '[[entities/nathan-sobo|Nathan Sobo]]'
  type: related_to
- target: '[[entities/zed|Zed]]'
  type: related_to
- target: '[[concepts/stochastic-evals|Stochastic Evals]]'
  type: related_to
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.92
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: 'AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals'
---

# AIEF2025 - CI in the Era of AI: From Unit Tests to Stochastic Evals

**Speaker:** Nathan Sobo, Co-founder, Zed
**Video:** https://www.youtube.com/watch?v=WXy8Yy9xGss

## Summary

Nathan Sobo presents Zed's empirical approach to testing AI-powered agentic editing features, detailing the transition from fully deterministic CI testing to stochastic evaluations when LLMs entered the pipeline. The talk covers concrete failure modes discovered through stochastic testing and the algorithmic fixes that converted probabilistic failures into deterministic improvements.

## Key Topics

### Zed's Engineering Architecture
- AI-enabled code editor built from scratch in Rust (not a VS Code fork)
- ~1,200 lines of GPU shader programs driving 120fps rendering
- Agentic editing capabilities launched with a novel testing approach

### The Deterministic-to-Stochastic Shift
- Zed maintained tens of thousands of deterministic tests with zero flaky tests in CI
- LLMs broke deterministic testing: changing one token produces completely different output
- Required embracing stochastic behavior and developing new evaluation methodologies

### Stochastic Eval Architecture
- Eval functions are regular programmatic tests compiled into Zed's headless binary
- Each eval runs 200 times with a 100% pass rate watermark for CI gates
- Two evaluation strategies: programmatic assertions and eval-as-judge

### Failure Mode Discovery and Fixes
- **Grep tool:** Truncated code exposure → TreeSitter-based syntactic boundary expansion
- **Editing:** Indentation flattening → indentation delta computation and renormalization
- **XML tag mismatch:** 40% failure rate → reduced to 5% via prompt engineering + robust parsing
- **Empty old-text tags:** Model omits old text for top/end document inserts → prompt fix + robustness handling
- **Streaming diff:** Missing text detection → dynamic streaming diff algorithm

### Supporting Deterministic Infrastructure
- Fuzzy matching algorithm (dynamic programming) for approximate text matching
- Random chunking parser tests (100 iterations) for arbitrary boundary tolerance
- Streaming diff verification tests for incremental text comparison
- Lorem ipsum indentation pattern tests for delta computation verification

## Core Thesis

Stochastic tests are a discovery mechanism, not the final state. The goal is to use stochastic testing to surface failure modes, then drive those failures into deterministic algorithmic fixes that can be verified with standard unit tests. ^[extracted]
