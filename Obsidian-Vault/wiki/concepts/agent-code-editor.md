---
title: "Agent Code Editor"
category: concepts
tags: [agent-tools, code-editor, diff-editing, token-efficiency, ast]
summary: >-
  How coding agents edit source code: diff-based (find-and-replace) editing vs full-file regeneration. Diff-based editing saves tokens on large files. AST navigation may supplement text-based editing.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
provenance:
  extracted: 0.88
  inferred: 0.12
  ambiguous: 0.00
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-tools|Agent Tools]]"
    type: extends
  - target: "[[concepts/llm-big-text-into-small-text|LLM: Big Text Into Small Text]]"
    type: related_to
  - target: "[[concepts/context-management-for-agents|Context Management for Agents]]"
    type: related_to
---

# Agent Code Editor

How coding agents edit source code within a repository. The key design decision is between diff-based editing and full-file regeneration. ^[extracted]

## Full-File Regeneration (Naive Approach)

Pass the old file to the LLM, have it output the entire new file. This is simple but wasteful:

- For a 1,000-line file where only one line changes, the LLM outputs all 1,000 lines
- Significant token waste on lines that are not changing
- Slower due to larger context windows
- More expensive per edit

## Diff-Based Editing (Best Practice)

The LLM specifies only the changes needed — a find-and-replace operation:

- Identifies the exact location and content to replace
- Specifies only the new content
- The agent applies the diff to the file
- Saves tokens, reduces context window usage, speeds up execution

This is the approach used by most contemporary coding agents including OpenHands. ^[extracted]

## AST Navigation (Optional Enhancement)

Some agents provide abstract syntax tree access to enable structural code understanding:

- Navigate code by symbol, function, or class rather than line numbers
- Understand code relationships (imports, dependencies, call chains)
- More precise edits on complex codebases

## Relationship to Token Efficiency

Diff-based editing is a form of [[concepts/llm-big-text-into-small-text|big text into small text]] optimization — reducing the amount of context the LLM must process and generate per edit. This directly impacts cost and speed. ^[inferred]

## Related

- [[concepts/agent-tools|Agent Tools]] — The three core agent tools
- [[concepts/agent-loop|Agent Loop]] — The loop that drives edit decisions
- [[concepts/context-management-for-agents|Context Management for Agents]] — Token efficiency matters
- [[concepts/llm-big-text-into-small-text|LLM: Big Text Into Small Text]] — Context optimization
- [[entities/openhands|OpenHands]] — Uses diff-based editing
