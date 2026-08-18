# Mission: LangChain & LangGraph — From Zero to Agent Builder

## Why
Build a solid, grounded understanding of LangChain and LangGraph — the two most important Python frameworks for building LLM agents. You already know Python. You've never used these tools. By the end of this course, you'll design, build, and deploy agents that ship real work, and you'll understand the runtime tradeoffs between the high-level framework (LangChain) and the low-level orchestration layer (LangGraph).

## Success looks like
- Explain the mental model of an agent (model + tools + loop)
- Build a working LangChain agent with custom tools using `create_agent`
- Design a LangGraph state machine with nodes, edges, and persistence
- Choose between LangChain and LangGraph for a given task without guessing
- Understand memory architecture: short-term (checkpointers), long-term (Store), semantic (profiles), episodic (few-shot), procedural (reflection)
- Wire up provider packages (OpenAI, Anthropic, Ollama) and swap between them
- Use structured output, middleware, and human-in-the-loop patterns
- Deploy agents with error handling, streaming, and basic observability

## Constraints
- Python 3.10+ only (LangChain requirement)
- Modern API only — use `create_agent`, not the deprecated `LLMChain` / `AgentExecutor` patterns
- Official docs at `docs.langchain.com` are canonical; old `python.langchain.com` URLs redirect
- Provider packages (`langchain-openai`, `langchain-anthropic`, etc.) install separately from `langchain`
- LangGraph is a dependency of LangChain but can also run standalone
- Learning through lessons + HTML artifacts + hands-on exercises

## Out of scope
- LangSmith paid SaaS platform (not open source)
- Deep Agents SDK (advanced; defer to post-course)
- LLM model training or fine-tuning
- Production deployment infrastructure (covered tangentially in Ch 12)
- Non-Python LangChain runtimes (JavaScript, etc.)
