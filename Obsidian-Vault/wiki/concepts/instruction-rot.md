---
title: Instruction Rot
category: concepts
tags:
  - agents
  - instruction-rot
  - agent-memory
  - coding-agents
  - agent-observability
aliases: [instruction overfitting, self-improvement rot]
relationships:
  - target: "[[concepts/agent-memory-knowledge]]"
    type: related_to
  - target: "[[concepts/context-rot]]"
    type: related_to
  - target: "[[concepts/skills-checklist-framework]]"
    type: related_to
sources:
  - "https://x.com/mattpocockuk/status/2066612676520779867"
summary: Matt Pocock's concept for the degradation of coding agent behavior when auto-generated memories and session suggestions compound into unsteerable, project-scoped instruction bloat.
provenance:
  extracted: 0.60
  inferred: 0.30
  ambiguous: 0.10
base_confidence: 0.58
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Instruction Rot

**Instruction rot** is the degradation of coding agent behavior when auto-generated memories and per-session suggestions compound into unsteerable, project-scoped instruction bloat. Coined by [[entities/matt-pocock|Matt Pocock]] in June 2026.^[extracted]

## The Problem

Coding agents that are allowed to write into a "notes" or "memory" file — such as `CLAUDE.md`, per-project context files, or auto-generated instructions — create a feedback loop where each session adds more guidance. The rot occurs in two ways:^[extracted]

1. **Bad suggestions accumulate.** Many auto-created memories and suggestions are low-quality, yet the agent treats all of them equally.^[extracted]
2. **Good suggestions are over-indexed.** Even useful suggestions cause the agent to over-apply them — e.g., a single mention that "validating algorithms programmatically is handy" becomes enforced for every single algorithm, wasting tokens and slowing execution.^[extracted]

The result is an agent that is impossible to steer, with each project developing its own idiosyncratic instruction bloat.^[extracted]

## Key Observations

- **Self-improvement loops degrade agent behavior.** Automatically applied memories and post-session suggestions make agents drift further from a "blank slate" state rather than improving them.^[inferred]
- **Per-project scoping amplifies the problem.** When memories are scoped per-project, each project becomes unsteerable in its own way — compounding the chaos across a codebase.^[extracted]
- **Evals alone don't solve it.** Even with evaluation systems in place, the problem persists because the agent is still "groping around in the dark" with too many conflicting or redundant instructions.^[inferred]
- **The "memory soup" problem.** When the agent controls what gets remembered without user gatekeeping, memory becomes a "soup of unknown origin" — impossible to audit or prune.^[inferred]

## Community Responses

The thread produced several related framings and proposed mitigations:^[extracted]

- **"Instruction overfitting"** ([[entities/davidkpiano|DavidKPiano]]) — analogous to RL over-exploitation, where the agent over-adapts to its own accumulated instructions.^[extracted]
- **"Memory rot / drift"** ([[entities/iridium-eagle|IridiumEagle]]) — why some agent frameworks (like desktop.ambient) make memory entirely optional and emphasize durable repeatable workflows instead.^[extracted]
- **"Memory friction"** ([[entities/nurijanian|Nurijanian]]) — put deliberate friction between the agent and the memory loop so the user decides what to remember and in what shape.^[extracted]
- **"Evals + DSPy+GEPA"** ([[user@dysmemic]]) — structured evaluation frameworks may help, though Pocock disputes they fully solve the problem.^[extracted]

## Mitigations

- **Optional memory.** Make agent memory opt-in rather than auto-generated.^[inferred]
- **User-gated memory decisions.** The human decides what gets remembered and in what form, rather than letting the agent auto-curate.^[inferred]
- **Durable repeatable workflows.** Emphasize deterministic process over accumulated notes.^[inferred]
- **Skill-based constraints** ([[concepts/skills-checklist-framework]]) — Matt Pocock's own framework for skills includes a "Pruning" dimension that addresses this by removing sediment and crud from agent instructions.^[inferred]

## Related Concepts

- [[concepts/context-rot]] — The broader class of problem: accumulated context degrades agent performance over time
- [[concepts/agent-memory-knowledge]] — Agent memory systems that instruction rot critiques
- [[concepts/skills-checklist-framework]] — Matt Pocock's framework whose Pruning dimension directly addresses instruction rot
- [[concepts/agent-loop]] — The feedback loop pattern that instruction rot corrupts
- [[concepts/leading-words]] — A steering technique that achieves what accumulated memory attempts to do, but more precisely

## Open Questions

- What is the optimal balance between agent-autonomous memory and user-controlled memory?^[ambiguous]
- Can a well-designed eval system prevent over-indexing on good suggestions, or is structural intervention required?^[inferred]
- Is instruction rot a symptom of a deeper problem with how agents maintain state across sessions, or a surface-level configuration issue?^[ambiguous]

## Sources

- Matt Pocock tweet, Jun 15, 2026: https://x.com/mattpocockuk/status/2066612676520779867
- Thread engagement: 206 replies, 60 reposts, 1,455 likes, 134,548 bookmarks
