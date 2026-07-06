---
title: Evolution of Verification
tags:
- testing
- verification
- debugging
- quality-assurance
- software-engineering
- aief2025
aliases:
- verification evolution
- history of testing
sources:
- 'https://www.youtube.com/watch?v=lue8k2jqfkk'
summary: The progression of software verification from manual debugging through probabilistic methods (fuzzing, chaos engineering) to agentic self-verification — evolving alongside programming itself.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: concepts
---

# Evolution of Verification

Verification has evolved alongside programming, with each era introducing new methods for checking that software works correctly. The progression mirrors the broader evolution of programming: from manual inspection to automated, probabilistic, and now agentic verification.

## Manual Verification (1950s-1990s)

The original approach:

- **Manual debugging** — physically inspecting outputs, reading printed paper from teletype machines
- **Code review** — human inspection of source code
- **Manual testing** — humans running the software and checking results

This was the only option when programming itself was a physical activity (punch cards, switchboards).

## Automated Testing (1990s-2010s)

As software grew more complex, verification had to scale:

- **Unit tests** — automated checks of individual functions
- **Integration tests** — checking that components work together
- **CI/CD pipelines** — automated verification on every change

## Probabilistic Verification (2010s-2020s)

As systems grew more complex and distributed, deterministic testing became insufficient:

- **Fuzzing** — feeding random/malformed inputs to find bugs
- **Vulnerability testing** — automated security scanning
- **Chaos engineering** — Netflix's approach of intentionally breaking things in production to find weaknesses
- **Property-based testing** — checking that invariants hold across many inputs

## Agentic Verification (2020s+)

The newest approach: the agent checks itself.

- **Tests** — the agent writes and runs tests
- **Evals** — LLM-as-judge, deterministic checks, metrics
- **Self-verification** — the agent evaluates its own output before committing

This is part of the broader [[concepts/agentic-coding|agentic coding]] paradigm, where the agent is responsible not just for writing code but for verifying it.

## Key Insight

Verification is part of the programming UX curve. As programming moves from hardware to punch cards to assembly to high-level languages to natural language, verification must evolve from manual inspection to automated to agentic. ^[extracted]

## Related

- [[concepts/agentic-coding]] — Agentic verification is a component of agentic coding
- [[concepts/evolution-of-programming]] — Verification evolves alongside programming
- [[concepts/agent-loop]] — Self-verification is the evaluation phase of an agent loop
- [[concepts/evals-are-not-unit-tests]] — Why verification needs different approaches for AI
- [[concepts/reliability-over-intelligence]] — Verification focuses on reliability, not just capability
