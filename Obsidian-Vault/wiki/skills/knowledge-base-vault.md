---
title: Knowledge Base Vault
category: go-to-market
tags:
  - knowledge-base
  - vault
  - obsidian
  - context
  - agent-training
  - shared-brain
sources:
  - https://x.com/i/article/2089714600405356544
summary: Every GTM workflow reads from a shared knowledge base (a folder of markdown/Obsidian files) before drafting anything — making it the persistent training data for all agents.
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: '2026-08-18'
tier: supporting
created: '2026-08-18'
updated: '2026-08-18'
relationships:
  - type: uses
    target: gtm-agent-machine
  - type: related_to
    target: viktor-ai-employee
  - type: derived_from
    target: obsidian
---

# Knowledge Base Vault

Every workflow in the [[gtm-agent-machine]] reads from one shared knowledge base before it drafts anything. This shared brain — the strongest version being a folder of markdown files — is the persistent training data for all agents. The guide states: "the agents are interchangeable, the vault is the business."^[extracted]

## Key Ideas

- **Shared brain before writing**: Every agent reads the knowledge base before producing any output. This ensures consistency across workflows and embeds business context directly into agent behavior.^[extracted]
- **Obsidian vault as recommended implementation**: The guide identifies Obsidian as the "operator favorite" because it stores text files on disk with links between them — readable by both humans and agents.^[extracted]
- **One-note-per-topic structure**: The vault is organized around what GTM needs to know, with one note per topic:^[extracted]
  - **What you sell**: price, inclusions, hard boundaries on what you refuse to do.
  - **Who buys**: target verticals, qualified lead criteria, bad-fit lead criteria.
  - **How you write**: tone guidelines, banned words, five best messages/posts as style examples.
  - **Market map**: competitors, category pages, the "rooms" where buyers already sit.
  - **Workflow runbooks**: stage-by-stage workflow descriptions with agent checklists and the approval checkpoint.
  - **Standing rules**: every decision about outreach, pricing, or content that should never be re-argued.
- **The standing rules note**: This is identified as "the one note nobody builds and everyone needs." Every time an operator corrects an agent, the correction gets one line in this note. Every agent reads it before working, so corrections become permanent rather than being repeated. This effectively creates a persistent learning loop.^[extracted]
- **Knowledge base as training**: The vault functions as the system's training data. Agents are interchangeable — you could swap LLMs, tools, or platforms — but the vault is what makes the system unique to a specific business.^[extracted]
- **Connection to [[viktor-ai-employee]]**: On Viktor, the pinned governance message at the top of each channel serves as a "miniature" version of the full vault.^[extracted]

## Open Questions

- How is the vault structured technically — what file naming conventions, link patterns, or metadata schema should be used?
- How do multiple agents coordinate when they all read the same vault simultaneously?
- Can the vault be version-controlled (e.g., Git), and does the guide address conflict resolution?
- What happens when the vault grows large? Are there retrieval strategies (embedding search, keyword search)?
- Can the vault be shared across organizations or is it inherently personal?

## Sources

- **How to build a GTM machine from 0 to $10k MRR** by @EXM7777 (Machina). [Source](https://x.com/i/article/2089714600405356544)
