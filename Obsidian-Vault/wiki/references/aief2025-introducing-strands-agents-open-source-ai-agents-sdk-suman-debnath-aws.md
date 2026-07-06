---
title: Introducing Strands Agents, an Open Source AI Agents SDK — Suman Debnath, AWS
tags:
- reference
- talk
- aief2025
- aws
- strands
- agents
- mcp
- open-source
aliases:
- Strands Agents SDK
- Strands open source SDK
summary: AWS developer Suman Debnath demos Strands, an open-source AI agent SDK with minimal scaffolding — just model and tools. Covers default tools, MCP server integration, and custom tool creation.
sources:
- 'https://www.youtube.com/watch?v=q3nreeadkmc'
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
category: references
---

# Introducing Strands Agents, an Open Source AI Agents SDK

> **Speaker:** [[entities/suman-debnath|Suman Debnath]] ([[entities/aws|AWS]])
> **Event:** AI Engineer World's Fair 2025 (AIEF2025)
> **Link:** https://www.youtube.com/watch?v=Q3NreEAdKMc

## Core Philosophy

[[entities/suman-debnath|Suman Debnath]] introduced Strands as an open-source SDK with a single motivation: make AI agents as simple as possible by eliminating scaffolding. The only two inputs needed are a **model** and **tools** — nothing else. The logo's two strands represent these two primitives. ^[extracted]

The design philosophy is that since LLMs are becoming increasingly intelligent, the model should handle the reasoning and planning, rather than requiring developers to write extensive system prompts, background instructions, or scaffolding. ^[extracted]

## Demo 1: Out-of-the-Box Tools

The first demo showed a simple three-step pipeline: read a file, summarize it, write the summary, and speak it aloud. All three operations used Strands' built-in default tools — no custom tool code was required. ^[extracted]

### Key Technical Details

- **Installation:** Simple `pip install` of `strands-agents` and `strands-tools`
- **Default model:** Amazon Bedrock (Claude 3.7) under the hood, but any model can be used
- **Built-in tools:** File read, file write, and text-to-speech come pre-packaged with `strands-tools`
- **Custom tools:** Any Python function can be decorated with `@tools.tool` to become an agent tool
- **Model flexibility:** Supports Bedrock (default), Ollama (local), and any provider via LiteLLM integration
- **Observability:** Integrates with LangFuse and LiteLLM for tracing and monitoring ^[extracted]

### Code Pattern

Creating an agent requires only three ingredients:
1. Model ID (or use default)
2. System prompt (optional — the speaker encouraged removing it to test model reasoning)
3. Tools list

That's the entire agent definition. No orchestration framework, no state machine, no scaffolding layer. ^[extracted]

## Demo 2: MCP Server Integration

The second demo showed Strands integrating with an MCP (Model Context Protocol) server to create Manim-based mathematical visualizations — the same style as the 3Blue1Brown YouTube channel. ^[extracted]

### How MCP Integration Works

Instead of passing individual tools to the agent, the entire MCP server becomes the tool source:

```
tools = mcp_client.list_tools_sync()  # broadcasts all MCP server tools to the agent
```

The MCP server itself was built with FastMCP, using `@mcp.tool` decorators to define individual tools. The Strands agent then consumed all exposed tools without any additional configuration. ^[extracted]

### Capabilities Demonstrated

- Prompt: "Create a visualization for this cubic equation within the range of x = -3 to x = 3"
- The agent reasoned through the task autonomously — no system prompt scaffolding was used
- Generated a Manim animation video (not photoshopped — the speaker confirmed this)
- Users can specify video duration (30 seconds, 10 seconds, etc.)
- The speaker noted that generating equivalent Manim code manually takes significant expertise ^[extracted]

### One-Shot Prompting Pattern

The MCP server code included an example of how to construct a Manim animation — serving as one-shot prompting for the agent. From the agent's perspective, this was invisible: it just called `list_tools` and then `run_agent`. ^[extracted]

## Custom Tool Creation

Strands supports converting any Python function into an agent tool via a simple decorator pattern. Import `tools` from the Strands toolkit and decorate the function with `@tools.tool`. The decorated function then becomes available when creating an agent. ^[extracted]

## Key Takeaways

1. **Minimalism:** Strands eliminates everything except model + tools, trusting increasingly capable models to handle reasoning
2. **MCP-native:** MCP servers can serve as the complete tool layer for agents, not just individual tools
3. **Flexible model routing:** Default Bedrock, but Ollama, LiteLLM, and any provider work
4. **Built-in tool ecosystem:** File I/O and text-to-speech ship out-of-the-box
5. **Observability:** LangFuse and LiteLLM integration for production tracing

## Related

- [[concepts/agent-loop]] — The agent loop pattern underlying Strands' design
- [[concepts/mcp-resource-server-separation]] — MCP architecture concepts relevant to Strands' MCP integration
- [[entities/amazon-bedrock]] — Default model provider for Strands
- [[entities/ollama]] — Local model option supported by Strands
- [[references/aief2025-ship-agents-that-ship]] — Another AIEF2025 talk on building production agents (Dagger)
- [[references/aief2025-building-conversational-ai-agents-thor-schaeff]] — AIEF2025 talk on conversational AI agents
