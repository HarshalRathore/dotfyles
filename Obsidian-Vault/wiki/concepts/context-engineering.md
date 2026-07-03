---
title: "Context Engineering"
tags:
  - prompt-engineering
  - ai
  - agents
  - architecture
  - llm
  - quality
sources:
  - "AIEF2025 - 12-Factor Agents: Patterns of Reliable LLM applications — Dex Horthy, HumanLayer - https://www.youtube.com/watch?v=8kMaTybvDUw"
summary: "The thesis that every aspect of agent quality reduces to getting the right tokens into the model — prompt, memory, RAG, history structure, and error traces are all context engineering."
provenance:
  extracted: 0.70
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Context Engineering

The thesis that LLMs are pure functions — token in, tokens out — and therefore everything that determines agent output quality is a matter of context engineering: how you select, structure, and optimize the tokens you feed into the model. ^[extracted]

## Origin

This framing was articulated by [[entities/dex-horthy|Dex Horthy]] ([[entities/humanlayer|HumanLayer]]) in the [[concepts/12-factor-agents|12-Factor Agents]] framework: ^[extracted]

> "LLMs are pure functions, token in, tokens out, and everything, everything in making agents good is context engineering. So you have your prompt, you have your memory, you have your RAG, you have your history structure, it's all just how do we get the right tokens into the model so it gives us a really good answer and solves the user's problem."

## What Context Engineering Encompasses

| Domain | Engineering Question |
|---|---|
| **Prompt** | What instructions does the model need? How are they phrased? What priority? |
| **Memory** | What past interactions are relevant? What can be summarized vs kept verbatim? |
| **RAG results** | Which retrieved documents are included? How are they ranked and formatted? |
| **History structure** | How is the conversation history organized? What's the event model? |
| **Error traces** | Which errors are surfaced? Summarized or raw? Cleared on success? |
| **Tool definitions** | How are tool schemas described? Which tools are included or excluded per step? |
| **State representation** | How is the agent's current state (current step, retry count, pending approvals) serialized into the context? |

All of these are "just how do we get the right tokens into the model" — there is no separate discipline for each. ^[inferred]

## Key Implications

### Optimize Token Density and Clarity

"Some of the traces that we use in some of the agents we build internally might look like this. But if you're not looking at every single token, and if you're not optimizing the density and the clarity of the way that you're passing information to an LLM, you might be missing out on upside on quality." ^[extracted]

### Don't Blindly Append

A concrete practice from the talk: when a tool call succeeds after previous failures, clear all pending errors. "Don't just blindly put things on. If you have errors and then you get a valid tool call, clear all the pending errors out. Summarize them. Don't put the whole stack trace on your context. Figure out what you want to tell the model so you get better results." ^[extracted]

### Model Your Context However You Want

"You can model your event state, your thread model however you want and stringify it however you want." The standard OpenAI messages format is one option, but you can also put all context into a single user message or craft the system message however you like. What matters is the quality of the tokens, not compliance with a standard format. ^[extracted]

### Owning the Context Enables Advanced Patterns

When you own the context window (rather than a framework owning it), you can: ^[extracted]
- Serialize it to a database for pause/resume
- Branch and switch between different context constructions
- Summarize aggressively at transition points
- Inject exactly the right error context

These are not possible when the framework constructs the context for you. ^[inferred]

## Related to Prompt Engineering

Context engineering is broader than [[concepts/domain-expert-prompt-engineering|prompt engineering]]. Prompt engineering focuses on the instructions given to the model. Context engineering encompasses everything in the input — instructions, data, history, state, tools, errors — and how they're structured and prioritized. Prompt engineering is a sub-discipline of context engineering. ^[inferred]

## Relationship to Other Concepts

- [[concepts/12-factor-agents]] — The framework where context engineering is the foundational insight
- [[concepts/agent-loop]] — The loop where context is continuously built and managed
- [[concepts/agent-reliability-challenge]] — Context engineering as a key lever for reliability
- [[concepts/domain-expert-prompt-engineering]] — Related but narrower (prompts are a subset of context)
- [[concepts/llm-as-computation-engine]] — Another framing of LLMs as a computational primitive
- [[entities/dex-horthy]] — Originator of the term in this context

## Sources

- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents: Patterns of Reliable LLM Applications — AI Engineer World's Fair 2025]]
