---
title: "Model Context Protocol (MCP)"
tags:
  - mcp
  - protocol
  - ai-integration
  - tool-calling
  - json-rpc
sources:
  - "https://www.youtube.com/watch?v=0NHCyq8bBcM"
  - "AI Engineer World's Fair 2025 - Spark to System: Building the Open Agentic Web — Asha Sharma, Microsoft - https://www.youtube.com/watch?v=7Hrw6rtXaHc"
  - "AIEF2025 - Unlocking AI Powered DevOps Within Your Organization — Jon Peck, GitHub - https://www.youtube.com/watch?v=C1NivhYS1sI"
  - "AIEF2025 - MCP Is Not Good Yet — David Cramer, Sentry - https://www.youtube.com/watch?v=FCi4jT86gSw"
summary: "An open standard protocol for connecting AI models to external tools and data sources — framed as a pluggable architecture for agents — comprising a JSON-RPC message specification and transport-agnostic layer."
provenance:
  extracted: 0.65
  inferred: 0.30
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Model Context Protocol (MCP)

The Model Context Protocol (MCP) is an open standard for providing context to AI models from external tools and data sources. Originated by [[entities/anthropic|Anthropic]], it is becoming an industry standard with all major AI labs represented in its standards body.

## Two Sides of MCP

Per [[entities/john-welsh|John Welsh]]'s framing, MCP has two distinct but related sides:

### 1. JSON-RPC Message Specification

A standard format for sending messages between providers of model context and the code interacting with models. This is the core engineering value — a well-defined message interface with:

- **Tool definitions** — standardized format for describing available tools
- **Resource management** — standardized resource access patterns
- **Tool execution** — standardized request/response patterns for tool calls
- **Elicitation** — standardized details exchange

Most of the value ("most of the juice") of MCP lives in this message specification and the server interaction patterns it defines.

### 2. Global Transport Standard

The infrastructure layer covering streamable HTTP, OAuth 2.1, and session management. This is "hard because you're trying to get everyone to speak the same language" and involves significant standardization effort.

## Transport Agnosticism

A key insight from Anthropic's implementation experience: MCP is fundamentally about JSON streams, and transport is an implementation detail. ^[inferred]

- "MCP is really just JSON streams and how you pipe those streams around your infrastructure is a small implementation detail."
- Any transport that provides a **read stream** and **write stream** can be piped into the MCP SDK client session.
- Demonstrated working transports: WebSocket (internal), gRPC (multiplexed), Unix socket, even IMAP/email.
- "Whatever it takes inside your organization is great."

## Built-in Primitives

MCP includes solutions for problems you may not have encountered yet:

- **Sampling** — standardized primitives for model sampling requests across the stream, useful for unifying billing models, token tracking, and usage monitoring across different products. ^[inferred]

## Industry Adoption

- Being adopted as an industry standard with broad coalition support.
- External remote MCP services emerging (e.g., `mcp.asana.com`).
- Standardizing internally is recommended: "being boring on stuff like this is good" — plumbing integrations is not a competitive differentiator. ^[inferred]

## IDE-Level MCP Integration

MCP servers are now available directly within development environments, as demonstrated by [[entities/jon-peck|Jon Peck]] of [[entities/github-copilot|GitHub]] at AI Engineer World's Fair 2025 ^[extracted]:

- **VS Code:** MCP servers can be added directly to the IDE from `github.com/modelcontextprotocol/servers`, enabling agent workflows like "commit this work and create a PR" without context switching to GitHub's web interface. ^[extracted]
- **Copilot Enterprise:** MCP can be configured at the repository level, enabling autonomous agents (e.g., Issue-to-PR pipeline) to reach external systems during issue resolution. The agent creates a branch, implements, and submits a PR — all while having MCP access to the systems it needs. ^[extracted]

This integration brings MCP from infrastructure plumbing into the daily developer workflow, where the same protocol that connects models to APIs also connects the IDE agent to external tools and services.


## Alternative: OpenRouter's AI-Native Middleware

[[entities/openrouter|OpenRouter]] developed a complementary approach to model augmentation inspired by web development middleware (similar to Next.js middleware). Key differences from MCP: ^[extracted]

