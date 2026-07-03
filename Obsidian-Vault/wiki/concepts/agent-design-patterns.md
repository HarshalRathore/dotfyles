---
title: "Agent Design Patterns"
tags:
  - agent
  - ai
  - architecture
  - design-pattern
  - anthropic
  - llamaindex
  - micro-agents
  - "AI Engineer World's Fair 2025 - Effective agent design patterns in production — Laurie Voss, LlamaIndex - https://www.youtube.com/watch?v=72XxWkd8Jrk"
  - "AIEF2025 - 12-Factor Agents: Patterns of Reliable LLM applications — Dex Horthy, HumanLayer - https://www.youtube.com/watch?v=8kMaTybvDUw"
  - "AIEF2025 - Ship Agents that Ship: A Hands-On Workshop - Kyle Penfound, Jeremy Adams, Dagger - https://www.youtube.com/watch?v=Fzb1a24hF-o"
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Agent Design Patterns

The five agent design patterns, first codified by [[entities/anthropic|Anthropic]] in December 2024 and presented by [[entities/laurie-voss|Laurie Voss]] at AI Engineer World's Fair 2025, form a taxonomy of composable building blocks for production agent systems. [[entities/llamaindex|LlamaIndex]] implements all five natively through its Workflows event-driven abstraction.

## The Five Patterns

### 1. Chaining

The simplest pattern: use an LLM to produce output, pass that output as input to another LLM, and so on. Trivial to build with event-driven frameworks.

*Use case:* Multi-stage processing pipelines where each stage depends on the previous one (e.g., extract → classify → format).

### 2. Routing

Create several LLM-based tools or paths that solve different sub-problems, and give the LLM decision-making power to choose which path to follow at runtime.

*Use case:* Customer support triage where different intent categories route to different specialized handlers.

### 3. Parallelization

Two distinct flavors, both running multiple LLM calls concurrently:

- **Sectioning** — Same input, different processing tracks. Canonical example: one track processes the user's request while another runs guardrails to check for policy violations. The guardrail can cut off the processing track's output if it detects issues.
- **Voting** — Same query to multiple LLM instances (same or different models). Aggregate via majority or unanimous vote to reduce hallucination. LLMs hallucinate in different ways, so they seldom hallucinate to the same answer. ^[inferred]

See [[concepts/multi-model-voting]] for the voting specialization.

*Use case:* Sectioning — safety guardrails in parallel with task execution. Voting — high-accuracy extraction where errors are costly.

### 4. Orchestrator Workers

An LLM (orchestrator) decomposes a complex task into simpler sub-questions, dispatches them in parallel to worker LLMs, then aggregates the results into a single coherent answer. This is how deep research systems work.

*Use case:* Complex multi-part questions, research synthesis, document analysis across multiple sources. See [[concepts/orchestrator-worker-pattern]] for details.

### 5. Evaluator-Optimizer (Self-Reflection)

The LLM evaluates its own output against the original goal, generates specific feedback, and sends itself back to improve. Implemented as a loop: generate → evaluate → feedback → regenerate.

*Use case:* Code generation with self-review, writing with iterative refinement, extraction pipelines with quality gates. See [[concepts/self-reflection-evaluator]] for details.

## Composability

The patterns are not mutually exclusive. Complex agent systems combine them:
- An orchestrator-worker system can route sub-tasks to chained pipelines
- A voting parallelization can feed into an evaluator-optimizer loop
- Guardrails (sectioning) can wrap any of the other patterns

## Implementation in LlamaIndex

[[entities/llamaindex|LlamaIndex]] implements these patterns via Workflows — an event-driven Python abstraction where functions are annotated with type hints defining event flow between steps. A built-in visualizer renders the workflow graph for debugging.

## Agent-Workflow Composition

[[entities/sam-bhagwat|Sam Bhagwat]] at AI Engineer World's Fair 2025 argued that agents and workflows are complementary primitives, not competing paradigms, and introduced a taxonomy of how they compose: ^[extracted]

1. **Agent as a step** — a full agent loop can be a single step inside a larger workflow
2. **Workflow as a tool** — a complex multi-step workflow can be wrapped as a tool an agent calls
3. **Agent supervisor model** — an orchestrator agent calls specialized sub-agents as tools (research, summary, etc.)
4. **Workflows doing agent handoffs** — a workflow routes control between different agents at different stages
5. **Dynamic tool injection** — reduce agent failure with large tool inventories by injecting only contextually relevant tools per task ^[inferred]
6. **Nested workflows** — a workflow can itself be a step inside another workflow

Bhagwat emphasizes the "real alpha comes from using these patterns together in the right way" and advocates for readable fluent-syntax workflow APIs over graph-theory-based node-and-edge frameworks. ^[extracted]

See [[references/ai-eng-worlds-fair-2025-agents-vs-workflows-sam-bhagwat-mastra]] for the full talk.

## Power vs Control

