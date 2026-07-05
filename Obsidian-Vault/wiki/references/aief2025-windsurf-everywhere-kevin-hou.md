---
title: "Windsurf everywhere, doing everything, all at once"
category: references
tags:
  - aief2025
  - windsurf
  - coding-agent
  - software-engineering
  - agent-harness
  - fine-tuning
  - model-context-protocol
summary: "Kevin Hou, lead product at Windsurf, presents Windsurf's vision of ubiquitous AI in software engineering — a shared timeline between human and AI, the SweeOne model trained for workflows not just code, and the data flywheel connecting product usage to model improvement."
sources:
  - "[[sources/watchv=jvunpl5qo8q]]"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.70
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Windsurf everywhere, doing everything, all at once

Kevin Hou, lead product at [[entities/windsurf|Windsurf]], delivered this talk at AI Engineer World's Fair 2025. The presentation outlines Windsurf's product philosophy, technical architecture, and roadmap for making AI ubiquitous in software engineering.

## Key Claims

Windsurf generates approximately 90 million lines of code per day, equating to over 1,000 messages per minute. ^[extracted] The product launched in November 2024 (originally under the name Codium, later rebranded to Windsurf) and has reached millions of users. ^[extracted]

Windsurf organizes its product evolution into "waves" — they have shipped 10 waves including web search, [[concepts/model-context-protocol|MCP]] support, auto-generated memories, deploys, and parallel agents. ^[extracted]

The AI agent can visually iterate on web applications through [[concepts/windsurf-browser-previews|Windsurf Browser Previews]], taking control of Chrome to inspect DOM elements and read the JS console. ^[extracted]

The core product philosophy centers on a shared timeline between the human developer and the AI agent, which Hou identifies as Windsurf's "secret sauce" for making users feel like the editor is reading their minds. ^[extracted]

## Architecture: The Software Engineering Timeline

Hou frames the developer workflow as a timeline extending far beyond the IDE. The timeline includes three categories of context sources: coding-related (file reads, terminal commands, editor history), external sources (GitHub commits, PRs, web searches, documentation), and meta-learning (organizational best practices, engineering preferences encoded in code quality). ^[extracted]

Windsurf must therefore read context from Google Docs, Figma files, and connect via one-click to any [[concepts/model-context-protocol|MCP]] service (Notion, Linear, Stripe, etc.) while also performing actions — writing design docs, PRDs, wireframing, testing, opening PRs via GitHub MCP, running [[concepts/self-driving-code-review|self-driving code review]], and deploying to Netlify with one click. ^[extracted]

## SweeOne: A Software Engineering Model

Windsurf built SweeOne, a model trained specifically for software engineering workflows rather than pure code generation. ^[extracted] It is evaluated on two offline benchmarks: an end-to-end task benchmark (tackling pull requests from intent to passing unit tests) and a conversational SweeTask benchmark (assisting mid-workflow in partially completed tasks). ^[extracted]

SweeOne achieves near-frontier model results at a fraction of the cost with a significantly smaller team. ^[extracted] Users prefer SweeOne because it recognizes how they do work, not just how to generate code, and it is used at even higher frequency than models like 3.7 and 3.5. ^[extracted]

## The Data Flywheel

Hou describes Windsurf's data flywheel: ship the best product → developers use it as a skill multiplier → users find the frontier through thumbs up/down, accept/reject signals → Windsurf trains a better model, builds more tools, improves the agentic harness and checkpointing → repeat. ^[extracted]

The target is 99% agent, 1% human — asking users for final approval only. Timelines are currently 80-90% agent, 10-20% human. ^[extracted]

## Future Vision: Anytime, Anywhere Coding

Hou envisions a future where Windsurf works in the background, researching in parallel while the user works, only asking for approval. The vision extends to voice-activated coding from bed, the toilet, or the bus via Alexa — "the possibilities are endless." ^[extracted]

He emphasizes that Windsurf builds at the frontier so users can build more with the best technology, and that 2025 AI product development demands "harmony of model, data, and application" where the application mimics user behavior inside the model. ^[extracted]

## Related

- [[entities/windsurf|Windsurf]] — The product discussed
- [[concepts/developer-outer-loop|Developer Outer Loop]] — The outer loop challenge Windsurf addresses
- [[concepts/model-context-protocol|Model Context Protocol]] — Windsurf's one-click MCP integration
- [[concepts/ambient-agents|Ambient Agents]] — Windsurf's always-on vision
- [[concepts/ai-native-toolchain|AI-Native Toolchain]] — The broader trend Windsurf participates in
- [[concepts/windsurf-reviews|Windsurf Reviews]] — Automated async code review
- [[concepts/windsurf-waves|Windsurf Waves]] — Product evolution framework (10 waves)
- [[concepts/sweetask-benchmark|SweeTask Benchmark]] — Mid-workflow assistance evaluation
- [[concepts/windsurf-browser-previews|Windsurf Browser Previews]] — Visual iteration via Chrome control
