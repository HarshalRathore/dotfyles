---
title: Strands Agents
tags:
- open-source
- sdk
- ai-agents
- aws
- python
- mcp
- agent-framework
aliases:
- Strands
- strands-agents
- Strands SDK
sources:
- 'https://www.youtube.com/watch?v=q3nreeadkmc'
- AIEF2025 - Building Agents at Cloud Scale — Antje Barth, AWS - https://www.youtube.com/watch?v=WJjInLeaJjo
summary: Open-source AI agent SDK by AWS with minimal scaffolding — just model and tools. Supports Bedrock (Claude 3.7 Sonnet), Ollama, LiteLLM, OpenAI. 20+ built-in tools including Retrieve, multi-modal, r...
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/suman-debnath|Suman Debnath]]'
  type: related_to
- target: '[[entities/aws|AWS]]'
  type: related_to
- target: '[[entities/amazon-bedrock|Amazon Bedrock]]'
  type: uses
- target: '[[entities/ollama|Ollama]]'
  type: uses
- target: '[[concepts/agent-loop|Agent Loop]]'
  type: implements
category: entities
---

# Strands Agents

[[entities/suman-debnath|Suman Debnath]] introduced Strands Agents at AI Engineer World's Fair 2025. It is an open-source SDK with a single design principle: eliminate scaffolding so agents only need a model and tools. ^[extracted]

## Design Philosophy

The two strands in the logo represent the two primitives: **model** and **tool**. Strands trusts increasingly capable LLMs to handle reasoning and planning, rather than requiring developers to write extensive system prompts or orchestration scaffolding. The name was chosen by an AI agent, reasoning that the two strands connect the model and tools like DNA strands. ^[extracted]

## Architecture

- **Model layer:** Default is Amazon Bedrock (Claude 3.7 Sonnet), but supports Ollama (local) via llama-edit and meta-edit integrations, LiteLLM for OpenAI and other providers, and custom model providers. ^[extracted]
- **Tool layer:** Built-in tools via `strands-tools` package (file read, file write, text-to-speech). Custom tools via `@tools.tool` decorator on any Python function.
- **MCP integration:** Entire MCP servers can serve as tool sources via `mcp_client.list_tools_sync()`. Native MCP support enables connection to thousands of MCP servers. ^[extracted]
- **A2A support:** Agent-to-Agent protocol support is coming soon. ^[extracted]
- **Observability:** Integrates with LangFuse and LiteLLM for tracing

## Tool Ecosystem

Strands Agents ships with **20+ pre-built tools** covering diverse capabilities: ^[extracted]

- **File and API operations:** File manipulation, API calls, AWS service integration
- **Memory and RAG:** Tools from the memory and RAG suite, including the **Retrieve** tool for semantic search over knowledge bases
- **Multi-modal support:** Processing images, video, and audio
- **Reasoning:** A dedicated tool for prompting deeper thinking and reasoning
- **Multi-agent workflows:** Pre-built tools for graph-based workflows and swarm sub-agent coordination
- **MCP servers:** Native integration for using any MCP server's tools

### Retrieve Tool

The Retrieve tool enables semantic search over a knowledge base. At AWS, an internal agent managing 6,000+ tools uses Retrieve to find the most relevant tools for each task, loading only those into the model's context window — because 6,000 tool descriptions cannot fit in a single context. ^[extracted]

## Installation

```
pip install strands-agents
pip install strands-tools
```

## Code Pattern

```python
from strands import Agent
from strands.tools import tools

agent = Agent(
    model="bedrock/claude-3-7-sonnet",
    tools=[read_file, write_file, speak],
)
result = agent.run("Read chapter 10, summarize it, write it, and speak it")
```

No orchestration framework. No state machine. No scaffolding. ^[extracted]

## Related

- [[entities/suman-debnath]] — Creator/advocate
- [[entities/aws]] — Associated organization
- [[entities/amazon-bedrock]] — Default model provider
- [[entities/ollama]] — Local model option
- [[concepts/agent-loop]] — Agent loop pattern
- [[concepts/mcp-resource-server-separation]] — MCP architecture
- [[references/aief2025-introducing-strands-agents-open-source-ai-agents-sdk-suman-debnath-aws]] — Full talk reference
- [[concepts/model-driven-agent-design|Model-Driven Agent Design]] — Design philosophy
- [[concepts/agent-tool-discovery|Agent Tool Discovery]] — Retrieve tool pattern
- [[concepts/multi-agent-workflows|Multi-Agent Workflows]] — Pre-built multi-agent tools