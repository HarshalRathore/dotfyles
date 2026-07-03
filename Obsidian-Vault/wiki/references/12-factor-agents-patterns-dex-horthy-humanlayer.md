---
title: "12-Factor Agents: Patterns of Reliable LLM Applications — Dex Horthy, HumanLayer"
tags:
  - reference
  - talk
  - ai-engineer
  - agents
  - reliability
  - patterns
sources:
  - "AIEF2025 - 12-Factor Agents: Patterns of Reliable LLM applications — Dex Horthy, HumanLayer - https://www.youtube.com/watch?v=8kMaTybvDUw"
summary: "AI Engineer World's Fair 2025 talk codifying 12 factors for building reliable LLM-based agents, grounded in software engineering principles rather than AI-specific abstractions."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# 12-Factor Agents: Patterns of Reliable LLM Applications

> **Talk:** 12-Factor Agents: Patterns of Reliable LLM Applications
> **Speaker:** [[entities/dex-horthy|Dex Horthy]]
> **Organization:** [[entities/humanlayer|HumanLayer]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=8kMaTybvDUw)

## Summary

A first-principles reframing of agent development as software engineering. Drawing from 100+ conversations with founders and builders, Dex Horthy identifies 12 factors that make production LLM applications reliable — none of which require an AI background. The core thesis: agents are software, LLMs are pure functions, and everything in making agents good is context engineering. Rather than a new framework, the 12 factors are a wish list and feature request for what good tooling should provide. ^[extracted]

## Key Topics

### The 70-80% Trap

Building agents with libraries gets you to 70-80% quality quickly — enough to excite leadership and grow the team — but getting past that bar requires going "seven layers deep in a call stack trying to reverse engineer how this prompt gets built." This leads builders to either throw everything away and start from scratch, or discover the problem wasn't well-suited for agents in the first place. ^[extracted]

Dex's experience with a DevOps agent demonstrated this: after hours of iterating on a prompt to specify exact build steps, the result was functionally equivalent to a 90-second bash script. Not every problem needs an agent. ^[extracted]

### Micro-Agents in Deterministic DAGs

The pattern that works in production: mostly deterministic workflows with very small agent loops (3-10 steps) sprinkled in at decision points. HumanLayer's deploy bot exemplifies this — the CI/CD pipeline is deterministic code, but at the point where a PR merges, a small agent loop decides deployment order, gets human approval, deploys, and hands back to deterministic code for end-to-end testing. ^[extracted]

Key properties:
- 100 tools, 20 steps — manageable context, clear responsibilities
- Agent only handles the naturally ambiguous decision points
- Everything else is deterministic code
- Context window stays small and focused

### LLMs Are Pure Functions

The foundational insight: "LLMs are pure functions, token in, tokens out, and everything, everything in making agents good is context engineering." The prompt, memory, RAG, history structure — it's all just getting the right tokens into the model so it gives a good answer. ^[extracted]

This leads to:
- **Own your prompts** (Factor 2) — The best results come from writing every single token by hand. Libraries generate good prompts, but surpassing quality bars means hand-crafting every token. ^[extracted]
- **Own your context window** — How you build the context matters. You can model event state and thread state however you want. Optimize token density and clarity rather than accepting framework defaults. ^[extracted]
- **Try everything** — "I don't know what's better, but I know the more things you can try and the more knobs you can test and the more things you can evaluate, the more likely you are to find something really, really good." ^[extracted]

### Own Your Control Flow (Factor 8)

The naive agent loop (event → LLM picks step → execute → append to context → repeat) doesn't work well, especially with longer contexts. Instead, build a loop you control: ^[extracted]

- **Break and switch** — your loop can do anything: conditionally branch, call subroutines, parallelize
- **Summarize** — don't blindly append everything to the context window
- **LLM-as-judge** — use the LLM to evaluate intermediate outputs
- **Pause and resume** — serialize the context window to a database, let long-running tools call back with the state ID, then load and resume. The agent doesn't even know things happened in the background. ^[extracted]

This enables agents behind REST APIs or MCP servers, with normal request/response patterns and database-backed state management. "Agents are just software. So let's build software." ^[extracted]

