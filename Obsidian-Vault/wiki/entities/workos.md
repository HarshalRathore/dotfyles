---
title: WorkOS
tags:
- company
- enterprise
- security
- auth
sources:
- 'https://www.youtube.com/watch?v=0mqya52iwqu'
- 'https://www.youtube.com/watch?v=d4dswf-__rm'
summary: Enterprise security vendor that provides auth, authorization, SSO, audit logs, and DLP infrastructure for AI labs and companies building agentic and MCP-based products.
provenance:
  extracted: 0.6
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
category: entities
tier: supporting
created: '2026-07-04T15:08:25.939234+00:00'
updated: '2026-07-04T15:08:25.939234+00:00'
---
# WorkOS

WorkOS is an enterprise security vendor that sells to AI labs and AI-native companies. Rather than building custom security and auth infrastructure, WorkOS provides the "glue" that lets companies build AI agents and MCP servers then seamlessly scale and sell them into enterprise customers. ^[inferred]

The company focuses on the full enterprise auth stack: single sign-on (SSO), lifecycle management, fine-grained access controls with high performance, audit logs (including GDPR-specific AI logging requirements), data loss prevention (DLP), bot blocking, and input validation against prompt injection.

## Enterprise MCP Stack

WorkOS's product suite covers the operational concerns that emerge when MCP (Model Context Protocol) servers move from local development to public enterprise deployment:

- **Authentication & Authorization** — User login, scope-based access controls, admin privilege management for MCP resources.
- **SSO & Lifecycle Management** — Enterprise single sign-on provisioning of MCP server access, using SSO to grant and revoke access to internal AI resources. ^[inferred]
- **Audit Logging** — GDPR-specific logging requirements for AI workloads, instant response readiness for enterprise compliance.
- **DLP & Security** — Data loss prevention to prevent data exfiltration through MCP servers, bot blocking on signup, input validation to prevent prompt injection attacks.
- **Dynamic Client Registration Handling** — MCP servers dynamically register clients as OAuth-style applications, which requires adapted admin dashboards and auth management tooling.

## Agent Identity Middleware Pattern

At AI Engineer World's Fair 2025, [[entities/michael-grinich|Michael Grinich]] articulated WorkOS's approach to [[concepts/agent-identity|agent identity]]: treat agents as untrusted code and place an authorization middleware layer between agentic code and enterprise resources. This is the [[concepts/agent-middleware-trust-boundary|agent middleware trust boundary]] pattern. ^[extracted]

WorkOS implements this through:
- **AuthKit** — authentication product handling login, SSO, and session management for agent workloads. Used by [[entities/cursor-ai|Cursor]]. ^[extracted]
- **FGA (Fine-Grained Authorization)** — granular permissions that support dynamic scope negotiation for agent runtime needs. ^[extracted]
- **Fraud and abuse detection** — bot blocking and anomaly detection for agent-originated traffic patterns. ^[extracted]

## CIAM for AI

Grinich's conference talk introduced four identity architecture patterns for agentic systems, reflecting WorkOS's production experience with AI company customers (their fastest-growing segment):

- [[concepts/persona-shadowing|Persona Shadowing]] — scoped-down shadow identities
- [[concepts/delegation-chains|Delegation Chains]] — token-based authorization chains
- [[concepts/capability-based-tokens|Capability Tokens]] — action-specific, time-bound tokens
- Escalation to humans — human-in-the-loop approval (with consent fatigue caveat)

He also predicted the [[concepts/agent-traffic-inversion|agent traffic inversion]]: from 95% human traffic today to 95% agent traffic in the future, making identity infrastructure critical for all software. ^[extracted]

## Known Customers

- AI labs that "do not want to do the really painful annoying work to scale the security and auth operations into the enterprise."
- [[entities/cursor-ai|Cursor]] — uses AuthKit for authentication

## Related

- [[entities/michael-grinich]] — CEO of WorkOS, originator of the CIAM for AI talk
- [[entities/nick-nisi]] — DX Engineer at WorkOS, maintaining SDKs across 8+ languages and 20+ repos.
- [[entities/tobin-south]] — Research fellow at Stanford and WorkOS team member focused on AI agent safety and enterprise MCP.
- [[concepts/agent-identity]] — Authn/authz paradigm for agents
- [[concepts/agent-middleware-trust-boundary]] — The middleware pattern WorkOS implements
- [[concepts/persona-shadowing]] — Shadow identity pattern
- [[concepts/delegation-chains]] — Token chain pattern
- [[concepts/capability-based-tokens]] — Capability token pattern
- [[concepts/agent-traffic-inversion]] — Traffic prediction
- [[concepts/rbac]] — Role-based access control, foundational to WorkOS's fine-grained access management.
- [[concepts/oidc]] — OpenID Connect, the protocol underlying SSO implementations.
