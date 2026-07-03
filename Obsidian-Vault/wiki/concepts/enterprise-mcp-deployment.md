---
title: "Enterprise-Ready MCP Deployment"
tags:
  - mcp
  - enterprise
  - deployment
  - ai-agents
sources:
  - "https://www.youtube.com/watch?v=0MqYA52iWQU"
summary: "The progression of MCP (Model Context Protocol) servers from local development through authenticated internal service to full enterprise-ready deployment with auth, SSO, audit, DLP, and dynamic client management."
provenance:
  extracted: 0.55
  inferred: 0.40
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
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

## Related

- [[concepts/rbac]] — Role-based access control principles underpin MCP authorization scoping.
- [[concepts/oidc]] — OpenID Connect is the protocol behind enterprise SSO for MCP.
- [[concepts/agent-loop]] — Agent loops are the workloads that consume MCP servers in production.
- [[concepts/secrets]] — Secret management for MCP server credentials and API keys.
- [[concepts/mcp-gateway-pattern]] — The MCP Gateway pattern provides centralized routing and auth for enterprise MCP deployments.
