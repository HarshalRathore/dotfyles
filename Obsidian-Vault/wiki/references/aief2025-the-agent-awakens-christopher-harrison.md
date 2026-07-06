---
title: 'AIEF2025 — The Agent Awakens: Collaborative Development with Copilot — Christopher Harrison, GitHub'
tags:
- reference
- talk
- aief2025
- github
- copilot
- pair-programming
- context
- coding-agent
summary: Christopher Harrison frames GitHub Copilot as an AI pair programmer, argues that context goes beyond prompt crafting to encompass code quality, and maps Copilot's five workload levels from completi...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.7
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/christopher-harrison|Christopher Harrison]]'
  type: presented-by
- target: '[[entities/john-peck|Jon Peck]]'
  type: co-presenter
- target: '[[concepts/ai-pair-programmer-analogy|AI Pair Programmer Analogy]]'
  type: introduces
- target: '[[concepts/code-quality-as-context|Code Quality as Context]]'
  type: introduces
category: references
sources: []
---

# AIEF2025 — The Agent Awakens: Collaborative Development with Copilot

**Speaker:** [[entities/christopher-harrison|Christopher Harrison]], Enterprise Advocate at [[entities/github-copilot|GitHub]], with [[entities/john-peck|Jon Peck]] (also an Enterprise Advocate at GitHub)

**Video:** https://www.youtube.com/watch?v=tHJSZ1-ZqcA

**Note:** This transcript is partial — it cuts off mid-sentence during the Agent Mode section.

## Summary

Christopher Harrison delivers a hands-on talk framing GitHub Copilot as an AI pair programmer and arguing that effective agent collaboration starts with "good code 101." He maps Copilot's five workload levels and emphasizes that context is the primary lever for agent quality — far beyond prompt crafting.

## Key Themes

### The AI Pair Programmer Analogy

Harrison's central framing: Copilot behaves like a human pair programmer. He illustrates this with a brunch analogy — a natural conversation where context is shared incrementally, not all at once. A request is made, context is provided, the response is given, more context emerges, and the response adapts. ^[extracted]

This is how humans collaborate with other humans, and it's how Copilot should be treated. The analogy is not just marketing — it's a practical model for how to interact with the tool. ^[extracted]

### Context Is Good Code 101

The core thesis: context goes far beyond prompt crafting. Copilot reads your code the way a new pair programmer would. ^[extracted]

- **Good names and structure** — Well-named functions and variables help Copilot navigate cleanly. Single-letter variables and abbreviations make it struggle, just as they would a human. ^[extracted]
- **Comments** — Even if "good code doesn't need comments," a line or two of comments makes code more readable for AI. The cost is negligible; the benefit to Copilot is real. ^[extracted]
- **Project structure** — A well-organized project helps Copilot reason about the codebase. Navigable structure is essential context. ^[extracted]
- **Clear intent** — Don't be passive-aggressive with Copilot. If you know something important, tell it explicitly. Don't expect it to infer unstated requirements. ^[extracted]

Context encompasses code quality, comments, project structure, and all inputs to the model — not just the prompt. ^[extracted]

### Copilot Workload Spectrum

Harrison maps five workload levels, each serving a different autonomy tier: ^[extracted]

1. **Code Completions** — Original inline suggestions for the next line, function, or class. Best when you're "in the zone" and know what you're doing.
2. **Chat** — Originally single-shot: ask a question, get a response. Can generate a single file but doesn't handle multi-file changes.
3. **Edits** — Multi-file changes across related files (e.g., HTML + JS + CSS for a web page update).
4. **Agent Mode** (in IDE) — Navigates the project, pulls in relevant files, runs terminal commands (with user approval), iterates, and self-heals.
5. **Coding Agent** (on GitHub.com) — Assigned via Issues, works autonomously in its own branch via GitHub Actions, creates draft PRs.

The visual presentation highlighted Coding Agent with "sparkles" not because it's the best, but because it's the newest. ^[extracted]

### Practical Advice for New Users

Harrison observed a common pattern: new Copilot users send terse initial prompts because they're used to older chatbots that required command-line-like brevity. Copilot is not built for that. ^[extracted]

The advice: be clear, be specific, and communicate intent explicitly. The iterative context-sharing model (like the brunch conversation) is the natural way to work with Copilot — start broad, add detail as you go, and let the tool adapt. ^[inferred]

## Related

- [[references/aief2025-collaborating-with-agents-jon-peck-christopher-harrison]] — Companion talk by the same speakers
- [[entities/github-copilot]] — The tool discussed
- [[concepts/ai-pair-programmer-analogy|AI Pair Programmer Analogy]] — The central mental model
- [[concepts/code-quality-as-context|Code Quality as Context]] — The core thesis
- [[concepts/context-management-for-agents|Context Management for Agents]] — Related practice

## Sources

- AIEF2025 — The Agent Awakens: Collaborative Development with Copilot, Christopher Harrison, GitHub. https://www.youtube.com/watch?v=tHJSZ1-ZqcA
