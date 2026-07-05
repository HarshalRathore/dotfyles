---
title: "Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments — Harold, Microsoft"
category: references
tags:
  - vibe-coding
  - github-copilot
  - vscode
  - enterprise
  - ai-assistant
  - aief2025
sources:
  - "[[sources/watchv=eafp8pds7h4]]"
provenance:
  extracted: 0.85
  inferred: 0.12
  ambiguous: 0.03
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments

Harold, a VS Code engineer at Microsoft, delivered a full workshop at AI Engineer World's Fair 2025 on evolving vibe coding from chaotic experimentation to enterprise-scale practice. The talk covers three stages of vibe coding maturity, practical VS Code Copilot workflows for each stage, and the guardrails needed for team adoption.

## Three Stages of Vibe Coding

Harold frames vibe coding as an evolution through three stages, each with distinct characteristics and use cases:

1. **YOLO Vibes** — Creativity and speed without constraints. Instant gratification from building something in a day. Used for rapid prototyping, proof of concepts, learning, and personal projects. Non-technical users (UX designers) can build mockups and communicate ideas. ^[extracted]
2. **Structured Vibes** — Balance and sustainability. Introduces maintainability, readable code, quality control, and handover capability. Uses starter templates with consistent tech stacks, clear LLM instructions, and custom tools that encode domain expertise. ^[extracted]
3. **Spectrum Vibes** — Best practices that bring scale, reliability, and velocity while retaining speed and gratification. Reduces chaos while keeping the fun. ^[extracted]

## YOLO Vibe Coding Workflow

The YOLO workflow demonstrates building a hydration tracking app from scratch using VS Code Copilot Agent Mode:

- Start with an empty workspace, no folder open
- Disable "scaffold new workspace" in the tools picker for cleaner HTML-first development
- Use Agent Mode with a popular stack (React + Vibe or Material Design)
- Give high-level design direction ("Apple design principles" or "make it look pretty") rather than technical constraints
- Enable **auto-approve** to skip all "continue" buttons — the core rule of YOLO vibe coding is not looking at code
- The `copilot new` command is optimized for project-from-scratch workflows, which dominate AI coding tool evaluation
- Run multiple sessions in parallel to explore different design directions (e.g., Material Design vs. Fluent Design)

Key settings for YOLO workflow: auto-approve (workspace-scoped), auto-accept after delay, auto-save on focus change. ^[extracted]

## Visual Editing and Context

VS Code Copilot supports visual context attachment: the Simple Browser preview injects a toggle to select specific elements, which are then attached as CSS descriptions and HTML into the chat — no manual element description needed. ^[extracted] This enables iterative visual refinement ("make this progress indicator more animated") without reading code.

## Checkpoint and Undo System

Copilot maintains checkpoints for each unit of work, allowing users to undo through stages rather than a single undo point. A new checkpoint UX is mentioned as coming. Users can compare before/after states and selectively restore previous versions. ^[extracted]

## Voice Dictation

Copilot includes voice dictation (Command-I by default) using a local model for privacy and speed. It supports reading back text for accessibility and "Hey Copilot" activation. Enables hands-free vibe coding. ^[extracted]

## Structured Vibe Coding for Enterprise

The structured approach addresses enterprise needs:

- **Starter templates** with consistent tech stacks and clear LLM instructions
- **Copilot Instructions** (`.github/copilot-instructions.md`) — a markdown file included in all agent/chat/inline-chat requests, providing grounding knowledge about the codebase
- **Custom tools** that encode expert domain knowledge or internal knowledge
- **Internal design systems** — the generated app already looks polished because it uses the company's design system
- **Customization beyond default training biases** — YOLO defaults to top-of-training-stack frameworks; structured templates override this for internal stacks, workflows, and deployment infrastructure

Harold notes that companies use structured vibe coding for bootstrapping Greenfield projects, producing what looks like a finished product in meetings. ^[extracted]

## Toolbox Summary

The YOLO vibe coding toolbox includes: Agent Mode, tools picker, `copilot new` command, voice dictation, visual context attachment, in-order preview with hot reload, auto-approve/auto-accept, checkpoint/undo, and parallel chat sessions (movable to separate windows). ^[extracted]
## VS Code Stable vs. Insiders

