---
title: System 1 / System 2 Thinking
tags:
- cognitive-science
- decision-making
- kahneman
- problem-solving
- connections
- ai-reasoning
aliases:
- System 1
- System 2
- System One
- System Two
- Fast and Slow Thinking
sources:
- 'https://www.youtube.com/watch?v=p_uhfgh4j9y'
summary: 'Kahneman''s dual-process theory: System 1 (fast, intuitive) and System 2 (slow, deliberate). Applied to Connections solving and AI reasoning.'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/connections-game]]'
  type: applied_to
- target: '[[concepts/abstract-reasoning]]'
  type: analogous_to
- target: '[[concepts/reasoning-models]]'
  type: related_to
category: concepts
---

# System 1 / System 2 Thinking

Dual-process theory, introduced in the 1990s, describes two modes of human thinking: ^[extracted]

## System 1 — Fast, Intuitive Thinking

System 1 operates automatically and quickly: ^[extracted]

- Makes intuitive judgments without conscious effort
- Recognizes obvious patterns and relationships
- Produces immediate, automatic responses
- Low cognitive load

In [[concepts/connections-game|Connections]], System 1 identifies the yellow category — the most obvious connections that jump out immediately. When you see two words that are obviously in the same category, your brain makes that judgment automatically. ^[extracted]

## System 2 — Slow, Deliberate Thinking

System 2 is effortful, slow, and analytical: ^[extracted]

- Requires conscious attention and cognitive effort
- Performs deep reasoning and analysis
- Handles complex, ambiguous problems
- High cognitive load

In Connections, System 2 engages when you're struggling with ambiguous words — when you think "I don't know if this belongs to one group or another" and must use your knowledge base to reason through the options. ^[extracted]

## System Failures

Both systems can fail: ^[extracted]

- **System 1 failures** — Something seems obvious but belongs elsewhere. You trust your intuition but are wrong because the connection is a decoy.
- **System 2 failures** — You overthink a simple connection. You reason too deeply about something that was actually obvious, leading you away from the correct answer.

These failure modes are particularly relevant in Connections due to the purple category's decoy design. ^[inferred]

## Application to AI Reasoning

Quoraishee draws a parallel between human dual-process thinking and AI reasoning: ^[extracted]

| Human Thinking | AI Equivalent |
|---------------|---------------|
| System 1 (fast intuition) | Pattern matching, superficial similarity |
| System 2 (slow reasoning) | Abstract reasoning, deliberate category formation |

LLMs that only perform pattern matching (System 1 equivalent) fail on Connections puzzles with decoys. Models that can engage in deeper reasoning (System 2 equivalent) perform better on the purple category. ^[inferred]

This framing helps explain why Connections has never been solved at 100% by any LLM — most models default to pattern matching and struggle with the deliberate reasoning required. ^[inferred]

## Relevance to LLM Evaluation

The System 1/System 2 framework provides a lens for understanding LLM capabilities: ^[inferred]

- **Few-shot prompting** activates a System 1-like mode — fast pattern completion
- **Chain-of-thought reasoning** activates a System 2-like mode — slow, step-by-step analysis
- **Reasoning models** (e.g., O3, O4) are designed to spend more "thinking time" — effectively a System 2 mode

Connections serves as a natural testbed for distinguishing these modes because the decoy design specifically penalizes System 1-style pattern matching. ^[inferred]

## Related Pages

- [[concepts/connections-game|Connections Game]] — Where this framework is applied
- [[concepts/abstract-reasoning|Abstract Reasoning]] — The System 2 capability
- [[concepts/reasoning-models|Reasoning Models]] — AI models designed for System 2-like behavior
- [[concepts/semantic-similarity|Semantic Similarity]] — The System 1 mechanism
