---
title: "Cascade"
tags:
  - agent
  - windsurf
  - ai-agent
  - developer-tools
  - aief2025
aliases:
  - Cascade
  - Windsurf Cascade
sources:
  - "AIEF2025 - Mastering Engineering Flow with Windsurf - Eashan Sinha, Windsurf - https://www.youtube.com/watch?v=W_5tzQY-hVs"
  - "AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk"
provenance:
  extracted: 0.90
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
  - target: [[entities/windsurf|Windsurf]]
    type: implements
  - target: [[concepts/flow-awareness|Flow Awareness]]
    type: uses
  - target: [[concepts/context-engine-vs-rag|Context Engine vs RAG]]
    type: uses
  - target: [[concepts/agent-evolution-co-pilot-to-agent|Agent Evolution]]
    type: extends
---

# Cascade

Cascade is the AI agent powering the [[entities/windsurf|Windsurf]] editor. It was the **first agentic IDE** in the developer tools space, and after its launch, many similar products followed, recognizing that the agentic IDE experience was the direction the industry was heading. ^[extracted]

## Design Philosophy

Cascade is designed around **flow awareness** — understanding the implicit intent of the user by tracking their actions, edits, commands, terminal activity, clipboard content, and recently edited files. ^[extracted] This context is fed into the agent's trajectory so that Cascade can predict the user's next step, creating an experience where it feels like the editor is "reading your mind." ^[extracted]

## Capabilities

Cascade goes beyond single-response chatbots by combining:

- **Autonomous operation** — iterative, multi-step task execution with trajectory adjustment
- **Tool calling** — MCP server integration and function execution
- **User understanding** — tracking user behavior patterns over time
- **Context engine** — a proprietary context retrieval system that goes beyond RAG/embedding-based search
- **Workflow support** — bridging the gap between agent unpredictability and deterministic workflow execution

## Relationship to Co-pilots

Eashan Sinha described Cascade as taking "the best of both worlds" — combining the collaborative power of a chatbot interface with the autonomous and tool-calling capabilities of an agent, creating a unified experience where developers and AI operate as one team rather than fighting against each other. ^[extracted]

## Related

- [[entities/windsurf]] — Product that powers Cascade
- [[concepts/flow-awareness]] — Flow awareness is Cascade's core design principle
- [[concepts/context-engine-vs-rag]] — Cascade's context engine approach
- [[concepts/agent-evolution-co-pilot-to-agent]] — Cascade as the agent evolution
- [[concepts/agent-teammate-relationship]] — Cascade designed as teammate, not tool
- [[references/aief2025-the-eyes-are-the-context-window-to-the-soul-sam-fertig-windsurf]] — Sam Fertig's AIEF2025 talk on context philosophy
