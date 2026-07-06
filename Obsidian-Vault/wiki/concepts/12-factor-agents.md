---
title: 12-Factor Agents
tags:
- agent
- patterns
- reliability
- architecture
- methodology
sources:
- 'https://www.youtube.com/watch?v=8kmatybvduw'
summary: Codified set of 12 patterns for building reliable LLM-based agents, grounded in software engineering principles rather than AI-specific abstractions. Created by Dex Horthy, HumanLayer.
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: concepts
---

# 12-Factor Agents

A codified set of patterns for building reliable LLM-based agents, analogous to the 12-Factor App methodology for cloud-native software. Created by [[entities/dex-horthy|Dex Horthy]] ([[entities/humanlayer|HumanLayer]]) based on patterns observed across 100+ conversations with builders and founders of production agent systems. ^[extracted]

## Core Thesis

The 12 factors are not a framework — they are a wish list and a set of feature requests for what good agent tooling should provide. The approach: agents are just software, LLMs are pure functions, and everything in making agents good is [[concepts/context-engineering|context engineering]]. ^[extracted]

## Key Factors (Covered in the Talk)

### Factor 2: Own Your Prompts

Libraries can generate "banger" prompts, but surpassing quality bars requires writing every single token by hand. "LLMs are pure functions. And the only thing that determines the reliability of your agent is how good of tokens can you get out." The input tokens are the only lever (other than retraining the model). ^[extracted]

### Factor 4: Tool Use Is JSON + Code

Demystifying tool use: the LLM outputs JSON; deterministic code takes that JSON and does something with it. There is nothing special about tools — they are structured output followed by a switch statement. The magical capability is the LLM's ability to turn natural language into structured JSON. ^[extracted]

### Factor 8: Own Your Control Flow

The naive agent loop (event → LLM → execute → append → repeat) breaks down with long contexts. Owning the loop means you can break, switch, summarize, run LLM-as-judge, parallelize, and serialize state to a database for pause/resume. Put your agent behind a REST API or MCP server with database-backed context management. ^[extracted]

### Stateless Reducers

Agents should be stateless — the state (current step, next step, retry counts, messages, approval data) should be managed externally, serialized to a database, and loaded back on resume. This enables pause/resume, long-running tools, and reliable async patterns. "Agents are just software. Let's build software." ^[extracted]

### Contacting Humans with Tools

Push the human-contact decision to the very first output token — a natural language choice (done, need clarification, need manager) rather than a structured routing call. This gives the model better sampling because the intent is expressed in natural language, the medium it understands best. ^[extracted]

### Micro-Agents in Deterministic DAGs

The production-proven architecture: mostly deterministic workflows with small agent loops (3-10 steps) embedded at decision points. HumanLayer's deploy bot runs deterministic CI/CD but uses an agent loop for deployment ordering, human approval, and rollback decisions. See [[concepts/micro-agents]] for the full pattern. ^[extracted]

### Multi-Channel Delivery

Meet users where they are: email, Slack, Discord, SMS. "People don't want to have seven tabs open of different ChatGPT style agents." ^[extracted]

### Error Recovery

On tool failure: put the error on the context window and retry. On successive success: clear all pending errors — don't let them accumulate. Summarize errors rather than dumping full stack traces. Own your context window so you control exactly what the model sees. ^[extracted]

### Scaffold Over Framework

Rather than wrapping agents in a framework that hides the hard AI parts, scaffold out the code (following the shad-cn model) so teams own and can modify every line. "I think the tools we get should take away the other hard parts, so that we can spend all our time focusing on the hard AI parts." ^[extracted]

## Evolution Pattern

Over time, as models improve, deterministic DAGs naturally evolve toward more agent-driven flows. The proportion of agent code grows as LLMs can handle bigger, more complex tasks — but the engineering patterns for reliability remain the same. ^[extracted]

## Relationship to Other Concepts

- [[concepts/micro-agents]] — The specific agent size pattern within the 12-factor framework
- [[concepts/context-engineering]] — The foundational thesis that everything in agent quality reduces to getting the right tokens into the model
- [[concepts/agent-loop]] — The loop that Factor 8 says you should own, not delegate
- [[concepts/agent-reliability-challenge]] — The problem the 12 factors address
- [[concepts/agent-design-patterns]] — Complementary pattern taxonomy (Anthropic's five patterns)
- [[concepts/human-in-the-loop-regulated-ai]] — Related HITL patterns for human contact
- Contrasts with framework-based approaches like [[entities/mastra-ai]] and [[entities/llamaindex]] — the 12-factor approach favors scaffold-and-own over framework-wrapping ^[inferred]

## Open Questions

- How does the 12-factor approach compose with emerging agent-to-agent protocols and MCP?
- Will scaffold-over-framework scale for teams that need to build hundreds of agents?
- How does the error recovery pattern interact with the agent reliability challenge (compound errors from multi-step tasks)?

## Sources

- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents: Patterns of Reliable LLM Applications — AI Engineer World's Fair 2025]]
