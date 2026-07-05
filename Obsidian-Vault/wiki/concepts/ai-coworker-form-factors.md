---
title: "AI Coworker Form Factors"
tags:
  - agent
  - ai
  - design
  - ux
  - interaction-patterns
sources:
  - "[[sources/watchv=cimvknx-cni]]"
summary: "Four interaction surfaces for AI coworkers: invisible (background processing), ambient (subtle presence), in-line (workflow-integrated), and conversational (chat)."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# AI Coworker Form Factors

The concept of AI coworker form factors, articulated by [[entities/craig-wattrus|Craig Wattrus]] of [[entities/flatfile|Flatfile]], identifies four surfaces through which AI agents interact with human users in a work context. The core insight is that AI coworker "form" — the shape and presence an AI takes in the user's workflow — is a design decision, not a technical constraint, and should be chosen deliberately based on the task and context.

## The Four Form Factors

### 1. Invisible (Ghost in the Machine)

AI operates entirely in the background without user awareness. The user benefits from the AI's work but never directly interacts with it.

*Example:* When a user signs up for Flatfile, AI agents write a customized application in the background, analyzing the user's email and company to produce a demo tailored to their industry. The user never sees the AI — they just receive a working demo. ^[extracted]

### 2. Ambient (Subtle Presence)

AI has a visible but non-intrusive presence in the workspace. It signals opportunities and insights without demanding attention or interrupting the user's flow.

*Example:* Sparkle icons appear on data columns where the AI detects opportunities to clean or transform data. The user can ignore them or investigate at their own pace. ^[extracted]

### 3. In-Line (Workflow-Integrated)

AI operates directly within the user's active workflow. The user and AI work on the same material simultaneously, with the AI providing real-time transformations and suggestions.

*Example:* A user working on data sees AI agents writing and executing code against their dataset in real-time, transforming millions of rows across dozens of columns. The AI is present in the user's workspace but not in a separate chat interface. ^[extracted]

### 4. Conversational (Chat Interface)

AI interacts through natural language conversation, the most familiar pattern from consumer AI products. The user describes what they want and the AI builds it.

*Example:* Flatfile's Build Mode — a no-code/low-code conversational system where users describe their data application and the AI builds it through dialogue. ^[extracted]

## Design Implications

The four form factors are not mutually exclusive — a single AI coworker can operate across different form factors depending on the task. The choice of form factor depends on: ^[inferred]

- **Task urgency** — invisible and ambient for background monitoring, in-line and conversational for active collaboration
- **User expertise** — conversational for novice users describing what they want, in-line for power users working directly
- **Trust requirements** — invisible requires high trust (the user never sees the work), conversational enables the most human oversight
- **Latency tolerance** — invisible and ambient tolerate longer processing times, in-line and conversational need fast response

## Relationship to Other Concepts

- [[concepts/beyond-chatbots]] — Extends the "beyond chatbots" thesis by providing specific form factors that go beyond conversational interfaces
- [[concepts/agent-design-patterns]] — Form factors influence which agent patterns (chaining, routing, parallelization) are appropriate
- [[concepts/character-coach-approach]] — Character coaching is how you design the agent's personality regardless of form factor
- [[concepts/feeling-the-material]] — Feeling the material is the design methodology for choosing the right form factor
- [[concepts/sidecar-pattern]] — In-line AI coworker presence resembles the sidecar pattern for co-located assistance

## Open Questions

- How do you measure user trust in invisible vs ambient AI coworkers?
- What's the right way to escalate between form factors — e.g., when should an invisible agent escalate to conversational?
- Are there additional form factors beyond these four (e.g., predictive — AI acting before the user even knows they need something)?

## Sources

- [[references/aief2025-form-factors-ai-coworkers-craig-wattrus-flatfile]] — Talk at AI Engineer World's Fair 2025