A recurring theme in production agent design: **power** (agent autonomy, flexibility) vs **control** (structured workflows, deterministic execution). The recommended approach is to start with agent power and add workflow control where reliability breaks — not to choose one paradigm upfront. ^[extracted]

## Micro-Agents as a Sizing Pattern

[[concepts/micro-agents|Micro-agents]] (from [[entities/dex-horthy|Dex Horthy]]'s [[concepts/12-factor-agents|12-Factor Agents]]) add a sizing and composition dimension to the five patterns: rather than a single large agent, use small agent loops (3-10 steps) embedded within deterministic DAGs, each handling one of the five patterns at bounded scope. ^[extracted] This is a composition pattern — any of the five primitives (chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer) can be implemented as a micro-agent within a larger workflow. ^[inferred]

See [[concepts/micro-agents]] for the full pattern.

## Tool Use Demystification

[[entities/dex-horthy|Dex Horthy]] argues that tools are just JSON + code (Factor 4 of [[concepts/12-factor-agents]]): the LLM outputs JSON, deterministic code takes that JSON and does something with it. There is nothing special about tools — the magical capability is the LLM's ability to turn natural language into structured JSON. This demystification matters for design patterns because it clarifies that tools are not a separate architectural layer — they are the output format of one step and the input to the next step (switch statement, function call, or API request). ^[extracted]

## Pattern Extension: Tool-Scoped Container Environments (Dagger)

A complementary dimension to the power-vs-control tradeoff, demonstrated by [[entities/kyle-penfound|Kyle Penfound]] and [[entities/jeremy-adams|Jeremy Adams]] ([[entities/dagger|Dagger]]) at AIEF2025: rather than giving an agent free access to all possible tools, construct a **scoped environment** — a container-sandboxed workspace with exactly the tools needed for the task — and hand the agent the environment as its sole interface. ^[extracted]

This introduces a new axis of design decisions alongside the five patterns:

- **Tool scope determination** — the single most important reliability lever. Too many tools cause agent confusion and failure; too few prevent task completion. The recommended approach is iterative: start minimal, observe agent failures, add tools only where the agent consistently fails due to missing capabilities. ^[extracted]
- **Container isolation** — all agent execution happens in containers, never on the host filesystem. Multiple agents can run in parallel without state conflicts, and failed runs leave no trace. ^[extracted]
- **Auto-generated tool descriptions** — function signatures (parameter names, types, doc strings) are automatically transformed into tool descriptions for the LLM, eliminating manual JSON tool specification. Tool descriptions stay in sync with code. ^[extracted]
- **Cross-language tool composition** — tools can be written in different languages and composed through Dagger's cross-language interop. A Python agent can use tools written in Go or TypeScript. ^[extracted]
- **Deterministic validation outside the loop** — after the agent selects from scoped tools and produces output, deterministic code independently validates the result (e.g., running tests) as a final quality gate. ^[extracted]

This pattern is distinct from the existing design patterns because it operates at the **environment composition** level rather than the **agent reasoning** level: it's about how tools are scoped and presented to the agent, not how the agent chooses among them. ^[inferred] The five patterns describe what the agent does inside its environment; the tool-scoping pattern describes how that environment is constructed. ^[inferred]


## Related

- [[concepts/agentic-architecture]] — Platform-level architecture that uses these patterns
- [[concepts/agent-loop]] — The iterative self-improvement pattern that evaluator-optimizer extends
- [[concepts/orchestrator-worker-pattern]] — Deep decomposition pattern
- [[concepts/self-reflection-evaluator]] — Self-evaluation loop pattern
- [[concepts/multi-model-voting]] — Voting as hallucination reduction
- [[references/ai-eng-worlds-fair-2025-agents-vs-workflows-sam-bhagwat-mastra]] — Composition patterns for agents and workflows
- [[entities/sam-bhagwat]] — Speaker on agent-workflow composition
- [[entities/mastra-ai]] — Workflow framework implementing these patterns
- [[concepts/micro-agents]] — Sizing pattern for the five agent primitives
- [[concepts/12-factor-agents]] — Framework including tool-use demystification (Factor 4) and micro-agents
- [[entities/dex-horthy]] — Originator of the tool-use demystification and micro-agents patterns
- [[entities/dagger]] — Platform implementing tool-scoped container environments
- [[concepts/dagger-agent-platform]] — Full pattern for scoped agent environments

## Sources

- [[references/agent-design-patterns-production-laurie-voss-llamaindex]] — Talk at AI Engineer World's Fair 2025
- [[references/ai-eng-worlds-fair-2025-agents-vs-workflows-sam-bhagwat-mastra]] — Talk at AI Engineer World's Fair 2025
- [[references/12-factor-agents-patterns-dex-horthy-humanlayer|12-Factor Agents: Patterns of Reliable LLM Applications — AI Engineer World's Fair 2025]]
- [[entities/anthropic]] — Originator of the five patterns
- [[references/aief2025-ship-agents-that-ship]] — Dagger agents workshop, AI Engineer World's Fair 2025

