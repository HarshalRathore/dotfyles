---
title: Manus
category: entities
tags: [tool, agents, general-purpose-agent, context-engineering]
aliases: [Manus AI, manus.im]
relationships:
  - target: '[[concepts/context-engineering]]'
    type: related_to
sources:
  - https://manus.im/
  - https://manus.im/blog/Context-Engineering-for-AI-Agents-Lessons-from-Building-Manus
summary: "Manus — AI agent company betting on context engineering over a trained end-to-end agentic model; KV-cache-first design, logit-masking tool control, file-system-as-context, todo.md recitation."
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-08-13
tier: supporting
created: 2026-08-13T15:00:00Z
updated: 2026-08-13T15:00:00Z
---

# Manus

**Manus** (manus.im) is a general-purpose AI agent company. Its founding bet, per co-founder [[entities/yichao-ji|Yichao 'Peak' Ji]], was **context engineering over trained agentic models**: ship improvements in hours instead of weeks, and stay orthogonal to underlying model progress ("the boat, not the pillar stuck to the seabed"). The agent framework was rebuilt four times via "Stochastic Graduate Descent". ^[extracted]

## Notable Design Principles

- **KV-cache-first**: stable prompt prefixes, append-only context, ~100:1 input:output token ratio in agent loops. ^[extracted]
- **Mask, don't remove**: context-aware state machine masks token logits to constrain actions instead of dynamically adding/removing tool definitions. ^[extracted]
- **File system as ultimate context**: unlimited, persistent, restorable compression (keep the URL/path, drop the content). ^[extracted]
- **Recitation**: step-by-step todo.md rewriting pushes the global plan into recent attention (tasks average ~50 tool calls). ^[extracted]
- **Keep failures in context** as evidence for error recovery. ^[extracted]

## Related

- [[references/manus-context-engineering-lessons|Context Engineering for AI Agents — Lessons from Building Manus]]
- [[entities/yichao-ji|Yichao 'Peak' Ji]]
- [[misc/web-yingchao-dev-blog-compaction|Compaction — Yingchao Dai]] (cites Manus's "single most important metric" claim)