Harold distinguishes between VS Code Stable (monthly release cadence) and VS Code Insiders (daily pre-release builds, analogous to Firefox Nightly or Chrome Canary). ^[extracted] Some features, like the tools picker and certain Copilot settings, may only be available in Insiders. He notes that running Insiders for workshops can cause friction when features behave differently between the two versions. ^[extracted]

## Chat Session Management

Copilot sessions support advanced window management: they can be moved into the editor panel for more chat space, dropped into separate windows, pinned to stay on top, moved to different monitors, and named for easy identification. ^[extracted] This enables running multiple parallel sessions and tracking which is doing what — a practical pattern for design exploration. ^[inferred]

## Vibe Coding as Whiteboard

Harold frames vibe coding as a whiteboard — a thinking surface where you describe what you want and let the AI generate it, then evaluate whether the output matches your mental model. ^[extracted] The key insight: "really about not becoming too attached with whatever you're working on, but being able and willing to throw it out and start from scratch if things go wrong." ^[extracted] This whiteboard mindset is central to YOLO vibe coding — nothing is final, everything is provisional. ^[extracted]

## AI Design Sense Evaluation

A practical way to gauge an AI model's quality is to give it a high-level design direction ("use Material Design") and evaluate the output. Different models produce different design quality — Claude was noted as "definitely usually rocking the icons" with good color sense, while other models may produce plainer results. ^[extracted] This is a form of AI evaluation through design output, where the quality of the generated UI reveals the model's latent capabilities. ^[inferred]

## Key Takeaways

- Vibe coding works best with popular, stable frameworks (Vibe, Material Design) where the AI doesn't have to make wild guesses
- The "new tool" in VS Code is biased toward NPM/package-based projects; for simpler single-file HTML, disable it
- Trying different approaches to the same result (different design systems, different sign-up flows) is where vibe coding shines
- Don't become attached to any single output — be willing to throw it out and start from scratch
- Structured vibe coding with guardrails is where most enterprise adoption happens
- Vibe coding as whiteboard: the generated code is secondary to the exploration; use it as a thinking surface, not a final product
- VS Code Insiders (daily builds) may have features not yet in Stable (monthly releases); test with Insiders for cutting-edge Copilot features

## Related

- [[concepts/vibe-coding-as-whiteboard]] — Vibe coding as a thinking surface
- [[concepts/ai-evaluation-market-history]] — AI evaluation through design output quality
- [[concepts/material-vs-fluent-design-ai]] — Material vs. Fluent design comparison in AI generation
- [[concepts/parallel-ai-coding-sessions]] — Running multiple sessions for design exploration
- [[concepts/stack-selection-ai-code]] — Choosing popular stacks for better AI output
- [[concepts/commit-message-generation-copilot]] — Copilot's auto-generated commit messages
- [[concepts/dev-container-vibe-coding]] — Vibe coding infrastructure artifacts (dev containers)
- [[concepts/github-codespaces-ai-coding]] — Codespaces workflow for dev containers
- [[concepts/voice-dictation-ai-coding]] — Voice dictation for hands-free vibe coding
- [[concepts/visual-context-attachment]] — Visual context attachment for iterative design
- [[concepts/checkpoint-undo-ai-code]] — Checkpoint system for granular undo
- [[concepts/auto-approve-copilot]] — Auto-approve setting for unattended execution
- [[concepts/copilot-new-command]] — Copilot new command for project scaffolding
- [[concepts/yolo-structured-spectrum-vibe-coding]] — Three-stage maturity model
- [[concepts/vibe-coding-origins]] — Origins and evolution of vibe coding
- [[concepts/burden-of-generated-code]] — Chris Kelly's critique of "generate and don't examine"
- [[entities/github-copilot]] — GitHub Copilot tool capabilities
- [[concepts/copilot-instructions]] — Copilot Instructions for team standards
- [[references/aief2025-vibes-wont-cut-it-chris-kelly-augment]] — Production counterpoint to vibe coding
