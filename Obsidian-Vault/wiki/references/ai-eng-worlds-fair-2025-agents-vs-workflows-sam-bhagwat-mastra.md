---
title: 'Agents vs Workflows: Why Not Both? — Sam Bhagwat, Mastra.ai'
tags:
- reference
- talk
- ai-engineer
- agents
- workflow
sources:
- 'https://www.youtube.com/watch?v=8sujeqqnclw'
summary: AI Engineer World's Fair 2025 talk by Sam Bhagwat (Mastra.ai) arguing for composing agents and workflows together, rather than treating them as opposing paradigms. Covers composition patterns, code...
provenance:
  extracted: 0.8
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# Agents vs Workflows: Why Not Both?

> **Talk:** Agents vs Workflows: Why Not Both?
> **Speaker:** [[entities/sam-bhagwat|Sam Bhagwat]]
> **Organization:** [[entities/mastra-ai|Mastra.ai]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=8SUJEqQNClw)

## Summary

A talk positioning the agents-vs-workflows dichotomy as a false choice, arguing production AI systems should compose both. Sam Bhagwat draws on his experience co-founding Gatsby and Mastra to advocate for readable workflow APIs, the power-vs-control trade-off, and a community-of-practice approach to AI engineering.

## Key Topics

### The Agents vs Workflows Debate

- [[entities/anthropic|Anthropic]] published "Building Effective Agents" (December 2024) codifying five agent design patterns: chaining, routing, parallelization, orchestrator workers, and evaluator-optimizer ^[extracted]
- [[entities/openai|OpenAI]] released a competing paper (April 2025) with an anti-workflow stance at the end, generating controversy on Twitter and an emergency blog post from Latent Space ^[extracted]
- Bhagwat argues both positions are wrong — agents and workflows are complementary primitives, not competing paradigms ^[extracted]

### Composition Patterns

The core technical contribution: a taxonomy of how agents and workflows compose:

1. **Agent as a step** — an agent can be a single step inside a larger workflow
2. **Workflow as a tool** — a complex multi-step workflow can be wrapped as a tool that an agent calls
3. **Agent supervisor model** — an orchestrator agent calls other agents as tools (research agent, summary agent, etc.)
4. **Workflows doing agent handoffs** — a workflow routes control between different agents
5. **Dynamic tool injection** — reduce agent failure with large tool sets by contextually injecting only the relevant tools for a given task ^[inferred]
6. **Nested workflows** — a workflow can be a step inside another workflow

As Bhagwat states: "The real alpha comes from using these patterns together in the right way." ^[extracted]

### Code Readability: Fluent vs Graph APIs

Bhagwat argues strongly against graph-based workflow APIs (nodes, edges, terminals):

- "You should not need to learn graph theory to write workflows" ^[extracted]
- Draws a parallel to Gatsby's GraphQL API — technically powerful but alienated users who just wanted a readable meta-framework ^[extracted]
- Advocates for "fluent syntax" where control flow is visible top-to-bottom, grokkable at a glance ^[extracted]
- Contrasts Mastra's readable sequential syntax against graph node-and-edge workflow frameworks ^[inferred]

### Power vs Control Trade-Off

- **Power** = agent-driven flexibility, autonomy, ability to handle novel situations
- **Control** = structured workflows, deterministic execution, reliability guarantees
- Start with power (agents), and anything that goes off the rails, add control (workflows) ^[extracted]
- Practical exercise: ask teams to whiteboard their architecture, identify unreliable parts, and add structure there ^[extracted]

### Non-Determinism in AI Engineering

- Non-determinism is "core to what we're doing" in AI engineering ^[extracted]
- Tracing and observability are 10x more important in AI engineering than in traditional software ^[extracted]
- This is why workflow frameworks are more popular in AI than traditional software — the tracing and replay capabilities justify the abstraction ^[inferred]

### Community of Practice vs Community of Theory

- Bhagwat: "We are a community of practice more than we are a community of theory" ^[extracted]
- "If your agent is working according to what you would need, do it. If it's not theoretically correct, that probably means the theory is wrong, not the practice." ^[extracted]
- "This is a young field, and the practice is evolving faster than the theory." ^[extracted]
- Responding to a question about tool limits (do agents fail with 20+ tools?) — conventional wisdom says yes, but if yours works, the conventional wisdom may be wrong for your use case ^[inferred]

### Historical Parallel: Web Dev's "That Guy"

- Draws a parallel to the last decade of web development where "certain Googlers" lectured on the "right way" to use the platform ^[extracted]
- Model providers (Anthropic, OpenAI) now hold a similar elevated position — their pronouncements carry disproportionate weight ^[extracted]
- Hopes for "good quality discourse this time around," warning against repeating the anti-React, dogmatic technology evangelism of the 2010s ^[extracted]

## Key Takeaways

1. Agents and workflows compose — don't treat them as opposing paradigms
2. Composition patterns: agent-as-step, workflow-as-tool, agent supervisor, dynamic tool injection, nested workflows
3. Readable code (fluent syntax) beats graph theory APIs for team-scale workflow development
4. Start with agent power, add workflow control where reliability breaks
5. AI engineering is a community of practice — trust working solutions over theoretical purity
6. Tracing is 10x more important in AI than traditional software due to non-determinism

## Pages Created from This Source

- [[entities/sam-bhagwat|Sam Bhagwat]]
- [[entities/mastra-ai|Mastra.ai]]
- [[concepts/agent-design-patterns|Agent Design Patterns]] — Updated with composition patterns section

## Sources

- [YouTube: Agents vs Workflows: Why Not Both?](https://www.youtube.com/watch?v=8SUJEqQNClw)
