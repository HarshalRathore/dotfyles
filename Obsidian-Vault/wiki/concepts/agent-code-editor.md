---
title: "Agent Code Editor"
category: concepts
tags: [agent-tools, code-editor, diff-editing, token-efficiency, ast]
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
  - "https://commandcode.ai/docs/harness-engineering/read-tool"
summary: "How coding agents edit source: diff-based (find-and-replace) vs full-file regeneration — diff editing saves tokens; AST navigation may supplement; reads dominate the context bill."
provenance:
  extracted: 0.88
  inferred: 0.12
  ambiguous: 0.00
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-08-09
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

## Reading: The Context-Building Half of the Edit Loop

Every edit starts with a read; the token bill of a coding session is "mostly reads building context." ^[extracted] [[entities/commandcode|Command Code]]'s v1 read tool (see [[skills/read-tool-engineering|Read Tool Engineering]] and [[references/command-code-read-tool-harness-engineering|the deep dive]]) treats the read as a **compiler that turns the filesystem into the model's context** — every decision inside it is a token-budget decision: ^[extracted]

- Three ceilings bound what enters context: a 2,000-line window, a 128 KB byte budget, and a 2,000 ch/line clamp — a single minified line inside the window can otherwise eat the entire budget.
- Failure modes name their own recovery (`"offset=1847"`, `"retry smaller"`) so the model never burns turns re-reading after a miss.
- A partial-view ledger records what the model has seen; the write tool refuses to overwrite unseen parts — read and write tools are one coupled system, and their relational invariants are where the real bugs live.

Edit-side efficiency (diffing) and read-side efficiency (ceilings, recovery, ledger) are two halves of the same cost problem: both decide how many tokens the model pays for work it didn't need. ^[inferred]

## Related

- [[concepts/agent-tools|Agent Tools]] — The three core agent tools
- [[concepts/agent-loop|Agent Loop]] — The loop that drives edit decisions
- [[concepts/context-management-for-agents|Context Management for Agents]] — Token efficiency matters
- [[concepts/llm-big-text-into-small-text|LLM: Big Text Into Small Text]] — Context optimization
- [[entities/openhands|OpenHands]] — Uses diff-based editing
