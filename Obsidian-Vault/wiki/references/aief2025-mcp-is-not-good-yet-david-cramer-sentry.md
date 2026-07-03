---
title: "MCP Is Not Good Yet — David Cramer, Sentry (AIEF2025)"
category: references
tags: [mcp, aief2025, agents, production, architecture, sentry, tool-calling]
aliases: [MCP Is Not Good Yet, David Cramer AIEF2025 MCP]
relationships:
  - target: "[[concepts/model-context-protocol]]"
    type: extends
  - target: "[[concepts/enterprise-mcp-deployment]]"
    type: related_to
  - target: "[[concepts/context-engineering]]"
    type: related_to
  - target: "[[concepts/mcp-gateway-pattern]]"
    type: related_to
  - target: "[[concepts/agent-design-patterns]]"
    type: extends
sources:
  - "AIEF2025 - MCP Is Not Good Yet — David Cramer, Sentry - https://www.youtube.com/watch?v=FCi4jT86gSw"
summary: "A grounded, experience-based critique of MCP from the founder of Sentry, arguing that MCP is just a pluggable architecture for agents — not magic — and that the real value is in building agents, not exposing APIs."
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# MCP Is Not Good Yet — David Cramer, Sentry

> MCP is a pluggable architecture for agents. Full stop. That's it. This stuff is not that hard. The fancy new words are just new words for the same thing.

## Key Claims

### MCP = Plug-in Architecture for Agents

Cramer's core framing cuts through the mystique: MCP is "a pluggable architecture for agents. Full stop. That's it." The protocol layer (JSON-RPC, OAuth 2.1, transport) is infrastructure plumbing — the value is in the agent that plugs into it. ^[extracted]

- Tools are "just API calls with a new response format."
- MCP is "just a plug-in architecture."
- Agents are "just services."

### Remote MCP over Stdio for B2B SaaS

Cramer argues that stdio MCP (local process-based) is not useful for B2B SaaS companies — "you should only care about OAuth if you're a B2B SaaS company like me." Remote MCP servers give the same advantages cloud always has: ability to iterate, ship fast, and dial in security. ^[extracted]

The stdio interface, by contrast, is "filled with most of" the security problems — "do not allow random MCP tools in your organization." ^[extracted]

### You Can't Wrap OpenAPI as MCP Tools

A central practical claim: "you cannot just be like, I got an API. I'm going to expose all those endpoints as tools. You're going to get the worst results you can possibly imagine." ^[extracted]

MCP server design requires:
- **Massaging the interface** — designing for agent consumption, not human API consumption
- **Markdown over JSON** — Sentry returns Markdown from its tool endpoints because "if a human can reason about it, the language model can reason about it." Complex JSON payloads "break all the time" when agents try to reason about them. ^[extracted]
- **Crafted tool descriptions** — tool descriptions are context that the model uses for reasoning; hitting token limits is a real constraint
- **Designed errors** — errors are context too; write them for the model, not just for the human

### OAuth 2.1 Reality

MCP requires OAuth 2.1 for remote authentication, but "nobody in the world supports this thing." Sentry solved this by using Cloudflare Workers' OAuth shim to proxy their standard OAuth 2.0. ^[extracted]

### The Agent, Not the Protocol, Is the Value

Cramer's strongest thesis: "you just need to really focus on building agents." Building an agent gives you control — you control the prompt, the model selection, the orchestration, the error handling. Exposing that agent through MCP is then just a plugin interface. ^[extracted]

Sentry's "Seer" agent does high-quality root cause analysis. It is exposed both through the Sentry UI and through MCP — but the MCP interface is necessarily degraded because "there is no streaming responses for tools yet," forcing a polling pattern instead. ^[extracted]

### Token Costs and Constraints

Tool descriptions add input token overhead. A $1 API call can become $10 because of context length from tool descriptions. VS Code/OpenAI also enforces a limit on tool description lengths. "You've got to be really thoughtful about this." ^[extracted]

### Client Ecosystem Instability

MCP clients are still rough: VS Code Insiders is more stable, Cursor "breaks quite a lot," Cloud Code has "sort of support, but not really." "You can't solve for that one — you just got to wait for everybody to catch up." ^[extracted]

## Practical Takeaways

- **Start with remote MCP** — focus on the remote interface and OAuth specification; the problems will solve themselves as the ecosystem matures.
- **Design for an unknown consumer** — "You don't control the consumer. You don't control the model. You are providing context to an agent you don't know what the agent is doing."
- **Iterate constantly** — Sentry's MCP server is "still updating this thing every week, tweaking it here and there."
- **Build it anyway** — "It's quite broken all the time, but it's not that hard. I built it in two days. You can just go build it and try it out."

## People

- [[entities/david-cramer|David Cramer]] — Founder of [[entities/sentry|Sentry]], speaker

## Related

- [[concepts/model-context-protocol]] — The protocol critiqued and extended by this talk
- [[concepts/enterprise-mcp-deployment]] — Remote MCP focus aligns with enterprise deployment stages
- [[concepts/context-engineering]] — Designing context for an unknown agent consumer
- [[concepts/mcp-gateway-pattern]] — Gateway architecture for remote MCP at scale
- [[concepts/agent-design-patterns]] — MCP as a pluggable architecture for agent design
- [[entities/sentry]] — Sentry's application monitoring platform and MCP server
- [[entities/cloudflare]] — Cloudflare Workers used for OAuth 2.1 proxy
- [[entities/cursor-ai]] — Cursor IDE, an MCP client with evolving stability
