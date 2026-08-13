---
title: "AutoManus"
category: entities
type: entity
tags: [product]
aliases: [AutoManus MCP, AutoManus API]
sources:
  - "https://x.com/i/status/2084613319558635940"
created: "2026-08-11"
updated: "2026-08-11"
summary: "MCP server + API service (by Sean / Sean's AI Stories) that creates AI sales-representative agents from a company website in ~1 minute — WhatsApp chat, knowledge base, claim-and-verify, leads hub, web widget."
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.5
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
reviewed: false
---

# AutoManus

**Type:** Product — MCP server + API service for AI sales agents
**Developer:** [[entities/sean-ai-stories|Sean (Sean's AI Stories)]]
**Distribution:** MCP server repo + hosted API; demo via Claude Code MCP config

## Basic Information

- Creates a sales-representative agent from just a company name, website URL, and email — demo claims under one minute. ^[extracted]
- Works through Claude Code's MCP server config (`~/.claude/.../claude_desktop_config.json`), plus a standalone REST API for SaaS/agency use. ^[extracted]
- Agent behavior: scrapes the company website, answers inquiries, books calls (Calendly links), routes to the right company, and captures structured leads from conversations. ^[extracted]

## Description

AutoManus is Sean's commercial product demonstrated in segment 4 of the compilation video: a way to give any business an AI front-line sales agent without building from scratch. The flow: add the AutoManus MCP server to Claude Code → ask for a sales agent → it collects company name/URL/email → the backend scrapes the site and provisions an agent → test it via WhatsApp or web chat → claim ownership through an emailed verification link (domain-matching for security; unclaimed agents show a warning). Agents hold a scraped knowledge base, allow `add knowledge` tool calls, and turn conversations into structured leads with value estimates (demo: a $15K enterprise-customization lead). API mode creates agents directly in the agent hub with an API key; 100 free AI-generated responses offered as launch promo. ^[extracted]

## Related Entities

- [[entities/sean-ai-stories]] — founder
- [[entities/hermes-agent]] — the harness ecosystem the demo runs alongside (Claude Code MCP)
- [[entities/anthropic]] — Claude Code as the MCP host
- [[entities/cyrilxbt]] — the post that carried the demo video

## Related Concepts

- [[concepts/ai-harness]] — MCP as harness tooling
- [[concepts/loop-engineering]] — agent-side follow-up loop (reimbursement example in segment 2)
- [[concepts/agent-memory-types]] — knowledge base as semantic memory ^[inferred]

## Mentions in Source

> "Every AI product and agency business needs a way to talk to your customers... what you really want is a sales layer that will be the sales interface to speak to the world." — Sean, AutoManus demo ^[extracted]
