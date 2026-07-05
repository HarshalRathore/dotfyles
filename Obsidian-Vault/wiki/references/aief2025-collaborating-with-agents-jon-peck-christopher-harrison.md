---
title: "AIEF2025 - Collaborating with Agents in your Software Dev Workflow — Jon Peck & Christopher Harrison, Microsoft"
tags:
  - reference
  - talk
  - aief2025
  - github
  - copilot
  - agents
  - coding-agent
  - devops
summary: "Hands-on lab on GitHub Copilot's evolution from code completions to autonomous coding agents — covering security model, context engineering, Copilot Instructions, .instructions files, MCP, and the DevOps implications of AI-generated code."
provenance:
  extracted: 0.85
  inferred: 0.13
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
sources:
  - "[[sources/watchv=g1hhmz6mxt0]]"

---

# AIEF2025 — Collaborating with Agents in your Software Dev Workflow

**Speakers:** [[entities/jon-peck|Jon Peck]] & [[entities/christopher-harrison|Christopher Harrison]], Enterprise Advocates at [[entities/github-copilot|GitHub]] (formerly Microsoft — both are GitHub employees now)

**Video:** https://www.youtube.com/watch?v=G1hhmz6mXT0

## Summary

Hands-on lab-style session on GitHub Copilot's evolution from code completions to autonomous coding agents. Covers the full spectrum of Copilot workloads, the coding agent security model, context engineering, Copilot Instructions, .instructions files, MCP integration for agents, and the DevOps implications of AI-generated code.

## Key Themes

### Copilot Workload Spectrum

Harrison maps the evolution: Code Completions (original, next-line suggestions) → Chat (single-shot Q&A) → Edits (multi-file changes) → Agent Mode (in-IDE, navigates project, runs tests, self-heals) → Coding Agent (on GitHub.com, assigned via Issues, creates branches and PRs autonomously). ^[extracted]

Each mode serves a different level of autonomy. Agent mode is the newest IDE-level capability; Coding Agent is the newest overall. ^[extracted]

### Context Is Good Code 101

Harrison's core framing: Copilot behaves like a pair programmer — it reads your code, so readable code is essential context. ^[extracted]

- **Good names, good structure** — Copilot navigates clean code as well as a human pair programmer would. Single-letter variables and abbreviations cause it to struggle. ^[extracted]
- **Comments** — Even if "good code doesn't need comments," a line or two of comments makes code more readable for the AI. ^[extracted]
- **Project structure** — A well-organized project helps Copilot reason about the codebase. ^[extracted]
- **Clear intent** — Don't be passive-aggressive with Copilot. If you know something important, tell it. Don't expect it to infer unstated requirements. ^[extracted]

Context goes beyond prompt crafting — it encompasses code quality, comments, project structure, and all inputs to the model. ^[extracted]

### Coding Agent Security Model

Peck details the safety architecture for autonomous coding agents: ^[extracted]

1. **Firewalled by default** — Coding agent has no internet access. Frameworks and libraries must either be pre-installed via setup steps or holes explicitly opened in the firewall. ^[extracted]
2. **Ephemeral environment** — Runs inside GitHub Actions, launched per-session and destroyed after. ^[extracted]
3. **Branch-only access** — Can only modify its own branch, never main or other resources. ^[extracted]
4. **Draft PRs only** — Creates pull requests in draft form, never as full PRs. A human must explicitly convert to a real PR. ^[extracted]
5. **Workflow approval gating** — Security checks, unit tests, and other CI workflows on the PR don't run until a human clicks "approve workflow runs." ^[extracted]
6. **No self-review** — The person who assigned the issue cannot review the PR. By design, someone else must review the agent's work, enforcing the standard practice that no one reviews their own code. ^[extracted]

### Copilot Instructions

`.github/copilot-instructions.md` is read by coding agent and every chat request. Peck demonstrates a comprehensive example covering: ^[extracted]
- App intro and build approach
- Code standards
- Pre-commit requirements
- Global language guidance
- Specific build instructions
- Repository structure

Instructions are a shared team artifact, committed to the repo. Keeping them current is a lead developer responsibility. ^[extracted]

### .instructions Files (Per-File-Type Patterns)

Harold (at Microsoft) works on the .instructions files feature. These are per-file-pattern instruction files that automatically apply based on filename patterns: ^[extracted]

- `*.jsx` / `*.tsx` → React component instructions
- `*.svelte` → Svelte component instructions
- `server/test_*` → server test instructions
- Files can reference prototype files as examples ("use the games file as a template")

Currently only available in Copilot Chat, not yet in Coding Agent. ^[extracted]

Peck emphasizes their importance for consistency: "if I'm creating yet another React component, I probably want all of those to follow a particular pattern." ^[extracted]

### MCP for Coding Agents

MCP servers can be configured to give coding agents access to external data and operations: ^[extracted]
- Configured at the repository or organization level ^[extracted]
- Users provide their own credentials — the agent acts on the user's behalf ^[extracted]
- To use MCP with coding agent, the firewall must be opened (documented in setup) ^[extracted]
- MCP servers should be vetted like any other tool that accesses external information or acts on a user's behalf ^[extracted]
- For large codebases, MCP servers help Copilot better search and reason over the code ^[extracted]

### Iterating with Coding Agent

Peck demonstrates two iteration modes: ^[extracted]
1. **Comment on the PR** — Add a comment like "also add an endpoint to search for games by name". Copilot starts a new session, taking previous work into account. ^[extracted]
2. **Reassign for fresh start** — Remove Copilot as assignee and re-assign. It starts completely from scratch. ^[extracted]

When the agent gets something wrong, the first question should be "why?" — nine times out of ten, the answer is context: insufficient information in the issue, instructions file, or MCP setup. ^[extracted]

### DevOps Flow Unchanged

"AI does not change the DevOps flow." ^[extracted] All existing safeguards still apply:
- Manual code reviews still needed
- Linters check standards
- Security scans find vulnerabilities
- Unit tests run
- PRs need explicit approval before workflows execute

### Agent Mode Workflow

In-IDE agent mode differs from Coding Agent: ^[extracted]
- Narrow context automatically — pulls in only relevant files
- Pauses for user approval before terminal access
- Enables iterative planning — spec drafting in README, then hand to agent
- Revert-friendly — "if it's made 500 changes but working completely the wrong way, immediately just revert all those and try again" ^[extracted]

## Related

- [[references/aief2025-unlocking-ai-devops-jon-peck]] — Peck's companion talk on organizational AI adoption
- [[concepts/issue-to-pr-pipeline]] — The autonomous pipeline pattern
- [[concepts/copilot-instructions]] — Codified team standards for AI tools
- [[concepts/dot-instructions-files]] — Per-file-type instruction files
- [[concepts/context-engineering]] — Thesis that everything in agent quality is context
- [[concepts/model-context-protocol]] — Protocol for connecting AI to external tools
- [[concepts/agent-middleware-trust-boundary]] — Security boundary patterns for agents
- [[entities/jon-peck]] — Co-speaker
- [[entities/christopher-harrison]] — Co-speaker
- [[entities/github-copilot]] — The tool demonstrated
- [[entities/microsoft]] — Employer

## Sources

- AIEF2025 — Collaborating with Agents in your Software Dev Workflow, Jon Peck & Christopher Harrison, Microsoft. https://www.youtube.com/watch?v=G1hhmz6mXT0
