---
title: "MCP Registry API"
category: concepts
tags: [mcp, registry-api, server-discovery, mcp-server, protocol-roadmap, draft-spec]
summary: "An MCP feature in development that would provide a standardized API for models to discover and connect to MCP servers, reducing the friction of finding and integrating with tools."
sources:
  - "AIEF2025 - MCP: Origins and Requests For Startups — Theodora Chu, Model Context Protocol PM, Anthropic - https://www.youtube.com/watch?v=x-8pBqWiTzk"
provenance: { extracted: 0.85, inferred: 0.10, ambiguous: 0.05 }
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:00:00Z
updated: 2026-07-05T00:00:00Z
relationships:
  - target: "[[concepts/mcp|Model Context Protocol]]"
    type: extends
  - target: "[[concepts/mcp-compliance-ciso-governance|MCP Compliance and CISO Governance]]"
    type: related_to
---

# MCP Registry API

The MCP Registry API is a feature in development that would provide a standardized API for models to discover and connect to MCP servers. It aims to reduce the friction of finding and integrating with tools across the MCP ecosystem. ^[extracted]

## Purpose

Currently, MCP clients need to be manually configured with the servers they should connect to. The Registry API would make it "a lot easier for models to actually" discover, evaluate, and connect to MCP servers — creating a standardized discovery layer for the ecosystem. ^[extracted]

## Relationship to Server Simplicity

The Registry API aligns with MCP's [[concepts/mcp-server-simplicity-optimization|server simplicity optimization]]: by providing a standardized discovery mechanism, it reduces the burden on server builders to handle client discovery and onboarding logic. ^[inferred]

## Status

As of the AIEF2025 talk (July 2025), the Registry API was "making progress" but was not yet available in the spec. ^[extracted]

## Related

- [[concepts/mcp|Model Context Protocol]] — MCP protocol overview
- [[concepts/mcp-server-simplicity-optimization|MCP Server Simplicity Optimization]] — Protocol design philosophy
- [[concepts/mcp-compliance-ciso-governance|MCP Compliance and CISO Governance]] — Discovery and governance considerations
