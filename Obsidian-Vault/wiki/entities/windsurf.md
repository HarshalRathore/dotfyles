---
title: Windsurf
tags:
- ai
- coding-agent
- developer-tools
- aief2025
aliases:
- Windsurf
relationships:
- target: '[[concepts/developer-outer-loop]]'
  type: related_to
- target: '[[entities/cursor-ai]]'
  type: related_to
- target: '[[entities/github-copilot]]'
  type: related_to
- target: '[[entities/cascade|Cascade]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=h6mrr5nbtza'
- 'https://www.youtube.com/watch?v=jvunpl5qo8q'
- 'AIEF2025 - The Eyes Are The (Context) Window to The Soul: How Windsurf Gets to Know You — Sam Fertig, Windsurf - https://www.youtube.com/watch?v=jUv5WSPo9fk'
summary: AI coding tool and editor that generates ~90M lines of code/day. Pioneered the shared timeline model between human and AI. Powers Cascade, the first agentic IDE. Introduced AI Flows in Nov 2024. Sh...
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.5
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
category: entities
---

# Windsurf

Windsurf is an AI coding tool and editor that generates ~90M lines of code per day. ^[extracted]

## Product Scale and Evolution

Windsurf generates approximately 90 million lines of code per day, equating to over 1,000 messages per minute. ^[extracted] The product launched in November 2024 (originally under the name Codium, later rebranded to Windsurf) and has reached millions of users. ^[extracted]

Windsurf organizes its product evolution into "waves" — they have shipped 10 waves including web search, [[concepts/model-context-protocol|MCP]] support, auto-generated memories, deploys, and parallel agents. ^[extracted]

## Cascade: The First Agentic IDE

Windsurf is powered by [[entities/cascade|Cascade]], which was **the first agentic IDE** in the developer tools space. After Windsurf launched Cascade, many similar products followed, recognizing that the agentic IDE experience was the direction the industry was heading. ^[extracted]

Cascade combines the collaborative power of a chatbot with the autonomous capabilities of an agent — taking "the best of both worlds" to create a unified experience where developers and AI operate as one team. ^[extracted]

## AI Flows: Unified Agentic Interface

In November 2024, Windsurf introduced **AI Flows** — a paradigm that combined the collaborative power of a chatbot interface with the autonomous and tool-calling capabilities of an agent in a single unified interface. ^[extracted] After Windsurf introduced AI Flows, many other companies and products followed suit, recognizing that a simple chat interface or standalone agent alone was insufficient. ^[extracted]

## Flow Awareness

Windsurf's approach to AI is built on **flow awareness** — understanding the implicit intent of the user by tracking their actions, edits, commands, terminal activity, clipboard content, and recently edited files. ^[extracted] This context is fed into the agent's trajectory so it can predict the user's next step, creating an experience where the editor feels like it's "reading your mind." ^[extracted]

Eashan Sinha noted that flow awareness is something "a lot of agents actually don't really consider right now." ^[extracted] It is a fundamental gap that flow-aware agents address.

## Context Engine

Windsurf approaches context differently than other products in the space. Rather than relying solely on RAG or embedding-based search, Windsurf leverages **a combination of multiple tools in tandem** to understand the codebase comprehensively. ^[extracted] This multi-pronged approach:

- Gets more accurate results and more relevant suggestions
- Reduces hallucinations — no guesswork
- Grounds the agent in the centralized source of truth: the codebase
- Provides tailored suggestions based on deep understanding of both user and codebase ^[extracted]

## The Shared Timeline Model

Windsurf's core differentiator is the **shared timeline** between the human developer and the AI agent — described by [[entities/kevin-hou|Kevin Hou]] (lead product at Windsurf) as the product's "secret sauce" for making users feel like the editor is reading their minds. ^[extracted] The shared timeline extends far beyond the IDE, ingesting context from Google Docs, Figma, Slack, Jira, and any [[concepts/model-context-protocol|MCP]]-connected service. ^[extracted]

