# LangChain & LangGraph Resources

## Official Documentation (Canonical — always cite `docs.langchain.com`)

| Resource | URL |
|----------|-----|
| **Full Docs Hub** | <https://docs.langchain.com/llms.txt> |
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
| **API Reference — create_agent** | <https://reference.langchain.com/python/langchain/agents/factory/create_agent> |
| **LangChain Messages** | <https://docs.langchain.com/oss/python/langchain/messages> |
| **LangChain Structured Output** | <https://docs.langchain.com/oss/python/langchain/structured-output> |
| **Concepts: Providers and Models** | <https://docs.langchain.com/oss/python/concepts/providers-and-models> |
| **API Reference — init_chat_model** | <https://reference.langchain.com/python/langchain/chat_models/base/init_chat_model> |
| **API Reference — with_structured_output** | <https://reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/with_structured_output> |
| **API Reference — @tool** | <https://reference.langchain.com/python/langchain-core/tools/convert/tool> |
| **API Reference — ToolMessage** | <https://reference.langchain.com/python/langchain-core/messages/tool/ToolMessage> |
| **API Reference — ToolRuntime** | <https://reference.langchain.com/python/langchain/tools/ToolRuntime> |
| **API Reference — ToolRetryMiddleware** | <https://reference.langchain.com/python/langchain/agents/middleware/tool_retry/ToolRetryMiddleware> |
| **Middleware Overview** | <https://docs.langchain.com/oss/python/langchain/middleware/overview> |
| **Custom Middleware** | <https://docs.langchain.com/oss/python/langchain/middleware/custom> |
| **Prebuilt Middleware (Built-in)** | <https://docs.langchain.com/oss/python/langchain/middleware/built-in> |
| **API Reference — Middleware module** | <https://reference.langchain.com/python/langchain/agents/middleware> |
| **API Reference — ModelCallLimitMiddleware** | <https://reference.langchain.com/python/langchain/agents/middleware/model_call_limit/ModelCallLimitMiddleware> |
| **API Reference — ModelFallbackMiddleware** | <https://reference.langchain.com/python/langchain/agents/middleware/model_fallback/ModelFallbackMiddleware> |

> The old domains `python.langchain.com` and `langchain-ai.github.io/langgraph/` now redirect to `docs.langchain.com`. Always use `docs.langchain.com` as the canonical source.
|
| **Anthropic Claude Code Architecture** | <https://docs.anthropic.com/en/docs/claude-code/overview> |

## Current Package Versions (Verified 2026-07-17)

| Package | Version | Install |
|---------|---------|---------|
| `langchain` | 1.3.14 | `pip install -U langchain` |
| `langgraph` | 1.2.9 | `pip install -U langgraph` |
| `langchain-core` | 1.4.9 | (dependency of `langchain`) |
| `langchain-openai` | latest | `pip install -U langchain-openai` |
| `langchain-anthropic` | latest | `pip install -U langchain-anthropic` |
| `langchain-ollama` | latest | `pip install -U langchain-ollama` |

**Python 3.10+ required.** Provider packages must be installed independently of `langchain`.

## Key Research Findings (from official docs)

### Three-Layer Product Stack
1. **Runtime: LangGraph** — Low-level orchestration. Durable execution, persistence, streaming, human-in-the-loop. Inspired by Google's Pregel and Apache Beam.
2. **Framework: LangChain** — High-level agent framework. `create_agent`, model/tool abstractions, middleware. Built on LangGraph.
3. **Harness: Deep Agents** — Batteries-included SDK (advanced, not in this course).

### When to Use Which
- **LangChain** when you want to quickly build agents with standard abstractions and no complex orchestration needs.
- **LangGraph** when you need fine-grained, low-level control, durable execution, or complex workflows mixing deterministic and agentic steps.
- **Key quote:** "You don't need to know LangGraph to use LangChain."

### Memory Architecture
| Type | Scope | Mechanism |
|------|-------|-----------|
| Short-term | Per conversation (thread) | State persisted via checkpointers |
| Long-term | Cross-thread | Store (namespace + key-value) |
| Semantic | Facts about user/domain | Profile or Collection |
| Episodic | Past events | Few-shot examples in prompt |
| Procedural | Rules/instructions | Self-modifying prompts via reflection |

## Wisdom & Community
- [LangChain Discord](https://discord.gg/langchain) — active community, maintainers answer questions
- [LangChain GitHub](https://github.com/langchain-ai/langchain) — source code, issues, examples
- [LangGraph GitHub](https://github.com/langchain-ai/langgraph) — graph runtime source
- [r/LangChain](https://reddit.com/r/LangChain) — community discussions
- [AI Engineer Conference](https://www.youtube.com/@aiengineer) — talks on agent architecture

## Gaps
- No single official "beginner path" doc — the docs assume familiarity with LLM concepts
- Tutorial pages on the old domains return 404 — always verify links
- Memory types (semantic, episodic, procedural) are defined in concepts docs but not yet mapped to concrete API examples in beginner materials
- Deep Agents SDK docs are sparse compared to LangChain/LangGraph — it's a newer product
