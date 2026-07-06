---
title: AI Coding as Agent's Primary Interface
category: concepts
tags:
- ai-coding
- agent-interface
- llm-editor
- code-understanding
- ai-editor
- developer-tooling
summary: The pattern where AI editors (Cursor, Windsurf, Claude Code) become the primary interface for understanding and modifying codebases, consuming structured documentation directly rather than reading...
sources:
- AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04 00:00:00+00:00
updated: 2026-07-04 00:00:00+00:00
relationships:
- target: '[[concepts/llm-as-primary-audience|LLM as Primary Audience]]'
  type: extends
- target: '[[concepts/llms-txt|LLMs.txt]]'
  type: related_to
- target: '[[concepts/vibe-coding|Vibe Coding]]'
  type: related_to
---

## AI Coding as Agent's Primary Interface

AI Coding as Agent's Primary Interface describes the pattern where AI editors — Cursor, Windsurf, Claude Code — become the primary interface for understanding and modifying codebases. Instead of reading source code directly, developers feed structured documentation (llms.txt files, OpenAPI schemas, curl commands) into their AI editor, which then uses that context to write, modify, and understand code.

### The Workflow

When a developer clones an open-source cog model and doesn't understand the code:
1. They open the model in their AI editor
2. They drop a reference to the llms.txt file into the editor's context
3. The AI editor consumes that documentation and uses it to write code
4. The editor now "knows how to run this model" without the developer reading any source code

### Implications

This represents a fundamental shift in how developers interact with code. The source code becomes secondary to the structured documentation that describes it. The developer's mental model is built from the llms.txt file, not from reading the implementation. This is both powerful (fast onboarding to unfamiliar codebases) and risky (the documentation may be stale or incomplete).
