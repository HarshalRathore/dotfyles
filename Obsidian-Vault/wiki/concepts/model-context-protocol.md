---
title: Model Context Protocol (MCP)
tags:
- mcp
- protocol
- ai-integration
- tool-calling
- json-rpc
sources:
- 'https://www.youtube.com/watch?v=exed-8gfumm'
- 'https://www.youtube.com/watch?v=0nhcyq8bbcm'
- 'https://www.youtube.com/watch?v=7hrw6rtxahc'
- 'https://www.youtube.com/watch?v=c1nivhys1si'
- 'https://www.youtube.com/watch?v=fci4jt86gsw'
- 'https://www.youtube.com/watch?v=jvunpl5qo8q'
summary: An open standard protocol for connecting AI models to external tools and data sources — framed as a pluggable architecture for agents — comprising a JSON-RPC message specification and transport-agn...
provenance:
  extracted: 0.65
  inferred: 0.3
  ambiguous: 0.05
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
category: concepts
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

### MCP Permission Gating and Handshake

[[entities/jon-peck|Jon Peck]] demonstrated that when Copilot Agent Mode needs to connect to an MCP server, it pauses and presents a "continue" box requiring explicit user permission — the same mechanism used for terminal access. ^[extracted] The MCP handshake is a multi-step sequential conversation: Copilot parses the prompt, identifies the needed MCP, requests permission, then engages in a dialogue with the MCP server (schema discovery → table identification → data extraction → response parsing) before producing output. ^[extracted]

### MCP-to-MCP Protocol

Jon Peck mentioned the MCP-to-MCP protocol as an emerging capability where MCP servers run in protected remote environments and transmit results back to the IDE. ^[extracted] This enables secure access to internal data sources without exposing infrastructure to the developer's local machine. ^[inferred]

### Windsurf's One-Click MCP Integration

[[entities/kevin-hou|Kevin Hou]] ([[entities/windsurf|Windsurf]]) describes Windsurf's one-click MCP integration as a key part of its [[concepts/ubiquitous-ai|ubiquitous AI]] vision. Windsurf enables one-click connections to any [[concepts/model-context-protocol|MCP]] service, allowing developers to access information in Notion, Linear, Stripe, and countless other services directly within the Windsurf editor. ^[extracted] This is the practical implementation of the [[concepts/shared-timeline|shared timeline]] model — the AI must have access to all the same context the human has across their entire workflow. ^[inferred]

This integration brings MCP from infrastructure plumbing into the daily developer workflow, where the same protocol that connects models to APIs also connects the IDE agent to external tools and services.
## Full Spec Primitives (Beyond Tools)

[[entities/harald-kirschner]] ([[entities/microsoft|Microsoft]]/[[entities/vscode|VS Code]]) presented at AI Engineer World's Fair 2025 on unlocking the full [[concepts/model-context-protocol|MCP]] spec. Most practitioners only use MCP tools, creating a reinforcing loop of limited client investment and limited server capabilities. ^[extracted] The full spec includes:

### Dynamic Tool Discovery

Servers can add or remove tools at runtime without client restart. Demonstrated with a dungeon-crawl game where tools like "battle monster" only appear when a monster is present. ^[extracted] This addresses the "too many tools" problem where AI gets confused by oversized static tool sets. ^[extracted] See [[concepts/mcp-dynamic-tool-discovery|MCP Dynamic Tool Discovery]].

### Sampling

Servers can request LLM completions from the client. In [[entities/microsoft|VS Code]], this shows a permission dialog (defaulting to GPT-4.1). Use cases include summarizing resources, formatting content, and agentic server tools. Available in VS Code Insiders at the time of the talk. ^[extracted] See [[concepts/mcp-sampling|MCP Sampling]].

### Elicitations

Tools can request concrete, specific input directly from users — moving beyond chat-based input collection. At the time of the AIEF2025 talk, this was in spec draft. ^[extracted] See [[concepts/mcp-elicitation|MCP Elicitations]].

### Tool Quality vs Quantity

[[entities/harald-kirschner]] cited [[entities/llamaindex|LangChain]] research identifying three vectors of tool confusion: too many tools, too many domains, and repetition. "Quality over quantity" is the design principle. ^[extracted] See [[concepts/mcp-tool-quality-vs-quantity|MCP Tool Quality vs Quantity]].

### User-Defined Tool Sets

[[entities/microsoft|VS Code]] v1.10 shipped user-defined tool sets — curated groupings of tools for specific workflows (e.g., "front-end testing flow"). ^[extracted] See [[concepts/mcp-tool-sets|MCP Tool Sets]].

## Transport: Streamable HTTP

[[entities/harald-kirschner]] highlighted [[concepts/mcp-streamable-http|Streamable HTTP]] as the modern transport replacing SSE, reducing stateful server churn. Working in [[entities/microsoft|VS Code]] for two versions as of the AIEF2025 talk, but adoption is limited by few server implementations. ^[extracted]

## Dev Mode for MCP Servers

[[entities/microsoft|VS Code]] v1.10 includes MCP Dev Mode — a debugger attachment feature for MCP servers running inside VS Code, supporting Python and Node out of the box. Developers can set breakpoints and step through server code, including dynamically generated prompts. ^[extracted] See [[concepts/mcp-dev-mode|MCP Dev Mode]].

## Governance: MCP Steering Committee

The [[entities/mcp-steering-committee|MCP Steering Committee]] met in person for the first time at the MCP Dev Summit (10 days before the AIEF2025 talk). They are responsible for evolving the spec, reviewing open RFCs (namespaces, search), and managing the [[entities/mcp-community-registry|MCP Community Registry]] at `github.com/modelcontextprotocol/registry`. ^[extracted]

## Call to Action

[[entities/harald-kirschner]] urged the community to: build action-oriented, context-aware, semantic-aware MCP servers using the full spec; contribute to open RFCs; file issues and provide feedback to drive SDK/client roadmaps; and showcase stateful server patterns so interoperability gaps close faster. ^[extracted]



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
- [[entities/windsurf]] — Windsurf's one-click MCP integration for ubiquitous AI
- [[references/aief2025-windsurf-everywhere-kevin-hou]] — Source talk on Windsurf's MCP integration
- [[references/aief2025-real-world-mcps-jon-peck]] — Real World MCPs in GitHub Copilot Agent Mode

## Sources

- https://www.youtube.com/watch?v=0NHCyq8bBcM
- AIEF2025 - Real world MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft - https://www.youtube.com/watch?v=RkVILz06y08
- AI Engineer World's Fair 2025 — Fun stories from building OpenRouter and where all this is going, Alex Atallah, OpenRouter. https://www.youtube.com/watch?v=84Vtz2IL1Ug
