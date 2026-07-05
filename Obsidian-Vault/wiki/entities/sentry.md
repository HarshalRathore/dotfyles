---
title: "Sentry"
tags:
  - company
  - saas
  - observability
  - apm
  - developer-tools
  - application-monitoring
aliases: [Sentry.io, getsentry]
sources:
  - "[[sources/watchv=fci4jt86gsw]]"
summary: "Application monitoring and bug tracking platform. Built a production MCP server exposing curated agent workflows for debugging and root cause analysis."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Sentry

Sentry is an application monitoring platform that provides error tracking, performance monitoring, and root cause analysis for production software. Founded by [[entities/david-cramer|David Cramer]], it is a B2B SaaS company whose customers include a large portion of the internet's production applications ("If you have bugs on the internet, they probably go to us").

## MCP Server

Sentry built and shipped an MCP ([[concepts/model-context-protocol|Model Context Protocol]]) server as an internal project. The server exposes curated agent workflows — not raw API endpoints — designed for agent consumption within IDEs like [[entities/cursor-ai|Cursor]] and VS Code.

Key design decisions:
- **Markdown-first responses** — returns structured Markdown from tool endpoints instead of raw JSON, because models reason better about language. ^[extracted]
- **Crafted tool descriptions** — treats tool descriptions as context that agents will use for reasoning, not as API documentation. ^[inferred]
- **OAuth 2.1 via Cloudflare Workers** — uses Cloudflare's OAuth shim on Workers to proxy their standard OAuth 2.0 to MCP's OAuth 2.1 requirement. ^[extracted]

## Seer Agent

Sentry's "Seer" is an internal AI agent for high-quality root cause analysis. It is exposed both through Sentry's web UI and as an MCP tool — but the MCP tool suffers from the protocol's lack of streaming response support, requiring a polling pattern instead. ^[extracted]

## Related

- [[entities/david-cramer]] — Founder
- [[concepts/model-context-protocol]] — The protocol Sentry's MCP server implements
- [[entities/cloudflare]] — Cloudflare Workers infrastructure used for MCP authentication proxy
- [[concepts/enterprise-mcp-deployment]] — Remote MCP deployment approach Sentry follows
