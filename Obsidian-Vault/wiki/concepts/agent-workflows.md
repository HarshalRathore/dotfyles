---
title: "Agent Workflows"
category: concepts
tags:
  - agent-workflows
  - agents
  - orchestration
  - workflow-engine
  - ai-agents
  - automation
aliases:
  - agentic workflows
  - agent orchestration
sources:
  - "AIEF2025 - Building Agents (the hard parts!) - Rita Kozlov, Cloudflare - https://www.youtube.com/watch?v=j_TKDweOsYE"
  - "AIEF2025 - 3 ingredients for building reliable enterprise agents - Harrison Chase, LangChain/LangGraph - https://www.youtube.com/watch?v=kTnfJszFxCg"
  - "AIEF2025 - Vibe Coding with Confidence — Itamar Friedman, Qodo - https://www.youtube.com/watch?v=n991Yxo1aOI"
  - "AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo"
  - "Graph Engineering: build 1000+ agent loops in one window from one prompt — X post and captured Google Hands-on AI Multi-Agent Lab, 2026-08-02"
  - "https://www.deeplearning.ai/courses/agentic-ai"
  - "https://nitter.tiekoetter.com/i/article/2080296261576687751"
summary: "Workflow orchestration layer in agent architecture that tracks execution state, manages action sequencing, and bridges the gap between AI reasoning and tool execution. Core to agentic automation."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.72
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-04
updated: 2026-08-02T13:04:14Z
relationships:
  - target: "[[concepts/agent-architecture]]"
    type: related_to
  - target: "[[concepts/orchestrating-vs-executing]]"
    type: related_to
  - target: "[[concepts/open-loop-planning]]"
    type: related_to
  - target: "[[concepts/eval-human-in-the-loop]]"
    type: related_to
  - target: "[[concepts/workflow-agent-spectrum]]"
    type: related_to
  - target: "[[concepts/agentic-workflow-vs-workflow-agent|Agentic Workflow vs Workflow Agent]]"
    type: related_to
  - target: "[[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]]"
    type: related_to
  - target: "[[references/google-hands-on-ai-multi-agent-lab|Google Hands-on AI Multi-Agent Lab]]"
    type: related_to
---

# Agent Workflows

**Agent workflows** are the orchestration layer that bridges AI reasoning and tool execution. They track what actions have been executed, what actions remain to take place, and manage the sequencing of operations across tools and services.

## Role in Agent Architecture

In Rita Kozlov's four-component agent framework, workflows sit between the AI reasoning layer and the tools layer:

- The **AI** decides what to do next (executive branch)
- The **workflows** carry out those decisions, maintaining execution state
- The **tools** perform the actual actions (APIs, browsers, databases)

## Agentic Workflows

Rita characterizes agentic workflows as the next phase beyond augmentation — systems that don't just help humans but execute end-to-end tasks autonomously. Examples:

> "I have a campaign I want to run. Grab me a full list of the customers that I talked to this week at the conference. Then draft me up the email. Then, I do want to review it before it goes to a customer, so do send it to me for approval. And then ping me when the customer responds."

This kind of workflow involves:
1. Data retrieval (customer list from conference interactions)
2. Content generation (draft email)
3. Human-in-the-loop approval (review step)
4. Action execution (send email)
5. Monitoring (ping on response)

## Workflow Design Patterns

- **Sequential** — Actions executed in a fixed order
- **Conditional** — Branching based on intermediate results
- **Human-in-the-loop** — Pause for human approval at decision points
- **Multi-step** — Complex chains with state tracking across steps
- **Reactive** — Triggered by external events (customer response, API webhook)

## The Workflow-Agent Spectrum

[[entities/harrison-chase|Harrison Chase]] reframes the common "workflows versus agents" debate as "workflows **and** agents." The reality is a spectrum: some parts of an agentic system loop and call tools, while other parts follow deterministic sequences (A → B → C). The right position depends on the application. ^[extracted]

In enterprise contexts, this matters because:
- Pure prompting might get 90% accuracy on a sequence; deterministic code gets 100%
- Enterprises need predictability and control over execution order
- [[entities/langgraph|LangGraph]] is explicitly designed to operate anywhere on this spectrum

