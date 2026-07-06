---
title: Enterprise-Ready MCP Deployment
tags:
- mcp
- enterprise
- deployment
- ai-agents
sources:
- 'https://www.youtube.com/watch?v=0mqya52iwqu'
- 'https://www.youtube.com/watch?v=fci4jt86gsw'
summary: The progression of MCP (Model Context Protocol) servers from local development through authenticated internal service to full enterprise-ready deployment, covering transport architecture (remote vs...
provenance:
  extracted: 0.55
  inferred: 0.4
  ambiguous: 0.05
base_confidence: 0.5
lifecycle: draft
category: concepts
tier: supporting
created: '2026-07-04T15:08:37.887101+00:00'
updated: '2026-07-04T15:08:37.887101+00:00'
---
# Enterprise-Ready MCP Deployment

Enterprise-ready MCP deployment is the progression of Model Context Protocol (MCP) servers through four stages of maturity, from local development through to full enterprise production. The concept was articulated by [[entities/tobin-south|Tobin South]] of [[entities/workos|WorkOS]] in his AI Engineer 2026 talk.

## The Four Stages

### Stage 1: Local MCP Server (Demo)

A developer builds a local MCP server, connects it to an API, and tests it. This is "hacky, not particularly useful to anyone except yourself" — a proof of concept. ^[inferred]

### Stage 2: Authenticated Internal Server

The server gets authentication (user login), scoped authorization, and admin privilege management. This is the critical first step: "You should not have an external API that is unauthenticated, that has no access controls on it." The server may also be placed in a VPC with a gateway to restrict access.

### Stage 3: Public MCP Server

The server is published publicly with Stripe payment rails, free credit tiers, and cloud hosting. At this stage new attack vectors appear:

- **Free credit abuse** — Users sign up for free credits and cycle accounts. One AI vendor had users write fanfiction using free credits on a platform not designed for that.
- **Bot blocking** on signups becomes necessary.
- **Input validation** against prompt injection attacks.
- **Dynamic client registration flooding** — MCP servers dynamically register their clients as applications, flooding admin dashboards with unexpected registrations.

### Stage 4: Enterprise-Ready

Server sold into enterprise customers, requiring:

- **SSO & Lifecycle Management** — Enterprise single sign-on, automated provisioning and deprovisioning of MCP access. [[entities/workos|WorkOS]] sees a future where enterprises use SSO to provision access to internal resources exposed via MCP. ^[inferred]
- **Fine-Grained Access Controls** — Highly performant, scoped authorization for every MCP resource.
- **Audit Logs** — GDPR explicitly calls out additional logging requirements for AI workloads. Logs must support instant response for compliance.
- **Data Loss Prevention (DLP)** — Prevents users from uploading sensitive data through MCP servers.
- **Headless Auth** — Asynchronous AI agents need to authenticate to MCP servers without interactive user input, which is "actually super hard" and an open problem.
- **Scope Passing Between AIs** — When A2A (Agent-to-Agent) protocol is involved, auth scopes must be passed between AI workloads, which is an unsolved challenge.

## Key Challenges

- **Dynamic Client Registration** — MCP's protocol choice to dynamically register clients as applications means every auth stack and management tooling needs adaptation.
- **Remote Asynchronous Workloads** — Headless AI agents doing auth into MCP servers with proper authorization controls is not yet solved.
- **Human Elicitation** — A new MCP spec RFC for when the AI needs to ask a human for input; still actively developing.
- **Cross-Workload Authorization** — Passing scope and access control between AI workloads using A2A protocol is "a huge pain point."

## Practical Deployment Considerations

Production experience from [[entities/david-cramer|David Cramer]] of [[entities/sentry|Sentry]] adds several practical considerations to the maturity model:

### Transport Architecture: Remote vs Stdio

For B2B SaaS companies, Cramer argues strongly for remote MCP servers over stdio: the same advantages cloud always provided — iteration speed, security control, operational agility — still apply. The stdio interface is "filled with most of" the security problems and recommended against for enterprise contexts. ^[extracted]

### OAuth 2.1 Practical Maturity

While the enterprise model calls for OAuth-based auth, the real-world situation is that OAuth 2.1 is required by the MCP remote protocol but "nobody in the world supports this thing" yet. ^[extracted] Sentry solved this by using Cloudflare Workers' OAuth shim to proxy standard OAuth 2.0 to OAuth 2.1. Enterprises should expect friction at this layer.

### Client Ecosystem Instability

MCP clients remain a deployment risk: VS Code Insiders has the most stable support, Cursor "breaks quite a lot," and Cloud Code has "sort of support, but not really." ^[extracted] "You can't solve for that one — you just got to wait for everybody to catch up." ^[extracted] Enterprises should not expect uniform client reliability in the current ecosystem.

### Design for Unknown Consumer

A principle that applies across all maturity stages: "You don't control the consumer. You don't control the model. You are providing context to an agent you don't know what the agent is doing." ^[extracted] This means the MCP interface must be designed for the least common denominator — optimized for agent reasoning, not for a specific model or client. ^[inferred]

## Related

- [[concepts/rbac]] — Role-based access control principles underpin MCP authorization scoping.
- [[concepts/oidc]] — OpenID Connect is the protocol behind enterprise SSO for MCP.
- [[concepts/agent-loop]] — Agent loops are the workloads that consume MCP servers in production.
- [[concepts/secrets]] — Secret management for MCP server credentials and API keys.
- [[concepts/mcp-gateway-pattern]] — The MCP Gateway pattern provides centralized routing and auth for enterprise MCP deployments.
- [[entities/david-cramer]] — Sentry founder, MCP practitioner with production deployment experience
- [[entities/sentry]] — Application monitoring platform with production remote MCP server
- [[references/aief2025-mcp-is-not-good-yet-david-cramer-sentry]] — Full talk reference
