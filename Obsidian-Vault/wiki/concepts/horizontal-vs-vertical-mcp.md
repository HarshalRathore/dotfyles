---
title: "Horizontal vs Vertical MCP"
category: concepts
tags: [mcp, horizontal-mcp, vertical-mcp, ai-agents, tool-discovery, browserbase, compliance]
sources:
  - "AIEF2025 - The Web Browser Is All You Need - Paul Klein IV, Browserbase - https://www.youtube.com/watch?v=YRGjll7uu5w"
summary: "Two MCP server models: vertical (specific tool calls for a specific domain) vs horizontal (broad perimeter, one server can do many things across many pages)."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[concepts/browser-as-integration-layer|Browser as Integration Layer]]"
    type: related_to
  - target: "[[concepts/mcp-native-integration|MCP Native Integration]]"
    type: related_to
  - target: "[[concepts/agent-tool-discovery|Agent Tool Discovery]]"
    type: related_to
---
# Horizontal vs Vertical MCP

MCP servers come in two models, each with different trade-offs for agent integration, CISO compliance, and scope. ^[extracted]

## Vertical MCP Servers

- **Scope**: Narrow, domain-specific
- **Pattern**: Direct tool calls for specific tasks
- **Example**: Linear MCP — "create a ticket," "assign someone to the ticket"
- **Best when**: The target system has a well-defined API and you want precise, typed tool calls
- **Paul's advice**: "If you are interacting with Salesforce, you probably should just use the Salesforce MCP. You don't need a browser there." ^[extracted]

## Horizontal MCP Servers

- **Scope**: Broad, general-purpose perimeter
- **Pattern**: One server with capabilities that span many pages/domains
- **Example**: Browser MCP server — "click a button on a page" works across any website
- **Advantage**: Onboard one server, automate the whole web. No need for one MCP server per integration.
- **CISO benefit**: Easier to approve — you onboard one server instead of hundreds of individual MCP servers. ^[extracted]

## Decision Framework

| | Vertical MCP | Horizontal MCP |
|---|---|---|
| Scope | Narrow, domain-specific | Broad, cross-domain |
| Tool calls | Direct, typed | General (click, type, navigate) |
| Onboarding | Per integration | One server for all |
| CISO approval | Harder (many servers) | Easier (one server) |
| Best for | Systems with good APIs | Legacy/API-less systems |

## Key Insight

The browser is a horizontal MCP server. It doesn't replace vertical MCPs — if a system has a good API, use the MCP for it. But for bespoke enterprise systems without MCP servers, the browser MCP is the practical alternative. ^[extracted]

## Related Pages

- [[entities/browserbase|Browserbase]] — Operates the most popular browser MCP server
- [[concepts/browser-as-integration-layer|Browser as Integration Layer]] — Why browsers are the universal bridge
- [[concepts/mcp-native-integration|MCP Native Integration]] — How MCP integrates into agents
- [[entities/paul-klein-iv|Paul Klein IV]] — Originator of this distinction
