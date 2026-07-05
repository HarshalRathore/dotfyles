---
title: "Jon Peck"
tags:
  - entity
  - person
  - devrel
  - github
  - aief2025
aliases: [John Peck]
sources:
  - "[[sources/watchv=c1nivhys1si]]"
  - "[[sources/watchv=g1hhmz6mxt0]]"
summary: "GitHub Developer Advocate and Enterprise Advocate, speaker at AI Engineer World's Fair 2025 on organizational AI adoption, Copilot Instructions, .instructions files, and coding agent workflows. Software developer since the late 90s with 10+ years in developer advocacy."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.70
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Jon Peck

Jon Peck is a Developer Advocate for [[entities/github-copilot|GitHub Copilot]], speaking at AI Engineer World's Fair 2025 on both organizational AI adoption and hands-on coding agent workflows. He has been a software developer since the late 90s and in developer advocacy for about 10 years.

## At AIEF2025

Peck co-presented a second talk "Collaborating with Agents in your Software Dev Workflow" with [[entities/christopher-harrison|Christopher Harrison]] (also of GitHub), a hands-on lab covering the Copilot workload spectrum, coding agent security model, MCP integration for agents, and the [[concepts/dot-instructions-files|.instructions files]] feature. ^[extracted]

Peck's talk "Real World MCPs in GitHub Copilot Agent Mode" demonstrated end-to-end MCP integration into Copilot Agent Mode:

- **README-driven development** — Building a complete travel-booking app from a README-only spec using Copilot Agent Mode in ~8 minutes ^[extracted]
- **MCP discovery and installation** — One-click MCP server installation from `github.com/modelcontextprotocol/servers` directly into VS Code ^[extracted]
- **MCP permission gating** — User approval required before the agent connects to MCP servers or the terminal ^[extracted]
- **PostgreSQL MCP demonstration** — Read-only MCP server connecting to a local database, pulling schema and data to generate mock.json for testing ^[extracted]
- **MCP handshake pattern** — Sequential conversation between Copilot and MCP: schema discovery → table identification → data extraction → response parsing ^[extracted]
- **Agent iteration loop** — "Your first prompt will not be right"; iterative refinement via README files, Copilot Instructions, and prompt files ^[extracted]
- **MCP-to-MCP protocol** — Remote MCP servers in protected environments, transmitting results back to the IDE ^[extracted]
- **Copilot Code Review** — AI-powered asynchronous PR review that generates comments and code suggestions appearing the same way human reviews do, with accept/reject options ^[extracted]
- **Copilot Spaces** — Grounded Q&A spaces that answer project-specific questions based on actual files and instructions, never getting tired of answering ^[extracted]
- **Knowledge Bases** — Named collections of repositories providing best-practice examples, internal API specs, and reference implementations, selectable by operators during work ^[extracted]
- **Checkpoint and Undo System** — Maintains checkpoints for each unit of work, allowing stage-level undo with before/after comparison and selective restoration ^[extracted]
- **Voice Dictation** — Command-I shortcut using a local model for privacy and speed, with read-back text for accessibility and "Hey Copilot" activation for hands-free vibe coding ^[extracted]
- **Simple Browser in VS Code** — Built-in preview enabling visual context attachment; element selection captures CSS/HTML for iterative visual refinement without reading code ^[extracted]
- **Structured Vibe Coding** — Enterprise vibe coding through starter templates, Copilot Instructions, custom tools, and internal design systems for bootstrapping Greenfield projects ^[extracted]

Peck's talk "Unlocking AI Powered DevOps Within Your Organization" covered:

- **Brownfield-first AI adoption** — starting with existing codebases to learn effective AI interaction patterns before greenfield development ^[extracted]
- **[[concepts/copilot-instructions|Copilot Instructions]]** — codifying team best practices into `.github/copilot-instructions.md` ^[extracted]
- **Agent mode in the IDE** — using AI agents for context narrowing, iterative planning, and comfortable revert ^[extracted]
- **[[concepts/ai-powered-devops|AI across the DevOps lifecycle]]** — planning, security scanning, testing, deployment, and documentation ^[extracted]
- **[[concepts/issue-to-pr-pipeline|Issue-to-PR autonomous pipeline]]** — assigning GitHub Issues to Copilot for autonomous resolution with human review ^[extracted]
- **[[entities/github-copilot|Copilot Code Review]]** — AI-powered asynchronous PR review that generates comments and code suggestions ^[extracted]
- **MCP integration** — connecting AI agents to external systems via Model Context Protocol servers within VS Code and Copilot Enterprise ^[extracted]
- **AI governance at org scale** — safety, privacy, repository-level exclusions, and org-wide policy controls ^[extracted]
- **[[concepts/dot-instructions-files|.instructions files]]** — Per-file-type instruction patterns for consistent code generation via filename pattern matching ^[extracted]
- **Coding agent security model** — Firewalled execution, ephemeral Actions environments, branch-only access, draft PRs, and no self-review enforcement ^[extracted]

## Philosophy


## Sources

- AIEF2025 — Unlocking AI Powered DevOps Within Your Organization, Jon Peck, GitHub. https://www.youtube.com/watch?v=C1NivhYS1sI
- AIEF2025 - Real world MCPs in GitHub Copilot Agent Mode — Jon Peck, Microsoft - https://www.youtube.com/watch?v=RkVILz06y08
