---
title: "Agent Tools"
category: concepts
tags: [agent-tools, coding-agents, code-editor, terminal, web-browser, agent-architecture]
summary: The three core tools of a software development agent: code editor (diff-based), terminal (command execution), and web browser (accessibility trees, screenshots). These replace the human engineer's IDE, shell, and browser.
sources:
  - "AIEF2025 - Software Development Agents: What Works and What Doesn't - Robert Brennan, OpenHands - https://www.youtube.com/watch?v=o_hhkJtlbSs"
  - "AIEF2025 - How to Build Planning Agents without losing control - Yogendra Miraje, Factset - https://www.youtube.com/watch?v=sl3icG-IjHo"
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: "[[concepts/agent-architecture|Agent Architecture]]"
    type: extends
  - target: "[[concepts/agent-code-editor|Agent Code Editor]]"
    type: related_to
  - target: "[[concepts/agent-terminal|Agent Terminal]]"
    type: related_to
  - target: "[[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]]"
    type: related_to
---

# Agent Tools

The three core tools that a software development agent needs to operate — these map directly to the human software engineer's toolkit: code editor, terminal, and web browser. ^[extracted]

## 1. Code Editor

The most deceptively simple tool. The naive approach — pass the old file to the LLM, have it output the entire new file — is inefficient for large files where only a line or two changes.

**Best practice:** Diff-based editing (find-and-replace). The LLM specifies only the changes needed, not the entire file content. This saves significant tokens on large files. AST navigation may also be provided for structural code understanding. ^[extracted]

## 2. Terminal

Text in, text out — but with significant complexity:

- **Long-running commands** — What to do when a command produces no stdout for a long time? Kill it or wait?
- **Parallel execution** — Running multiple commands simultaneously
- **Background processes** — Starting a server, then running curl against it
- **Command sequencing** — Coordinating dependent commands ^[extracted]

## 3. Web Browser

The most complicated agent tool, with multiple approaches:

- **Naive approach** — Pass raw HTML (expensive due to cruft the LLM doesn't need)
- **Accessibility tree** — Cleaner structure, same visual layout without HTML noise
- **Markdown conversion** — Another clean representation for LLM consumption
- **Screenshot-based interaction** — Labeled nodes on screenshots for click actions
- **JavaScript execution** — Allowing the LLM to write JS against the page ^[extracted]

A recent contribution to OpenHands doubled its accuracy on web browsing by improving the screenshot-based interaction approach. ^[extracted]


## Tool Design Philosophy for Enterprise Agents

[[entities/yogendra-miraje|Yogendra Miraje]] (FactSet) at AIEF2025 emphasized that tools must be designed from the agent's perspective, not the developer's. Each tool should provide three layers of description:

1. **Tool Purpose** — Helps the agent decide which tool to select from the available set
2. **Tool Detailed Description** — Tells the agent when this tool needs to be invoked
3. **Input-Output Contracts** — Tells the agent how to use the tool (specific parameters, expected inputs, return value structure)

Validation checks on tool inputs act as safety breaks, preventing the agent from proceeding with invalid or dangerous operations. ^[extracted]

The relationship between tools and microservices is not one-to-one — it's up to the designer how to structure tools so the agent can reason about which tool to use and understand the underlying microservices. Building these tools is the most time-consuming part of building agentic workflows in enterprises. ^[extracted]

## MCP Tool Server Standard

Miraje recommended building MCP tool servers for your tools, providing standardized exposure to agents with consistent schema definitions and discovery mechanisms. ^[extracted]
## Relationship to Agent Architecture

These three tools form the action layer of the agent loop. The LLM serves as the brain, deciding which tool to use and what action to take. The tool output feeds back into the LLM for the next iteration. ^[inferred]

## Related

- [[concepts/agent-loop|Agent Loop]] — The loop that drives tool usage
- [[concepts/agent-code-editor|Agent Code Editor]] — Deep dive on editor approaches
- [[concepts/agent-terminal|Agent Terminal]] — Deep dive on terminal challenges
- [[concepts/vision-vs-text-web-agents|Vision vs Text Web Agents]] — Browser interaction paradigms
- [[concepts/agent-sandboxing|Agent Sandboxing]] — Security for tool execution
- [[entities/openhands|OpenHands]] — Platform implementing all three tools
