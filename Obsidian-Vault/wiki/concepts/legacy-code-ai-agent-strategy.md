---
title: "Legacy Code AI Agent Strategy"
tags:
  - concept
  - agents
  - legacy-code
  - engineering
  - methodology
sources:
  - "[[sources/watchv=6nir_cypglk]]"
summary: "A three-step methodology for using AI agents to work with unfamiliar legacy codebases: Understand (explore with chat), Write Tests (validate predicted behavior), Modernize (convert code with test verification)."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Legacy Code AI Agent Strategy

A structured methodology for using AI agents to understand, test, and modernize unfamiliar legacy codebases. Articulated by [[entities/forrest-brazeal|Forrest Brazeal]] and [[entities/matt-ball|Matt Ball]] at the AI Engineer World's Fair 2025, demonstrated on the Apollo 11 Guidance Computer assembly code. ^[extracted]

## The Three Steps

### 1. Understand

Use an AI agent's chat or Q&A mode to build a mental model of the legacy codebase. The agent indexes the entire codebase and can answer questions that would traditionally take hours of manual reading:

- "What does this codebase actually do?"
- "What does this specific module/file/function do?"
- "What are the style and convention patterns to be aware of?"
- "What does error code X mean?" (agent cross-references code with web context)

The Apollo 11 demo: asking "What does the 1202 program alarm do?" returned the octal value in the assembly source, the scheduler context (executive ran out of core sets), and the real-world cause (external radar left on — the computer offloaded low-priority tasks to protect mission-critical execution). ^[extracted]

### 2. Write Tests

Before modifying legacy code, validate understanding by having the agent write tests:

- Use **chat mode** to predict what the code should output given specific inputs
- Use **agent mode** to generate test files that verify that behavior
- Tests serve as a correctness anchor — the engineer doesn't need to fully understand the original code to know the conversion is correct if the tests pass ^[inferred]

The talk notes that agents are good at reasoning, iterating, and checking their own results, so tests provide a natural feedback loop. A key insight: if the agent is uncertain about something (e.g., "is priority level zero the highest or lowest?"), the test writer surfaces the ambiguity for human resolution. ^[extracted]

### 3. Modernize

With understanding validated by tests, convert small portions of legacy code:

- Convert the desired module to the target language or style
- Apply the same tests to verify correctness
- Work incrementally — don't rewrite the entire codebase at once

The Apollo 11 demo: converted the p65 landing guidance assembly routine (full automatic lunar landing mode) into a Python implementation that successfully landed a simulated lunar module with final velocity and position within expected tolerances. ^[extracted]

## Key Principles

- **Context is everything:** The quality of AI output depends heavily on the quality of context provided. Code context is not just text — it requires understanding imports, call graphs, cross-file relationships, and domain conventions. ^[extracted]
- **Test-first for legacy:** Tests are the bridge between understanding and modification. They let an engineer be confident a conversion preserved behavior even when the original language is unreadable to them. ^[inferred]
- **Human judgment remains essential:** Agents struggle with ambiguity. The engineer must review surfaced ambiguities and apply domain knowledge. The agent is a force multiplier, not a replacement. ^[extracted]

## Agent Operating Modes

The strategy can use two AI agent modes: ^[extracted]

- **Chat mode** — Turn-by-turn, good for exploration and prediction. The engineer maintains tight control.
- **Auto/agent mode** — The AI autonomously writes files, runs commands, iterates on errors, and completes multi-step tasks without per-step approval. The demo used: "run simulator.py until it succeeds, do not change simulator.py" — the agent handled dependency installation, codebase exploration, implementation, and execution.

## Related

- [[concepts/agent-loop|Agent Loop]] — The iterative evaluate-and-adapt pattern underlying agent auto-mode
- [[concepts/ralph-coding-technique|Ralph Coding Technique]] — Related recursive AI agent coding methodology
- [[entities/augment-code|Augment Code]] — The tool used in the demo, with its proprietary context engine
- [[references/to-the-moon-legacy-code-augment-agent]] — The talk that introduced this strategy

## Open Questions

- What is the failure rate of agent-generated tests for legacy code when the agent doesn't understand the domain?
- How does this strategy scale to multi-million-line enterprise codebases across multiple repositories?
- Can the strategy incorporate human-in-the-loop validation without losing the speed benefit of auto-mode?