## SweeOne: A Software Engineering Model

Windsurf built [[concepts/software-engineering-model|SweeOne]], a model trained specifically for software engineering workflows rather than pure code generation. SweeOne achieves near-frontier model results at a fraction of the cost, and users prefer it because "it recognizes how they do work, not necessarily how to generate code." ^[extracted]

## Ubiquitous AI: Reading Everywhere, Doing Everything

Windsurf implements the vision of [[concepts/ubiquitous-ai|ubiquitous AI]] — being present across all developer tools. It connects via one-click to [[concepts/model-context-protocol|MCP]] services (Notion, Linear, Stripe, GitHub), integrates with Google Docs and Figma, and performs actions beyond coding: writing design docs, opening PRs, running [[concepts/self-driving-code-review|self-driving code review]], and deploying to Netlify with one click. ^[extracted]

## Always-On Vision

Windsurf targets a future of [[concepts/always-on-ai|always-on AI]] — working in the background, researching in parallel, only asking for final approval. Timelines are currently 80-90% agent, 10-20% human, with a target of 99% agent. ^[extracted] This includes [[concepts/voice-activated-software|voice-activated coding]] from any location. ^[extracted]

## The Data Flywheel

Windsurf operates a [[concepts/data-flywheel|data flywheel]]: ship the best product → developers use it as a skill multiplier → users find the frontier through thumbs up/down and accept/reject signals → Windsurf trains a better model, builds more tools, improves the agentic harness and checkpointing → repeat. ^[extracted]

## Model-Data-Application Harmony

Windsurf exemplifies [[concepts/model-data-application-harmony|model-data-application harmony]] — the principle that successful 2025 AI products require tight alignment between model, data, and application, where the application mimics user behavior inside the model. ^[extracted]

## Agent-Teammate Philosophy

Windsurf champions the **agent-teammate relationship** — developers should treat AI agents like running mates and teammates, not as tools to be forced into submission. ^[extracted] Eashan Sinha attributed the common problem of developers fighting with their AI tools to tool builders, not developers: "It's not your fault as developers. It's ours." ^[extracted]

## Context in the AI Coding Tool Landscape

Windsurf is mentioned alongside [[entities/cursor-ai|Cursor]], [[entities/github-copilot|Copilot]], [[entities/v0|V0]], and [[entities/bolt|Bolt]] as part of the wave of AI tools that are dramatically accelerating code generation and creating the [[concepts/developer-outer-loop|developer outer loop bottleneck]]. ^[extracted]

## Related

- [[entities/cascade]] — Windsurf's AI agent, the first agentic IDE
- [[entities/cursor-ai|Cursor]] — AI coding tool mentioned alongside Windsurf
- [[entities/github-copilot|GitHub Copilot]] — AI coding tool; 46% of code on GitHub written by Copilot
- [[entities/v0|V0]] — AI coding tool mentioned alongside Windsurf
- [[entities/bolt|Bolt]] — AI coding tool mentioned alongside Windsurf
- [[concepts/developer-outer-loop|Developer Outer Loop]] — The bottleneck created by AI-accelerated code generation
- [[concepts/ai-flows]] — AI Flows paradigm introduced by Windsurf
- [[concepts/flow-awareness]] — Flow awareness is Windsurf's core differentiator
- [[concepts/context-engine-vs-rag]] — Windsurf's context engine approach
- [[concepts/agent-teammate-relationship]] — Windsurf's agent-teammate philosophy
- [[concepts/workflow-agent-spectrum]] — Windsurf bridges workflow determinism with agent flexibility
- [[references/aief2025-windsurf-everywhere-kevin-hou]] — Full talk by Kevin Hou
- [[references/aief2025-mastering-engineering-flow-windsurf-eashan-sinha]] — Full talk by Eashan Sinha
- [[references/aief2025-the-eyes-are-the-context-window-to-the-soul-sam-fertig-windsurf|The Eyes Are The (Context) Window to The Soul — Sam Fertig]] — Context philosophy: what context and how much context
