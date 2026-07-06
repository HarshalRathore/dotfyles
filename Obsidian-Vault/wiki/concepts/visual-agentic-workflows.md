---
title: "Visual Agentic Workflows"
category: concepts
tags: [ai, agent, visual-programming, pipeline, graph, workflow, automation]
relationships:
  - target: "[[concepts/agent-loop]]"
    type: extends
  - target: "[[concepts/canvas-ai-interface]]"
    type: uses
sources:
  - "https://www.youtube.com/watch?v=1c2tdpkj6aq"
summary: "Designing multi-step AI agent workflows as visual graphs on a canvas — each node is an LLM-driven block that accepts inputs, executes a prompt, and pipes outputs to downstream nodes."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Visual Agentic Workflows

A paradigm for designing multi-step AI agent pipelines as visual graphs. Each node in the graph is a self-contained LLM-driven block with its own prompt (a "script") describing how to consume its inputs and produce outputs. Nodes are connected by pipes — data flows from one node's output to the next node's input. The graph executes not as traditional code but as a sequence of language model invocations.

## Origin

The pattern was demonstrated by [[entities/tldraw|tldraw]]'s **tldraw.computer** feature, built on an infinite canvas. Each block contains a short prompt — e.g., "analyze inputs looking for guidance on the product, services, style, or other requirements for the commercial; based on the inputs, write the text for a short commercial script; output the result." The LLM executes the prompt, and the output is structured to be acceptable as input by the next block. ^[extracted]

## Key Capabilities

- **Multi-modal pipelines** — nodes can produce text, images, speech, or structured data; downstream nodes consume whatever upstream nodes produce ^[extracted]
- **Cycles and loops** — graphs can include feedback loops that run indefinitely, with the output feeding back as input (e.g., a song generator that creates, checks, and re-generates without repeating) ^[extracted]
- **Non-linear computation** — because execution happens through LLMs rather than code, nodes can reason about ambiguous, unstructured, or multi-modal inputs that traditional programs cannot handle ^[extracted]
- **Parallel execution** — multiple branches of a graph can execute concurrently, each processing different aspects of a task ^[inferred]
- **Async/long-lived processes** — the graph model is well-suited for designing asynchronous processes: process a CSV of email addresses, email each one, collect responses, do sentiment analysis, conditionally trigger next steps, wait for human approval ^[extracted]

## Architecture

Each node in a visual agentic workflow typically has: ^[inferred]

| Component | Description |
|---|---|
| **Input ports** | Accept outputs from upstream nodes or user-provided data |
| **Script/prompt** | Short LLM instruction defining how to process inputs and what to produce |
| **Execution engine** | A language model (not traditional code) that performs the reasoning |
| **Output ports** | Structured data consumable by downstream nodes |
| **Configuration** | Model selection, temperature, output format constraints |

## Relationship to Agent Loop

Visual agentic workflows extend the [[concepts/agent-loop|agent loop]] pattern by making the pipeline structure explicit and visual. Where an agent loop is a sequential cycle (read → reason → act → evaluate → repeat), a visual workflow lets the user design branching tree or directed acyclic graph structures, with each node representing a focused agent step. Feedback loops allow cycles (the graph analogue of iterative agent loops). ^[inferred]

## Advantages Over Code-Based Pipelines

- Accessible to non-programmers — designing a pipeline is a matter of drawing nodes and connections on a canvas ^[inferred]
- Each node's behavior is defined by a focused natural language prompt, not code ^[inferred]
- The visual graph communicates the overall pipeline structure at a glance ^[inferred]
- Supports organic exploration — users can rewire connections, add nodes, or fork branches during execution ^[inferred]

## Related

- [[concepts/llm-as-computation-engine]] — LLM reasoning as the execution layer
- [[concepts/enterprise-ai-app-factory]] — Enterprise pattern for composing AI pipelines
- [[concepts/human-in-the-loop-regulated-ai]] — Human approval gates in agentic workflows

## Sources

- [[references/tldraw-computer-steve-ruiz-ai-eng-2025|tldraw.computer — Steve Ruiz, tldraw (AI Engineer World's Fair 2025)]]
