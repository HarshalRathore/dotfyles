---
title: "Ubiquitous AI"
category: concepts
tags:
  - ai
  - integration
  - windsurf
  - mcp
  - context
  - developer-tools
summary: "The vision of AI being present and context-aware across all the tools and sources a developer uses — reading from Slack, GitHub, Google Docs, Figma, Jira, and any MCP-connected service, not just the IDE."
sources:
  - "[[sources/watchv=jvunpl5qo8q]]"
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Ubiquitous AI

**Ubiquitous AI** is the vision of AI being present and context-aware across all the tools and sources a developer uses — not confined to the IDE, but reading from and acting within every system in the developer's workflow. The concept was articulated by [[entities/kevin-hou|Kevin Hou]] of [[entities/windsurf|Windsurf]] at AIEF2025. ^[extracted]

## The Premise

Hou argues that for AI to be truly useful to software engineers, it must be "everywhere" — able to read and ingest context from every source a developer uses. A developer's workflow spans multiple categories: ^[extracted]

### Coding-Related Context
File reads, running terminal commands, viewing history, seeing which tabs are open in the editor.

### External Sources
GitHub commit history, PRs, web searches, documentation, online resources.

### Meta-Learning
Organizational best practices, engineering preferences, and the tacit knowledge that separates junior from senior engineers — all encoded in what makes good code.

## Implementation: Windsurf's Approach

Windsurf implements ubiquitous AI through:

- **Google Docs integration**: Fetching context from design docs
- **Figma integration**: Reading design files
- **One-click MCP connections**: Accessing information in Notion, Linear, Stripe, and any [[concepts/model-context-protocol|MCP]]-connected service
- **GitHub MCP**: Opening PRs with context from previous PRs

This is the practical implementation of the [[concepts/shared-timeline|shared timeline]] model — the AI must have access to all the same context the human has. ^[inferred]

## "Doing Everything"

Ubiquitous AI is not just about reading context — it's about acting across surfaces. The AI must be able to:

- Run terminal commands (deciding which to auto-execute vs. require approval)
- Control browsers (Windsurf browser previews, Chrome inspection)
- Write design docs, PRDs, wireframes
- Open and manage PRs
- Run code review
- Deploy to production

This is the "doing everything" part of Windsurf's tagline — ubiquitous AI reads from everywhere and acts across every surface a software engineer uses. ^[extracted]

## Related

- [[concepts/shared-timeline|Shared Timeline]] — The model that requires ubiquitous AI
- [[concepts/model-context-protocol|Model Context Protocol]] — The integration standard enabling ubiquitous AI
- [[concepts/always-on-ai|Always-On AI]] — The next step: AI working in the background
- [[concepts/ai-harness|AI Agentic Harness]] — The infrastructure enabling ubiquitous AI
