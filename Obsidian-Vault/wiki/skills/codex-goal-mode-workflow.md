---
title: Codex Goal-Mode Workflow
category: skills
tags: [agent-workflow, goal-mode, single-agent, codex, adr, dogfooding, ai-coding, productivity]
aliases:
  - Single-Agent Codex Workflow
relationships:
  - target: "[[concepts/agent-driven-development|Agent-Driven Development]]"
    type: implements
  - target: "[[concepts/agent-best-practices|Agent Best Practices]]"
    type: related_to
  - target: "[[concepts/vibe-coding|Vibe Coding]]"
    type: contradicts
sources:
  - "https://x.com/KingBootoshi/status/2063999432077795579"
summary: Personal workflow using a single Codex agent in /goal mode with ADRs and dogfooding, replacing multi-agent orchestration for newer model generations.
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T20:18:21Z
updated: 2026-07-13T20:18:21Z
---

# Codex Goal-Mode Workflow

A high-productivity coding workflow that uses a single AI agent (Codex) operating in /goal mode, replacing multi-agent orchestration. Built around four phases: research/scoping, alignment discussion, PRD creation, and implementation with self-testing.

> This workflow was documented by @KingBootoshi as a breakthrough after months of trial and error with agent orchestration patterns.

## Background: Why Single Agent Over Multi-Agent

With older models (Opus 4.5, GPT-5), multi-agent orchestration — having agents spawn and coordinate subagents in parallel — was necessary to capture maximum work per request. This approach did work but was increasingly fragile as model capabilities changed.

Newer model generations (GPT-5.5, Opus 4.8) have significantly expanded context windows and native intelligence. They are more capable **individually** in a single extended session, making subagent orchestration not just unnecessary but counterproductive. Breaking complex tasks across multiple agent calls now loses context and introduces coordination overhead that hurts accuracy.

## Core Workflow: Four Phases

### Phase 1: Research & Scoping

Ask the agent to research a problem, read relevant documentation and code, then report back with a set of critical architectural questions — typically a maximum of 5.

**Key prompt technique:** Request the *simplest* design option, explore multiple approaches, and specify "the most correct solution long-term." This combination activates different reasoning modes and prevents the agent from defaulting to the path of least resistance, which may not scale.

### Phase 2: Alignment Discussion (Most Important)

This is the crucial phase that everything else depends on. Have a back-and-forth conversation where the agent reports findings and asks high-impact questions. You align intent through discussion before any implementation begins.

**Why this matters:** The agent doesn't automatically understand your design taste or architectural preferences. A few rounds of simple conversation align it fully, achieving "bullseye precision" in subsequent execution. The agent reads relevant docs, ADRs, and raw code itself — **do not let sub-agents do this research**, as summaries miss critical details.

When the agent recommends answers to its own questions, you can usually confirm with "yes" — it often matches your own reasoning. This phase is responsible for ~95% of workflow quality.

### Phase 3: PRD & Implementation

Instruct the agent to create a Master PRD and execute it to completion using goal mode. The agent generates its own goal through its internal tools, ensuring alignment when context is compacted.

The command pattern:

> "Create a Master PRD, and execute this to completion with goal mode. Make sure to dogfood it and run e2e tests"

The agent creates its own goal to fully implement and test the feature. Runs typically take 1–2 hours but deliver reliable, complete results.

### Phase 4: Dogfooding (Self-Testing)

Codex's ability to dogfood its own work via computer use — running E2E tests on its own outputs through an actual browser/OS session — is a critical differentiator. Dogfooding means using your own software before releasing it, and Codex applies this to its own code by running the app it just built and verifying behavior from a user's perspective.

This catches **architectural problems** that code-level testing misses. The code may look logically flawless while the actual application has structural issues — these only surface during dogfooding. When Codex finds such problems, it re-designs the logic without breaking other features, because it has full context of the entire codebase.

## Architectural Decision Records (ADRs)

ADRs are the critical alignment mechanism in this workflow. An ADR is an Architectural Decision Record — a `.md` file in `docs/adr/` that captures a significant design decision with:

- A single-sentence decision title
- Context explaining why it exists
- Deeper explanation of the decision
- A list of invariants (conditions that MUST be true)
- Consequences of not following it
- File references for core services

The agent can turn discussion outcomes into ADRs automatically — just prompt it and it produces well-structured output. Keep ADRs as small as possible; compress the core intent into minimal tokens for agent comprehension. With larger context windows, this constraint is less critical than it used to be.

ADRs replaced all other forms of documentation in this workflow because they provide agents with precisely the right level of context: enough to make correct decisions, minimal enough to fit comfortably in context windows.

## Communication Style with Codex

Codex communicates differently than Opus-class models — it is described as "neurodivergent in the way it communicates." Adjusting communication style to match was necessary for good results. The shift from talking to Opus (which understood intent directly) to talking to Codex required weeks of adaptation.

Once aligned, Codex can handle substantial projects from scratch — including building complex infrastructure like systems that spin up microVMs for isolated agent execution — simply through conversation.

## Performance Characteristics

- **Accuracy:** Single-agent goal mode produces more accurate results than multi-agent, because context is preserved throughout execution
- **Speed:** Individual runs take 1–2 hours for complex features, but the single-agent approach eliminates coordination overhead
- **Reliability:** Dogfooding catches architectural bugs that code tests miss; full-context rewrites don't break other features
- **Maintainability:** ADRs created during the workflow persist as team knowledge, enabling future agents and developers to follow the same reasoning patterns

## Limitations & Open Questions

- The workflow assumes a large context window model — smaller models may not benefit from the single-agent approach
- Requires adjustment period to learn Codex's communication patterns ^[inferred]
- The author is still exploring how to accelerate the 1–2 hour execution time, possibly through loops with stateful agents handling multiple threads
- No data on whether this approach generalizes to models other than Codex ^[inferred]

## Sources

- @KingBootoshi tweet — [https://x.com/KingBootoshi/status/2063999432077795579](https://x.com/KingBootoshi/status/2063999432077795579) (Jun 8, 2026)
- @mattpocockuk — ADR concept origin
- @steipete — "Just talk to it" blog post
- @RayFernando1337 — Dogfooding concept for agents
