---
title: "AIEF2025 - Beyond the Prototype: Using AI to Write High-Quality Code"
category: references
tags: [aief2025, talk, coding-agents, code-quality, ai-verification, imbue, sculptor]
summary: Josh Albrecht (CTO, Imbue) presents four prevention and three detection strategies for producing high-quality AI-generated code, introducing Sculptor as an experimental coding agent environment.
sources:
  - "AIEF2025 - Beyond the Prototype: Using AI to Write High-Quality Code - Josh Albrecht, Imbue - https://www.youtube.com/watch?v=x_1EumTaXeE"
provenance: { extracted: 0.95, inferred: 0.05, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[entities/josh-albrecht|Josh Albrecht]]"
    type: presented_by
  - target: "[[entities/imbue|Imbue]]"
    type: organization
  - target: "[[entities/sculptor|Sculptor]]"
    type: introduces
---

# Beyond the Prototype: Using AI to Write High-Quality Code

**Speaker:** Josh Albrecht, CTO of Imbue
**Event:** AI Engineer World's Fair 2025
**Video:** https://www.youtube.com/watch?v=x_1EumTaXeE

## TLDR

Josh Albrecht argues that the AI coding industry should stop optimizing for large context windows, speed, and cost — problems he expects to be solved by model improvements within 3–24 months. Instead, the focus should be on domain-specific problems: bridging the gap between AI-generated prototype code and production-ready code. He introduces [[entities/sculptor|Sculptor]], an experimental coding agent environment that implements four prevention strategies and three detection strategies for AI-generated code quality.

## Problem & Motivation

The central problem: when developers use vibe coding tools, the generated code works for prototyping but has a "big gap" between what comes back and what you want to ship to production, especially in larger, established codebases.^[extracted]

The current state offers an awkward binary choice:
1. Manually review every line of the AI-generated diff
2. Blindly hit merge and hope for the best

Neither is satisfactory. Albrecht proposes a third option: using another AI system to evaluate the generated code for specific problems (race conditions, leaked API keys, architectural violations).^[extracted]

The goal is to build **user trust** by allowing AI-to-AI verification — not just generating code, but helping developers trust that code.^[extracted]

## Method & Architecture

### Quality Definition

Albrecht adopts the academic definition of software quality: measured by defect count, time-to-fix, and technique effectiveness. High-quality code = code with few or no problems.^[extracted]

### Shift-Left Philosophy

Sculptor is designed as a synchronous, immediate-feedback tool — not a pull request review tool. Problems should be identified as soon as code is generated or changed, making them easier for both humans and agents to fix.^[extracted]

### Four Prevention Strategies

1. **Learning** — Integrated research capability lets users ask the agent to investigate existing technologies and solutions before building, preventing re-invention.^[extracted]

2. **Planning** — System prompt manipulation forces the agent to generate a plan before writing any code. Users toggle between planning mode and coding mode by changing system prompts.^[extracted]

3. **Spec-first** — Specifications and documentation are first-class artifacts. The system detects when code and docs have become inconsistent, reducing the maintenance burden. It can also highlight spec conflicts.^[extracted]

4. **Style guide enforcement** — Real-time suggestions keep the agent on a reasonable path (e.g., "make this class immutable to prevent race conditions"). Custom style guides for AI agents are in development.^[extracted]

### Three Detection Strategies

1. **Linters** — Automated tools (Ruff, MyPy, PyLint, Pyre) for automatic error detection and fixing. Tracks what lint issues existed before vs. after the agent ran, preventing regression.^[extracted]

2. **Tests** — Writing and running tests against generated code.^[extracted]

3. **LLM review** — Asking an LLM to review the generated code.^[extracted]

## Key Insights

- **Don't optimize for solvable problems:** Large context windows, speed, and cost will be solved by model improvements. Focus on domain-specific problems that matter for production.^[extracted]
- **Trust through verification:** The real challenge isn't generating code — it's building trust in that code.^[extracted]
- **Immediate feedback is critical:** Problems identified synchronously are easier to fix than those found in PR review.^[extracted]
- **AI agents excel at lint fixing:** Unlike humans, agents don't get fatigued by minor stylistic issues and can fix them automatically.^[extracted]
- **Custom style guides for AI:** Agents have different error patterns than humans and benefit from tailored guidance.^[extracted]

## Limitations

- The talk is from a research preview — features may change before public release.^[extracted]
- Only covers Python ecosystem tools (Ruff, MyPy, PyLint, Pyre) — applicability to other languages is not discussed.^[extracted]
- The three detection strategies (linters, tests, LLM review) are described at a high level without implementation details.^[extracted]
- The talk transcript is incomplete — cuts off mid-sentence during the linter discussion.^[extracted]

## Related Pages

- [[entities/josh-albrecht|Josh Albrecht]] — Speaker and CTO of Imbue
- [[entities/imbue|Imbue]] — Company building AI software agents
- [[entities/sculptor|Sculptor]] — Imbue's experimental coding agent environment
- [[concepts/vibe-coding-gap|Vibe Coding Gap]] — The problem this talk addresses
- [[concepts/shift-left-ai-quality|Shift-Left AI Quality]] — Core philosophy
- [[concepts/ai-to-ai-verification|AI-to-AI Verification]] — Trust mechanism
- [[concepts/defect-based-quality|Defect-Based Quality]] — Quality definition
- [[concepts/plan-then-code-workflow|Plan-Then-Code Workflow]] — Prevention strategy
- [[concepts/spec-first-development|Spec-First Development]] — Prevention strategy
- [[concepts/immutable-functional-style|Immutable Functional Style]] — Prevention strategy
- [[concepts/style-guide-enforcement|Style Guide Enforcement]] — Prevention strategy
- [[concepts/linter-integration|Linter Integration]] — Detection strategy
- [[concepts/vibe-coding|Vibe Coding]] — The paradigm this talk critiques
- [[concepts/agent-driven-development|Agent-Driven Development]] — Related approach
