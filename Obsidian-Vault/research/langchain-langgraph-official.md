# LangChain & LangGraph — Official Documentation Findings

> Compiled 2026-07-17 from official first-party sources at `docs.langchain.com`.  
> All citations link back to canonical docs.

## Primary URLs

| Resource | URL |
|----------|-----|
| **Docs Hub (llms.txt)** | <https://docs.langchain.com/llms.txt> |
| **LangChain Overview** | <https://docs.langchain.com/oss/python/langchain/overview> |
| **LangChain Install** | <https://docs.langchain.com/oss/python/langchain/install> |
| **LangChain Quickstart** | <https://docs.langchain.com/oss/python/langchain/quickstart> |
| **LangChain Agents** | <https://docs.langchain.com/oss/python/langchain/agents> |
| **LangChain Models** | <https://docs.langchain.com/oss/python/langchain/models> |
| **LangChain Tools** | <https://docs.langchain.com/oss/python/langchain/tools> |
| **LangGraph Overview** | <https://docs.langchain.com/oss/python/langgraph/overview> |
| **LangGraph Graph API** | <https://docs.langchain.com/oss/python/langgraph/graph-api> |
| **LangGraph Persistence** | <https://docs.langchain.com/oss/python/langgraph/persistence> |
| **Concepts: Products** | <https://docs.langchain.com/oss/python/concepts/products> |
| **Concepts: Memory** | <https://docs.langchain.com/oss/python/concepts/memory> |
| **LangSmith** | <https://docs.langchain.com/langsmith/observability> |
| **Deep Agents** | <https://docs.langchain.com/oss/python/deepagents/overview> |
| **API Reference** | <https://reference.langchain.com/python/langchain/agents/factory/create_agent> |

**Important:** The old domains `python.langchain.com` and `langchain-ai.github.io/langgraph/` now redirect to `docs.langchain.com`. Always cite `docs.langchain.com` as the canonical source.

---

## Current Package Names & Versions (PyPI)

| Package | Version (2026-07-17) | Install command |
|---------|----------------------|-----------------|
| `langchain` | 1.3.14 | `pip install -U langchain` |
| `langgraph` | 1.2.9 | `pip install -U langgraph` |
| `langchain-core` | 1.4.9 | (pulled by `langchain`) |

Python 3.10+ required. Provider packages are separate: `langchain-openai`, `langchain-anthropic`, `langchain-google-genai`, `langchain-aws`, `langchain-ollama`, etc.

