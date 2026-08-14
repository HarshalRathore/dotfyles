---
title: OpenCode
category: entities
tags: [coding-agents, open-source, lsp, terminal, ai-coding, privacy, compaction]
aliases: [opencode, OpenCode AI]
sources:
  - "https://opencode.ai/"
  - "https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/"
  - "https://yingchao.dev/blog/compaction"
created: "2026-08-11"
updated: "2026-08-13T15:00:00Z"
summary: "Open-source AI coding agent (195K+ stars, 16M devs) in terminal, IDE, desktop. Codebase awareness via LSP + text search, not embeddings; compaction via 8k-token context + checkpoint."
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: "2026-08-11"
tier: supporting
relationships:
  - target: '[[entities/cursor-ai]]'
    type: related_to
---

# OpenCode

**OpenCode** is an open-source AI coding agent that helps write code in the **terminal, IDE, or desktop**. ^[extracted]

## Scale & Community

Over **195,000 GitHub stars**, 950 contributors, 13,000+ commits; used by **16M+ developers monthly**. ^[extracted]

## Key Features

- **LSP enabled** — automatically loads the right language servers for the LLM
- **Multi-session** — multiple agents in parallel on the same project
- **Share links** — share a link to any session for reference/debugging
- **Provider flexibility** — GitHub Copilot login, ChatGPT Plus/Pro login, or 75+ LLM providers via Models.dev (including local models)
- **Any editor** — terminal interface, desktop app, IDE extension
- **Privacy-first** — does not store any code or context data, enabling use in privacy-sensitive environments
- **Zen** — access to a handpicked, benchmarked set of models for coding agents

## Compaction Implementation

Per [[misc/web-yingchao-dev-blog-compaction|Yingchao Dai's analysis]] of the opencode source: ^[extracted]

- On compaction, opencode keeps the latest **8k tokens** as recent context and asks a **tool-free LLM** to summarize the older portion, then saves a **conversation checkpoint** (summary + recent context) and sends it as **one user message** wrapped in `<conversation-checkpoint>` tags in the next request. ^[extracted]
- Unlike Pi, opencode serializes all compacted history — old and recent — into **plain text** (no tool-call structure). Benefits: saves tokens and avoids accidental tool calls during summarization. Cost: lossy serialization — truncation of tool results and loss of attachments/images. ^[extracted]

## Contrast with Cursor's Retrieval Approach

Per the [[misc/web-towardsdatascience-com-how-cursor-actually-indexes|TDS pipeline article]], OpenCode works directly on the codebase using **text search, file matching, and LSP-based navigation** rather than embedding-based semantic search. Result: strong **structural awareness** but without the deeper **semantic retrieval** capabilities of [[entities/cursor-ai|Cursor]]. ^[extracted]

## Concepts
- [[concepts/codebase-rag|Codebase RAG]] — the embedding-based approach OpenCode eschews
- [[concepts/embedding-based-search|Embedding-Based Search]]
- [[concepts/agent-code-editor|Agent Code Editor]]
- [[concepts/agentic-coding|Agentic Coding]]
- [[concepts/context-management-for-agents|Context Management for Agents]] — checkpoint-based compaction

## Related
- [[entities/cursor-ai|Cursor]] — embedding-based semantic retrieval comparison

## Sources
- https://opencode.ai/
- https://towardsdatascience.com/how-cursor-actually-indexes-your-codebase/
- https://yingchao.dev/blog/compaction
