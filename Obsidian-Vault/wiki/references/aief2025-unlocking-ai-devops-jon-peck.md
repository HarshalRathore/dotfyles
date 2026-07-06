---
title: AIEF2025 - Unlocking AI Powered DevOps Within Your Organization — Jon Peck, GitHub
tags:
- reference
- talk
- aief2025
- devops
- ai-adoption
sources:
- 'https://www.youtube.com/watch?v=c1nivhys1si'
summary: Talk by Jon Peck (GitHub Developer Advocate) on organizational AI adoption strategy — brownfield-first learning, agentic IDE workflows, codifying team practices via Copilot Instructions, enterprise...
provenance:
  extracted: 0.8
  inferred: 0.18
  ambiguous: 0.02
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
category: references
---

# AIEF2025 — Unlocking AI Powered DevOps Within Your Organization

**Speaker:** [[entities/jon-peck|Jon Peck]], Developer Advocate at [[entities/github-copilot|GitHub]]

**Video:** https://www.youtube.com/watch?v=C1NivhYS1sI

**Slides:** `gh.io/fair/unlock`

## Key Themes

### Brownfield-First AI Adoption

Peck argues that teams should start their AI journey with **brownfield** (existing codebases), not greenfield projects. Greenfield AI development is cool and fun but doesn't teach the interaction patterns needed for daily work — which is almost always modifying an existing application. The recommendation is to:

1. Start with practical brownfield tasks — swapping ORM versions, generating tests for existing code, adding features. ^[extracted]
2. Learn to shape prompts and context effectively through real daily work. ^[inferred]
3. After establishing those practices, explore greenfield development. ^[extracted]

### Agent Mode Workflow

[[concepts/agent-loop|Agent mode]] in the IDE transforms both brownfield and greenfield work:

- **Greenfield:** Use agent mode to iterate on initial scoping — open a README, ask the LLM what specs to create, refine, then hand a well-scoped document to the build agent. ^[extracted]
- **Brownfield:** Agent mode narrows context automatically — pull in just the relevant folders and files, not the whole codebase. ^[extracted]
- **Revert culture:** "If it's made 500 changes but working completely the wrong way, immediately just revert all those and try again." The cost of erasing code is lower than it used to be. ^[extracted]

### Codifying Team Practices

Peck's central mechanism for team-level AI adoption is [[concepts/copilot-instructions|Copilot Instructions]] (`.github/copilot-instructions.md`):

- Codify team standards (linting, model accessor patterns, security checks) so AI follows them automatically. ^[extracted]
- Commit the file to the repository — it becomes a shared artifact the whole team benefits from. ^[extracted]
- A lead developer or team manager's job includes keeping this file current as team decisions evolve. ^[extracted]

### Beyond Code Generation

The biggest efficiency gains may not come from production code generation but from adjacent activities ^[extracted]:

1. **Planning** — brainstorm features, technology selection, infrastructure choices with AI.
2. **Security** — scan large codebases for bad dependencies, cross-site scripting, dangerous patterns.
3. **Testing** — generate unit tests from existing modules in ~10% of the usual time.
4. **Deployment** — generate GitHub Actions, Terraform, and other IaC.
5. **Documentation** — produce API specs, executive summaries, workflow diagrams (identified as the #1 speed gain).

### Autonomous AI Pipeline

The [[concepts/issue-to-pr-pipeline|issue-to-PR pipeline]] represents the current frontier:

- **Copilot Code Review:** Assign Copilot as a PR reviewer — it asynchronously generates comments and code suggestions, same as a human reviewer would. ^[extracted]
- **Issue assignment:** Assign a GitHub Issue directly to Copilot — it creates a branch, writes code, runs tests, and submits a PR. ^[extracted]
- **Human-in-the-loop:** All autonomous work happens in isolation (its own branch, protected environment). The human always reviews before merging. ^[extracted]
- **Iterative refinement:** If the PR is wrong, destroy and reassign. If it's close, add comments and Copilot refines. ^[extracted]

### Model Selection

Peck emphasizes the importance of model choice even within a single tool:

- **Flash models** for fast, cheap, simple requests. ^[extracted]
- **Reasoning models** for deep research and problem space exploration before coding. ^[extracted]
- The combined tool with an all-in subscription lets operators pick the right model at the right time. ^[extracted]

### Enterprise Governance

Three layers of [[concepts/ai-trust-pillars|AI governance]]:

1. **Safety/Privacy** — proxies, sanitization, indemnification clauses, opt-in tracking, no training on enterprise data. ^[extracted]
2. **Repository-level** — exclude specific files from Copilot context (e.g., environment secrets). ^[extracted]
3. **Org-wide policy** — manage model access, new edge features, and policies centrally without overhead on individual maintainers. ^[extracted]

### MCP Integration

[[concepts/model-context-protocol|Model Context Protocol]] servers available in two contexts:

- **VS Code** — add MCP servers from github.com/modelcontextprotocol/servers, enabling agent workflows like "commit this and create a PR." ^[extracted]
- **Copilot Enterprise** — configure MCP at the repository level, enabling autonomous agents to reach external systems during issue resolution. ^[extracted]

## Open Questions

- How do knowledge bases and instruction files compose in larger organizations with multiple teams and repos?
- What organizational structures best support the lead-dev-as-instructions-curator model Peck describes?

## Sources

- AIEF2025 — Unlocking AI Powered DevOps Within Your Organization, Jon Peck, GitHub. https://www.youtube.com/watch?v=C1NivhYS1sI