Source: [Install page](https://docs.langchain.com/oss/python/langchain/install), PyPI JSON endpoint.

---

## LangChain vs LangGraph — Relationship

From the official docs, the hierarchy is explicit:

> "LangChain's agents are **built on top of LangGraph**. This allows us to take advantage of LangGraph's durable execution, human-in-the-loop support, persistence, and more."  
> — [LangChain Overview](https://docs.langchain.com/oss/python/langchain/overview)

### Three-layer product stack [Source](https://docs.langchain.com/oss/python/concepts/products)

| Layer | Product | Role |
|-------|---------|------|
| **Harness** | Deep Agents SDK | Batteries-included: planning, subagents, filesystem, context compression, built on LangGraph |
| **Framework** | LangChain | High-level agent framework: `create_agent`, model/tool abstractions, middleware; built on LangGraph |
| **Runtime** | LangGraph | Low-level orchestration: durable execution, persistence, streaming, human-in-the-loop |
| **Platform** | LangSmith | Tracing, evaluation, deployment, LLM monitoring (not open source) |

### When to use which [Source](https://docs.langchain.com/oss/python/concepts/products)

- **LangChain** — "You want to quickly build agents… standard abstractions… straightforward agent applications without complex orchestration needs."
- **LangGraph** — "You need fine-grained, low-level control… durable execution for long-running, stateful agents… complex workflows combining deterministic and agentic steps."
- **Deep Agents** — "Complex, multi-step tasks requiring planning, subagents, filesystem, automated context engineering."

> "While LangChain is built on top of LangGraph, you don't need to know LangGraph to use LangChain."

### Key quote from LangGraph overview
> "LangGraph is very low-level, and focused entirely on agent **orchestration** … If you are just getting started with agents or want a higher-level abstraction, we recommend you use LangChain's agents."  
> — [LangGraph Overview](https://docs.langchain.com/oss/python/langgraph/overview)

LangGraph is **inspired by Google's Pregel** and **Apache Beam**, with a public interface drawing from **NetworkX**. Built by LangChain Inc, but **can be used without LangChain**.

---

## Minimal Conceptual Vocabulary

### LangChain concepts

| Term | Definition | Source |
|------|------------|--------|
| **Agent** | A model calling tools in a loop until a task is complete (= Model + Harness) | [Agents page](https://docs.langchain.com/oss/python/langchain/agents) |
| **Model** | Reasoning engine; accepts messages, returns messages. Supports tool calling, structured output, multimodality, reasoning. | [Models page](https://docs.langchain.com/oss/python/langchain/models) |
| **Tool** | A callable function with well-defined inputs/outputs passed to the model. Created via `@tool` decorator. | [Tools page](https://docs.langchain.com/oss/python/langchain/tools) |
| **Harness** | Everything around the model loop: prompt, tools, middleware that shapes behavior. `create_agent()` is the built-in harness. | [Agents page](https://docs.langchain.com/oss/python/langchain/agents) |
| **Middleware** | Extensions that modify agent behavior (guardrails, retries, routing, human-in-the-loop). | [Agents page](https://docs.langchain.com/oss/python/langchain/agents) |
| **ToolRuntime** | Injected parameter giving tools access to state (short-term memory), context (immutable config), store (long-term memory), stream writer, execution info. | [Tools page](https://docs.langchain.com/oss/python/langchain/tools) |
| **Structured output** | Return a validated Pydantic schema via `response_format=` parameter. | [Agents page](https://docs.langchain.com/oss/python/langchain/agents) |
| **Messages** | Core I/O objects: `HumanMessage`, `AIMessage`, `SystemMessage`, `ToolMessage`. | [Messages concept](https://docs.langchain.com/oss/python/langchain/messages) |

### LangGraph concepts

| Term | Definition | Source |
|------|------------|--------|
| **StateGraph** | Main graph class, parameterized by a user-defined `State` object. | [Graph API](https://docs.langchain.com/oss/python/langgraph/graph-api) |
| **State** | Shared data structure (TypedDict, dataclass, or Pydantic model) representing the current snapshot. Has schema + reducer functions. | [Graph API](https://docs.langchain.com/oss/python/langgraph/graph-api) |
| **Node** | Function that receives current state, performs computation, returns state update. "Nodes do the work." | [Graph API](https://docs.langchain.com/oss/python/langgraph/graph-api) |
| **Edge** | Function that determines which node to execute next based on current state. Can be conditional or fixed. "Edges tell what to do next." | [Graph API](https://docs.langchain.com/oss/python/langgraph/graph-api) |
| **Reducer** | Function specifying how to apply node updates to each state key. Default: override. Custom: `Annotated[type, reducer_fn]`. Common: `operator.add`, `add_messages`. | [Graph API](https://docs.langchain.com/oss/python/langgraph/graph-api) |
| **MessagesState** | Prebuilt state with `messages: list[AnyMessage]` key using `add_messages` reducer. | [Graph API](https://docs.langchain.com/oss/python/langgraph/graph-api) |
| **Checkpointer** | Persists thread's graph state as checkpoints (short-term, thread-scoped memory). Enables time travel, fault tolerance, human-in-the-loop. | [Persistence](https://docs.langchain.com/oss/python/langgraph/persistence) |
| **Store** | Persists application-defined key-value data outside graph state (long-term, cross-thread memory). | [Persistence](https://docs.langchain.com/oss/python/langgraph/persistence) |
| **Thread** | Scopes a conversation via `thread_id` in config. Checkpoints are per-thread. | [Persistence](https://docs.langchain.com/oss/python/langgraph/persistence) |
| **Compile** | Required step before using a graph. Runs structural checks and accepts runtime args (checkpointer, breakpoints). `graph.compile(...)`. | [Graph API](https://docs.langchain.com/oss/python/langgraph/graph-api) |

### Memory types [Source](https://docs.langchain.com/oss/python/concepts/memory)

| Type | Scope | Mechanism |
|------|-------|-----------|
| **Short-term** | Thread-scoped (per conversation) | State persisted via checkpointers |
| **Long-term** | Cross-thread (across conversations) | Store (namespace + key-value documents) |
| **Semantic** | Facts about user/domain | Profile (single JSON doc) or Collection (multiple documents) |
| **Episodic** | Past events/actions | Few-shot examples in prompt |
| **Procedural** | Rules/instructions | Self-modifying prompts via reflection |

---

## Beginner-Friendly Getting Started

### LangChain: minimal agent [Source](https://docs.langchain.com/oss/python/langchain/quickstart)

```python
# pip install -U langchain
from langchain.agents import create_agent

def get_weather(city: str) -> str:
    """Get weather for a given city."""
    return f"It's always sunny in {city}!"

agent = create_agent(
    model="openai:gpt-5.5",
    tools=[get_weather],
    system_prompt="You are a helpful assistant",
)

result = agent.invoke(
    {"messages": [{"role": "user", "content": "What's the weather in San Francisco?"}]}
)
print(result["messages"][-1].content_blocks)
```

### LangGraph: minimal graph [Source](https://docs.langchain.com/oss/python/langgraph/overview)

```python
# pip install -U langgraph
from langgraph.graph import StateGraph, MessagesState, START, END

def mock_llm(state: MessagesState):
    return {"messages": [{"role": "ai", "content": "hello world"}]}

graph = StateGraph(MessagesState)
graph.add_node(mock_llm)
graph.add_edge(START, "mock_llm")
graph.add_edge("mock_llm", END)
graph = graph.compile()

graph.invoke({"messages": [{"role": "user", "content": "hi!"}]})
```

---

## Key Caveats for Course Content

1. **Docs layout is a moving target.** The old domains redirect. Tutorials pages returned 404 — verify all links before publishing course material.
2. **`create_agent` is the modern entrypoint.** The old `LangChain` class / `LLMChain` / `AgentExecutor` patterns are replaced by `langchain.agents.create_agent`.
3. **Python 3.10+ only.**
4. **Provider packages are separate.** `langchain-openai`, `langchain-anthropic`, etc. must be installed independently of `langchain`.
5. **LangGraph does NOT require LangChain.** It can be used standalone with any model provider.
6. **LangSmith is NOT open source.** It's the paid SaaS observability/deployment platform.
7. **Deep Agents** is a newer product (SDK-level harness) — consider whether to include in beginner curriculum or defer to advanced.

---

## Sources (All Official)

1. <https://docs.langchain.com/llms.txt> — full documentation index
2. <https://docs.langchain.com/oss/python/langchain/overview> — LangChain overview
3. <https://docs.langchain.com/oss/python/langchain/install> — installation
4. <https://docs.langchain.com/oss/python/langchain/quickstart> — quickstart tutorial
5. <https://docs.langchain.com/oss/python/langchain/agents> — agents deep dive
6. <https://docs.langchain.com/oss/python/langchain/models> — chat models
7. <https://docs.langchain.com/oss/python/langchain/tools> — tools
8. <https://docs.langchain.com/oss/python/langgraph/overview> — LangGraph overview
9. <https://docs.langchain.com/oss/python/langgraph/graph-api> — Graph API
10. <https://docs.langchain.com/oss/python/langgraph/persistence> — persistence
11. <https://docs.langchain.com/oss/python/concepts/products> — product hierarchy
12. <https://docs.langchain.com/oss/python/concepts/memory> — memory concepts
13. <https://pypi.org/pypi/langchain/json> — version info
14. <https://pypi.org/pypi/langgraph/json> — version info
