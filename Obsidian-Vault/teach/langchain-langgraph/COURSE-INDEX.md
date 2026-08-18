# Course Index — LangChain & LangGraph

**12 chapters** from zero to production. Python developers who have never used LangChain or LangGraph. Each chapter builds on the previous.

## Chapter 1 — Orientation
**Mental model, glossary, and the big picture.**

What is an agent? The model + tools + loop mental model. LangChain vs LangGraph: who owns what. The mailroom analogy that ties everything together. Beginner glossary (state, node, edge, tool, model, harness, compile). Spot-the-parts exercise with a real code snippet. Where the official docs live and how to navigate them.

**Status:** Published ✓

---

## Chapter 2 — Your First Agent
**Install, create_agent, and make your first tool call.**

Setting up a Python 3.10+ environment. `pip install langchain`. Provider packages (`langchain-openai`, `langchain-ollama`). Your first `create_agent` with one tool. Running the agent and seeing it reason. The `@tool` decorator. What happens inside the agent loop.

**Status:** Published ✓


---

## Chapter 3 — Seeing the Loop
**Messages, tool calls, stream tracing, and finish conditions.**

The normal finish condition: no `tool_calls` on the latest AIMessage. Message types: AIMessage, ToolMessage, tool_call_id, message history. Streaming with stream_mode="updates". Reading a trace output. The model suggests, the framework executes. Thinking/reasoning token caveat. updates vs values mode. Other ways the loop can end (middleware, errors, limits).

**Status:** Published ✓

---

## Chapter 4 — Models & Messages
**Chat models, message types, and structured output.**

How LangChain abstracts LLM providers: the model interface. Switching between OpenAI, Anthropic, and local Ollama with one line. Message types: `HumanMessage`, `AIMessage`, `SystemMessage`, `ToolMessage`. Adding system prompts. Structured output: model-level `with_structured_output` vs agent-level `response_format`. Temperature, max tokens, and other model params.

**Status:** Published ✓

---

## Chapter 5 — Tools in Depth
**Tools in depth: contracts, tool-call messages, runtime context, and safe error paths.**

Define typed tools from Python signatures, compose several tools in one agent, inject trusted per-run context with `ToolRuntime`, and return failures as `ToolMessage` results. The model chooses; Python validates and acts.

**Status:** Published — [lesson](https://e9366b4b.ht-ml.app/) · [quick reference](https://aaa51794.ht-ml.app/)

---

## Chapter 6 — Agent Harnesses
**`create_agent` controls, middleware hooks, call limits, retries, fallback, and guardrails.**

The agent harness is everything around the model-tools loop. `create_agent` parameters in depth: model, tools, system_prompt, response_format. Middleware hook styles — node-style hooks (before_agent, before_model, after_model, after_agent) and wrap-style hooks (wrap_model_call, wrap_tool_call). Prebuilt middleware for deterministic control: ModelCallLimitMiddleware, ToolRetryMiddleware, ModelFallbackMiddleware. Implementing custom middleware. When to use LangChain + create_agent vs dropping into LangGraph for complex orchestration.

**Status:** Published — [lesson](https://db7e5380.ht-ml.app/) · [quick reference](https://85187eed.ht-ml.app/)
---

## Chapter 7 — LangGraph Fundamentals
**StateGraph, nodes, edges, and compile.**

Why LangGraph exists underneath LangChain. The three core concepts: `StateGraph` (the graph), nodes (functions that do work), edges (functions that route). Building your first graph: add_node, add_edge, START, END. The `compile()` step. Running the graph with `invoke()`.

**Status:** Planned

---

## Chapter 8 — State & Reducers
**Custom state types, reducer functions, and MessagesState.**

State is the shared data structure every node reads and writes. Defining state with TypedDict, dataclass, or Pydantic. Reducers: how overlapping updates merge (override, append, custom). `MessagesState` and the `add_messages` reducer. Understanding the state-as-graph-data model.

**Status:** Planned

---

## Chapter 9 — Conditional Flow
**Conditional edges, routing, and branching.**

Not every graph is linear. Conditional edges that inspect state and choose the next node. Routing between agent steps and deterministic logic. Branching: parallel node execution. Designing state machines for complex workflows. The routing function pattern.

**Status:** Planned

---

## Chapter 10 — Persistence & Threads
**Checkpointers, thread scoping, and time travel.**

What happens to state when the process restarts. Checkpointers persist thread state to a database. Thread scoping with `thread_id`. Fault tolerance: replaying from any checkpoint. Time travel: replaying past states. Short-term memory via checkpoints.

**Status:** Planned

---

## Chapter 11 — Long-Term Memory
**Store, cross-thread memory, and namespaces.**

Long-term memory lives outside the graph. The `Store` abstraction: namespaces (hierarchical keys), documents (JSON blobs), search by namespace prefix. Cross-thread memory: sharing knowledge across conversations. Profiles, collections, semantic memory use cases.

**Status:** Planned

---

## Chapter 12 — Human-in-the-Loop
**Interrupts, approval, breakpoints.**

When an agent needs a human decision. Setting breakpoints before or after specific nodes. Interrupting graph execution mid-run. Collecting human input and resuming. Designing for async human response. Safety patterns: requiring approval for destructive operations.

**Status:** Planned