- **Output transformation** — MCP handles pre-flight tool calls (fetch data before inference), but OpenRouter's middleware can also transform model outputs on the way back to the user in real time ^[extracted]
- **Streaming-native** — All augmentation happens in the stream; no need to wait for all tokens before processing ^[extracted]
- **Can call MCPs internally** — The plug-in system can call MCP servers from inside a plug-in, making it layered rather than mutually exclusive ^[extracted]

### Example: Web Search Plug-in

OpenRouter's web search plug-in augments every language model with web search, injecting annotations into the live stream as results are fed back to users. This pattern — middleware that both fetches context AND transforms output — goes beyond what MCP's current pre-flight tool-calling model does. ^[extracted]

### Relationship to MCP

MCP provides the standard for *how* to call external tools; OpenRouter's middleware provides a pattern for *when and where* to inject them in the inference pipeline (pre-flight, in-stream, or post-hoc). They are complementary — middleware as the orchestration layer, MCP as the tool-calling protocol. ^[inferred]

## MCP as Pluggable Agent Architecture

[[entities/david-cramer|David Cramer]] ([[entities/sentry|Sentry]]) reframes MCP from protocol to architectural pattern: "MCP is a pluggable architecture for agents. Full stop." The JSON-RPC specification is the mechanism; the plugin system connecting agents to capabilities is the value. ^[extracted]

This framing demystifies the stack:
- **Tools are API calls with a new response format**, not fundamentally new infrastructure. ^[extracted]
- **Agents are just services** orchestrated around LLM calls. ^[extracted]
- **MCP is infrastructure plumbing** — "being boring on stuff like this is good." ^[inferred]

Cramer argues the real value is building agents (where you control prompt, model, and orchestration) and exposing them through MCP as a plugin interface — not treating MCP as the product itself. ^[extracted]

### Remote MCP over Stdio for B2B

For enterprise SaaS, Cramer advocates remote MCP servers over stdio: the same advantages cloud always provided — iteration speed, security control, operational agility — still apply. Stdio "is filled with most of" the security problems and is "not super useful for businesses like ours." ^[extracted] OAuth 2.1 is required for remote MCP but "nobody in the world supports this thing" yet; Sentry solved it via Cloudflare Workers' OAuth shim. ^[extracted]

## Practical MCP Design Lessons

From shipping Sentry's production MCP server, Cramer offers concrete guidance:

### Design for Context, Not API Surface

"You cannot just be like, I got an API. I'm going to expose all those endpoints as tools. You're going to get the worst results." ^[extracted] MCP server design must be oriented around how agents consume context:
- **Return Markdown, not raw JSON** — "if a human can reason about it, the language model can reason about it." ^[extracted]
- **Craft tool descriptions as agent reasoning context** — hitting token limits from verbose descriptions is a real constraint. ^[inferred]
- **Design error messages for the model** — errors are context for recovery, not just human logs. ^[extracted]

### You Don't Control the Consumer

"You don't control the consumer. You don't control the model. You are providing context to an agent you don't know what the agent is doing." ^[extracted] This means optimizing for the least common denominator, iterating constantly (Sentry updates weekly), and being mindful that tool description overhead can turn a $1 API call into $10 in context costs. ^[extracted]

### Build Agents, Not Just Servers

Building an agent gives control over the prompt, model, orchestration, and error handling. That agent is the value. MCP is just how you plug it in. Sentry's "Seer" agent (root cause analysis) demonstrates this — exposed through both UI and MCP, but the MCP interface is necessarily degraded because "there is no streaming responses for tools yet," forcing a polling pattern. ^[extracted]

## Related

- [[concepts/mcp-gateway-pattern]] — Centralized gateway architecture for MCP at scale
- [[concepts/enterprise-mcp-deployment]] — Maturity stages for deploying MCP in production
- [[concepts/mcp-dynamic-client-registration]] — Protocol behavior where clients auto-register as applications
- [[entities/github-copilot]] — GitHub Copilot's VS Code and Enterprise MCP integration
- [[entities/david-cramer]] — Founder of Sentry, MCP practitioner and critic
- [[entities/sentry]] — Application monitoring platform with production MCP server
- [[references/aief2025-mcp-is-not-good-yet-david-cramer-sentry]] — Full talk reference

## Sources

- https://www.youtube.com/watch?v=0NHCyq8bBcM
- AI Engineer World's Fair 2025 — Fun stories from building OpenRouter and where all this is going, Alex Atallah, OpenRouter. https://www.youtube.com/watch?v=84Vtz2IL1Ug
