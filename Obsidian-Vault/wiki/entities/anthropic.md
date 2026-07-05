---
title: "Anthropic"
tags:
  - organization
  - ai-company
  - llm
  - mcp
  - infrastructure
sources:
  - "[[sources/watchv=0f8mngpuycy]]"
  - "[[sources/watchv=0nhcyq8bbcm]]"
  - "[[sources/watchv=3mzs5gnelzm]]"
  - "[[sources/watchv=6avmhzpjptq]]"
  - "[[sources/watchv=lue8k2jqfkk]]"
summary: "AI safety and research company and creator of Claude, which originated the Model Context Protocol (MCP) and demonstrated Golden Gate Claude as a prominent mechanistic interpretability demo. Creator of Claude Code, an agentic coding tool. Claude has been gaining market share against OpenAI on multi-model platforms."
provenance:
  extracted: 0.65
  inferred: 0.28
  ambiguous: 0.07
base_confidence: 0.42
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-04
---

# Anthropic

Anthropic is an AI safety and research company and the creator of the Claude family of large language models. The company originated the Model Context Protocol (MCP) as an open standard for connecting AI models to external tools and data sources.

## Market Position

Per [[entities/sarah-guo|Sarah Guo]] (Conviction), Claude has been cutting into OpenAI's market share on multi-model platforms. OpenRouter data shows a "real mix" of model usage — Claude (Anthropic, yellow on the chart) alongside OpenAI (GPT), Google's Gemini (green), and emerging players like SSI and Thinking Machines. ^[extracted]

Guo also referenced the Anthropic Economic Index, which found that 40% of AI usage is still coding — far from 40% of the economic opportunity. She framed this as evidence that most domains remain unaddressed and engineers should be the "translators for the rest of the world." ^[extracted]

## Products

### Claude Code

Anthropic's agentic coding product, created by [[entities/boris-cherny|Boris Cherny]]. It provides terminal-first, unopinionated access to Claude models for software development. Key design principles:

- **Terminal-first** — works in any terminal (iTerm2, WSL, SSH, tmux, VS Code, Cursor)
- **Unopinionated** — no flashy UI, no scaffolding; Anthropic doesn't know what the right UX is yet because the model improves exponentially
- **Multiple modes** — terminal (raw access), IDE (integrated diffs and diagnostics), GitHub (runs on user's compute, data stays local)
- Supports Claude Pro and Claude Max plans

Boris Cherny articulated at AIEF2025 that Claude Code's minimalism is a deliberate response to rapid model evolution: "We're trying to stay unopinionated about what the product should look like because we don't know." ^[extracted]

## Claude 3.7 Sonnet

Claude 3.7 Sonnet was Anthropic's first reasoning model, released in February 2025. [[entities/simon-willison|Simon Willison]] described it as a "great model." ^[extracted]

Willison highlighted its creative response to the pelican-on-bicycle SVG benchmark: ^[extracted]

> "Pelicans can't ride bicycles. And Claude was like, well, what about if you put a bicycle on top of a bicycle? And it kind of works."


### Claude 4 Opus Thinking

Claude 4 Opus Thinking ranks among the current frontier model lineup per Artificial Analysis, positioned alongside O3, O4 Mini, DeepSeek R1, Gemini 2.5 Pro, and GROC 3 Mini Reasoning High in the intelligence index. ^[extracted]

## Related

- [[entities/boris-cherny]] — Creator of Claude Code, MTS at Anthropic
- [[entities/john-welsh]] — MTS who built Anthropic's internal MCP infrastructure
- [[concepts/model-context-protocol]] — The protocol Anthropic originated
- [[concepts/mcp-gateway-pattern]] — The gateway architecture Anthropic developed for MCP at scale
- [[concepts/multi-model-world]] — The commoditizing model market Claude competes in
- [[entities/claude-code]] — Anthropic's agentic coding product

## Internal MCP Infrastructure

- **Multiple endpoints** — operates both `api.anthropic.com` and `claw.ai` as separate endpoints, each requiring different OAuth redirect configurations. ^[inferred]
- **Internal MCP Gateway** — shared infrastructure providing a single point of entry for all MCP connections, with centralized routing, authentication, rate limiting, and observability.
- **Transport diversity** — uses WebSockets for internal transport, with awareness of gRPC for multiplexing and other transports as needed.
- **Credential portability** — central credential management means batch jobs and internal services authenticate without re-authorization.

## Protocol Contributions

- Originator of the Model Context Protocol (MCP) — an open standard for AI-tool integration.
- All major AI labs represented in the MCP standards body, with Anthropic playing a leading role.
- MCP's JSON-RPC message specification and transport standard designed to be implementation-agnostic.

## Perceived Market Position

[[entities/sharif-shameem|Sharif Shameem]] characterized Anthropic's marketing of Claude as a coding and reasoning model as "selling an intergalactic spaceship as a toaster because one of its surfaces gets hot every once in a while" — arguing that Claude's actual capabilities far exceed its marketed use case, a symptom of the broader [[concepts/latent-model-capabilities|latent model capabilities]] phenomenon. ^[extracted]

## Golden Gate Claude Interpretability Demo

In a widely-circulated [[concepts/mechanistic-interpretability|mechanistic interpretability]] demo, Anthropic researchers identified a set of neurons inside Claude that represent the concept of the Golden Gate Bridge. By forcing these neurons to always fire regardless of the conversation topic, they created "Golden Gate Claude" — a version of the model that became obsessed with the Golden Gate Bridge and would bring it up in any context. This demo is one of the most prominent examples of feature identification and steering in practice, and was used by [[entities/mark-bissell|Mark Bissell]] of [[entities/goodfire-ai|Goodfire AI]] at the AI Engineer World's Fair 2025 to illustrate the practical value of interpretability. ^[extracted]

## Sources

- [[references/why-care-about-ai-interpretability-bissell-goodfire-2025]] — Reference discussing the Golden Gate Claude demo