This spectrum is a key lever for the [[concepts/enterprise-agent-adoption-equation|enterprise agent adoption equation]] — more deterministic steps increase the probability of success. ^[inferred]

## Gen 3.0: Workflows + CLI

Friedman (Qodo) positioned Gen 3.0 AI developer tools as the convergence of [[concepts/agent-workflows|agent workflows]] and the CLI as the primary interface. In this model, workflows are not confined to IDE plugins — they span the entire SDLC through CLI-based command execution, enabling agents to operate end-to-end across planning, coding, testing, and review. ^[extracted]

## The Holistic Solution Pattern

Friedman drew an analogy to Wiz's approach to cloud security: rather than building separate security applications for each need, Wiz built one holistic solution. The same pattern applies to AI-assisted software development — the breakthrough will come from a unified solution spanning the entire SDLC, not point tools for individual phases. ^[extracted]

## The V-Shape of Executability

Friedman introduced a V-shape model of the SDLC where the y-axis represents "executability" and the x-axis represents time. Planning is at the top (not executable), code writing moves down (executable but not application code), testing is at the bottom (fully executable), and review moves back up. The game-changing opportunity is "squeezing the V" — shifting review and testing left so they happen as code is written, not after. ^[extracted]


## Workflow Agent vs Agentic Workflow

[[entities/yogendra-miraje|Yogendra Miraje]] (FactSet) at AIEF2025 drew a critical distinction between two classes of systems:

- **Workflow agent** — A predefined, static workflow run by an agent. The workflow is in control; the sequence of steps is fixed.
- **Agentic workflow** — A workflow that is planned and run by an agent. The agent is in control; the workflow is dynamic.

On the agentic spectrum, agentic workflows have more "agenticness" than workflow agents. This distinction is important for enterprises because agentic workflows provide a way to automate complex workflows at scale while leveraging existing microservice investments. ^[extracted]

## Blueprint Architecture for Agentic Workflows

Miraje's four-node LangGraph architecture for agentic workflows:

1. **Blueprint Generator** — Produces a high-level plan as natural-language steps mapped to tool capabilities
2. **Planner** — Low-level task planner that converts the Blueprint into specific tool calls and function invocations
3. **Executor** — Executes the plan
4. **Joiner** — Combines outputs from different tasks

The Blueprint acts as a cognitive load management layer: it reduces the Planner's context by limiting which tools are included, provides finer control over task planning, and makes the agent's behavior interpretable to non-technical stakeholders. ^[extracted]
## Graph Engineering as Workflow Composition

The captured lab makes the workflow layer concrete: an agent can compose sequential, parallel, and loop workflows around shared state, while MCP provides tool boundaries and A2A provides agent-to-agent boundaries. The graph is the control surface; the model supplies decisions inside bounded nodes. ^[extracted]

## Andrew Ng's Agentic Workflow Lens

Andrew Ng's course treats an agentic workflow as a multi-step LM application whose steps can combine reasoning, ordinary code, retrieval, and external tools. The useful design move is to decompose a complex task and choose the smallest appropriate building block for each step rather than defaulting to one large prompt. ^[extracted]

The course also frames agentic systems as a spectrum of autonomy: fixed sequences, semi-autonomous workflows, and systems that plan, call tools, reflect, or delegate to other agents. This complements the workflow/agent spectrum already described above. ^[extracted]

Its development loop is practical: build a safe end-to-end version, inspect intermediate outputs, add targeted evals, and improve the component that the evidence says is limiting the result. ^[extracted]

## Related

- [[concepts/agent-architecture]] — Four-component framework where workflows live
- [[concepts/orchestrating-vs-executing]] — Orchestrator vs executor patterns
- [[concepts/open-loop-planning]] — Open-loop planning approaches
- [[concepts/eval-human-in-the-loop]] — Human approval integration
- [[concepts/assistive-vs-automation-agents]] — Automation agents rely on workflows
- [[concepts/workflow-agent-spectrum]] — The spectrum between deterministic and autonomous
