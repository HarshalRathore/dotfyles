---
title: Cloud VM for Agents
category: concepts
tags:
- cloud-vm
- agent-infrastructure
- remote-agents
- sandbox
- aief2025
sources:
- AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
relationships:
- target:
  - - concepts/remote-agents-as-a-service|Remote Agents as a Service
  type: implements
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: enables
- target:
  - - concepts/agent-at-scale|Agent at Scale
  type: enables
- target:
  - - concepts/sandboxed-agent-execution|Sanboxed Agent Execution
  type: related_to
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Cloud VM for Agents
---

# Cloud VM for Agents

A cloud VM for agents is a virtual machine provisioned in the cloud for an AI coding agent to execute code, run commands, and manage repositories independently of the developer's local machine. This is the infrastructure foundation for remote agents as a service. ^[extracted]

## Architecture

### Per-Agent VM

Each agent gets its own dedicated VM that:
- **Clones the entire codebase** — The agent has a full copy of the repository, including all branches and history ^[extracted]
- **Has full command access** — The agent can run any command the developer can run, including build tools, test runners, and package managers ^[extracted]
- **Is isolated** — Each agent's VM operates independently, preventing cross-agent interference ^[inferred]

### GitHub Integration

The VM is automatically integrated with the developer's GitHub account:
- Can create branches for each task
- Can run tests and report results
- Can submit PRs for review
- Can merge approved work ^[extracted]

## Capabilities

### Test Execution

The VM can run full test suites, including:
- Unit tests (Jest, Vitest)
- Integration tests (Playwright, Cypress)
- Coverage analysis
- Performance benchmarks ^[extracted]

### Build and Deploy

The VM can:
- Run build commands (`npm run build`, `yarn build`)
- Run linting and type checking
- Deploy to staging environments
- Run accessibility and security audits ^[extracted]

### Cross-Device Access

Since the VM is in the cloud, developers can:
- Review agent work from any device (laptop, tablet, phone)
- Manage agent tasks remotely
- Approve PRs from mobile ^[extracted]

## Advantages Over Local Execution

| Dimension | Local Agent | Cloud VM Agent |
|-----------|------------|----------------|
| Compute | Limited by laptop | Unlimited cloud resources |
| Network | Local only | Full internet access |
| Persistence | Tied to local session | Persistent across time |
| Parallelism | Limited by local CPU | Unlimited parallel VMs |
| Device | Fixed to developer's machine | Accessible from any device |

## Related Pages

- [[concepts/remote-agents-as-a-service|Remote Agents as a Service]] — The service model
- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — Use case
- [[concepts/agent-at-scale|Agent at Scale]] — Scaling considerations
- [[entities/google-jules|Google Jules]] — Real-world implementation