### Tool Use Is JSON + Code (Factor 4)

Demystifying tools: "there's nothing special about tools. It's just JSON and code." The LLM outputs JSON; deterministic code takes that JSON and does something with it. The "magic" is in the LLM's ability to turn a sentence into structured JSON — the rest is software engineering. ^[extracted]

### Contacting Humans with Tools

A subtle but critical pattern: push the human-contact decision (is the agent done? does it need clarification? does it need a manager?) to the very first output token. By making the intent a natural language token rather than a structured tool call, the model gets better sampling because it can express itself in natural language. This enables outer-loop agents that collaborate with humans without complex routing logic. ^[extracted]

### Error Recovery Pattern

When a tool call fails:
1. Take the error and the failed tool call
2. Put both on the context window
3. Let the LLM retry
4. When a valid tool call succeeds, clear all pending errors — don't leave stack traces accumulating

"Don't just blindly put things on. If you have errors and then you get a valid tool call, clear all the pending errors out. Summarize them. Don't put the whole stack trace on your context." ^[extracted]

### Multi-Channel Agents

"People don't want to have seven tabs open of different ChatGPT style agents. Just let people email with the agents you're building. Let them slack with the agents you're building." Meet users where they are (email, Slack, Discord, SMS). ^[extracted]

### Scaffold, Don't Framework

Dex's take on the framework debate: "I think a lot of frameworks try to take away the hard AI parts of the problem, so that you can just kind of drop it in and go, and I think it should be the opposite. I think the tools that we get should take away the other hard parts, so that we can spend all our time focusing on the hard AI parts, on getting the prompts right, on getting the flow right, on getting the tokens right." ^[extracted]

The proposed solution (create-12-factor-agent) follows the [[entities/shad-cn|shad-cn]] model: scaffold it out, then you own the code. Not a framework wrapper, but generated code you can modify. ^[extracted]

### Bleeding Edge Reliability

Citing [[entities/notion|Notion LLM]]'s approach: find something that is right at the boundary of what the model can do reliably — what it can't get right all the time — and figure out how to get it right reliably anyway through engineering. That's where you create something magical that's better than what everyone else is building. ^[extracted]

## The 12 Factors (Overview)

The talk covers factors in a reordered presentation. The full 12 factors are available in the open-source GitHub repository that accompanied the talk:
1. (Factors covered in depth above: owning prompts, owning control flow, tool use as JSON/code, micro-agents, stateless reducers, human contact patterns, multi-channel, scaffold over framework)
2. See the [12-Factor Agents GitHub repo](https://github.com/humanlayer/12-factor-agents) for the complete list

## Key Takeaways

1. Agents are just software — apply software engineering principles
2. LLMs are pure functions — quality comes from context engineering
3. Own your control flow, prompts, and state — don't delegate to frameworks
4. Use micro-agents (3-10 steps) within deterministic DAGs
5. Tool use is just JSON and code, demystified
6. Contacting humans with tools is a design decision, push it to the first output token
7. Scaffold-and-own beats framework-wrapping for production quality
8. Find the bleeding edge of model capability and engineer reliability around it

## Pages Created from This Source

- [[entities/dex-horthy|Dex Horthy]]
- [[entities/humanlayer|HumanLayer]]
- [[concepts/12-factor-agents|12-Factor Agents]]
- [[concepts/micro-agents|Micro-Agents]]
- [[concepts/context-engineering|Context Engineering]]

## Pages Updated from This Source

- [[concepts/agent-loop|Agent Loop]] — State management, error recovery, control flow ownership
- [[concepts/agent-reliability-challenge|Agent Reliability Challenge]] — 70-80% quality bar, micro-agents as approach
- [[concepts/human-in-the-loop-regulated-ai|Human-in-the-Loop in Regulated AI]] — Contacting humans with tools pattern
- [[concepts/agent-design-patterns|Agent Design Patterns]] — Micro-agents reference, tool use demystification

## Sources

- [YouTube: 12-Factor Agents — Dex Horthy, HumanLayer](https://www.youtube.com/watch?v=8kMaTybvDUw)
- [12-Factor Agents GitHub Repository](https://github.com/humanlayer/12-factor-agents)
