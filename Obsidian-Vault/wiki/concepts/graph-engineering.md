---
title: Graph Engineering
category: concepts
type: concept
tags: [graph-engineering, loop-engineering, orchestration, multi-agent, workflow]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-14-graph-engineering/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Organizing multiple agents, loops, tools, and evaluators into an explicit graph (nodes, edges, shared state, routing rules) so connections are designable, observable, and locally repairable."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
tier: supporting
---

# Graph Engineering

**Graph Engineering** is the practice of organizing multiple agents, loops, tools and evaluators into an explicit graph — nodes + edges + shared state + routing rules — making the connections, shared state and path choices of multiple work units designable, observable and locally repairable. ^[extracted] The intuitive version: **a graph is what a loop becomes when the task gets complex enough** — "the name came later; the practice was already there." ^[extracted]

The term's name went viral through a July 18, 2026 joke tweet by [[entities/peter-steinberger|Peter Steinberger]] ("Are we still talking loops or have we moved on to graphs yet?") and a parody by Hamel Husain — the joke made the idea trendy but did not create it; the genuine precursor is Josh Simmons' "We Are Entering the Graph Engineering Phase" (July 4, 2026), and the practice itself predates the name by years (LangGraph since Jan 2024; Anthropic's five agent patterns since Dec 2024). ^[extracted] Definition drawn from Lecture 14 of the Learn Harness Engineering course. ^[extracted]

## Key claims

- **Four stacked layers, not four eras** — prompt → context → loop → graph each control something different (instruction, information, runtime, system), and each later layer embeds the earlier ones inside its nodes rather than replacing them: every graph node carries its own prompt, context, tools, memory and loop. ^[extracted]
- **A graph has four parts** — nodes (work units: deterministic code, model call, tool, or a full agent), edges (handoffs: parallelism, conditionals, failure/retry, rollback), shared state (the common workspace all nodes read and write), and routing rules (where execution goes next). ^[extracted]
- **Graph ≠ workflow — a graph generalizes a workflow** — workflow nodes are deterministic functions with hardcoded edges; graph nodes can be full agents and edges can route dynamically. Using Anthropic's question (who decides the control flow?), a graph is the container that holds workflow nodes, agent nodes and human nodes; a workflow is the fully-deterministic special case of a graph. ^[extracted]
- **A single loop fails structurally at scale** — three failures that checkpoints cannot fix (the judge and the judged share one brain): Goodhart drift (numbers up, business worse), blindness upward (never asks "is this the right goal?"), and conflict between independent loops. Graphs answer the four design questions: which loops feed which, which loops own the targets others chase, which loops can veto or roll back, which measurements may move and which must stay frozen. ^[extracted]
- **Anchors pin loops to reality** — business outcomes, ground-truth datasets, human spot-checks; without anchors, a network of loops is "a resonance of mutual drift." ^[extracted]
- **The Orchestration Tax is the hard economics** — starting an agent is cheap, closing its loop is expensive; "you are the GIL of your AI agents," and human judgment is the one serial resource that adding nodes does not parallelize. ^[extracted]
- **Hype carries fabricated numbers** — the circulated "+18% accuracy, −85% cost" figures trace to a March 2026 paper on chemical piping diagrams with mismatched baselines and no use of the term; treat "graph engineering gives X% improvement" marketing with source-checking. ^[extracted]

## Relationship to loop engineering

Graph Engineering does not replace [[concepts/loop-engineering|Loop Engineering]] — it builds on top of it: **a loop is a node in a graph**, and the loop's three essentials (goal, verification, stop condition) become the node's internal structure. ^[extracted] A loop is a deferred decision — cheap, but its failure modes are invisible inside one agent's context; a graph is an up-front decision that buys readability, auditability and local repair. "A loop hides the problem inside the loop; a graph puts the problem on paper." ^[extracted] The transition happens when an agent needs specialization, parallelism, shared state, verification and recovery — the maker-checker loop of the previous lecture becomes a research→implement→verify→merge graph where the verify node runs in a completely fresh context (context isolation is the design, not a side effect). ^[extracted]

## Relationship to the harness

Per the Learn Harness Engineering course, the harness is the foundation; loops and graphs are built on it. ^[extracted] Graph engines (LangGraph, CrewAI, Microsoft Agent Framework, LlamaIndex Workflows, Google ADK, OpenAI Agents SDK, Mastra, Claude Agent SDK) are implementations of the same nodes/edges/shared-state/routing skeleton — "a graph engine doesn't solve design problems... switching engines just makes the same bad design prettier." ^[extracted] What survives in production is not topology but the harness capabilities of replayability, observability and recoverability (iii.dev's counterargument, endorsed by the lecture). ^[extracted]

## When it applies

Five criteria — try at least three before drawing a graph: the task decomposes into independent work units; there are branch or rollback paths worth declaring; intermediate state is worth saving; results can be verified explicitly; coordination benefits outweigh coordination costs. ^[extracted] "Complex" ≠ "many steps": a 20-step linear pipeline is a workflow or a script; the deciding factor is the existence of branches and rollbacks, not scale. ^[extracted]

## Sources

- Lecture 14, Learn Harness Engineering (Walking Labs): "From Single Loops to Graph Engineering" — https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-14-graph-engineering/ ^[extracted]

## Related

- [[references/harness-lecture-14-graph-engineering|Lecture 14: From Single Loops to Graph Engineering]] — the full deep-dive this page distills
- [[concepts/loop-engineering|Loop Engineering]] — the layer below; a loop is a node in a graph
- [[concepts/ai-harness|AI Agentic Harness]] — the foundation loops and graphs are built on
- [[concepts/agent-coordination|Agent Coordination]] — graphs make multi-agent coordination explicit
- [[concepts/agent-workflows|Agent Workflows]] — the deterministic special case graphs generalize
- [[concepts/graph-state-management|Graph State Management]] — shared state is one of the four graph parts
- [[concepts/repository-as-system-of-record|Repository as System of Record]] — the shared workspace where graph state lives ^[inferred]
- [[references/harness-lecture-13-loop-engineering|Lecture 13: From Manual Prompting to Autonomous Loops]] — the prerequisite lecture on the loop layer
