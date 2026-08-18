---
title: "camelAI's Durable Object Agent Architecture — Miguel Salinas"
category: references
tags: [camelai, cloudflare, durable-objects, agent-harness, code-mode, serverless]
sources:
  - "https://x.com/Vercantez/status/2082138839888589200"
  - "https://x.com/Vercantez/article/2082137754788646912"
  - "https://github.com/qaml-ai/camelAI"
source_url: "https://x.com/Vercantez/status/2082138839888589200"
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
summary: "A detailed account of camelAI's migration from VM-hosted agents to a Durable Object harness with SQLite/R2 persistence, Code Mode, explicit methods, and short-lived Linux containers."
stub: false
provenance:
  extracted: 0.94
  inferred: 0.04
  ambiguous: 0.02
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
relationships:
  - target: "[[concepts/edge-native-agent-harness]]"
    type: implements
  - target: "[[entities/camelai]]"
    type: related_to
  - target: "[[entities/cloudflare]]"
    type: uses
---

# camelAI's Durable Object Agent Architecture — Miguel Salinas

> [!tldr] camelAI decomposes a coding agent into a Durable Object-hosted brain, persistent database/object-storage workspace, explicit execution methods, and short-lived Linux workers for the few tasks that need them.

## Overview

camelAI moved away from an always-on VM per user because attached disks and machine orchestration were too expensive to scale. Its replacement is a Cloudflare-native architecture built around Durable Objects, SQLite, R2, Artifacts, Pi's lower-level agent libraries, Code Mode, dynamic Workers, and selective containers. ^[extracted]

## Migration Stages

### Stage 0: VM-hosted Claude Code

The original system ran the Claude Code harness inside a full virtual machine. camelAI later built a container service, but persistent VMs and fast attached disks remained expensive and operationally heavy. ^[extracted]

### Stage 1: Durable Object brain, remote VM hands

camelAI built its own harness on Pi's lower-level agent loop and state-management libraries, leaving the operating-system-dependent layer behind. Each chat thread ran in a Cloudflare Durable Object while VMs remained available for command execution. ^[extracted]

This separation let the agent start responding before a VM booted, let VMs sleep when not needed, and allowed one agent to control multiple project VMs. ^[extracted]

### Stage 2: Filesystem without VMs

Each project became a virtual filesystem backed by Durable Object SQLite, with R2 for larger files. Small files live in SQLite rows; files above roughly 1.5 MB use R2 with a pointer in SQLite. Cloudflare Artifacts maintains git-compatible history without a hosted git server. ^[extracted]

### Stage 3: JavaScript Code Mode instead of bash

The agent now writes JavaScript executed in fresh V8 isolates through Code Mode and dynamic Worker loaders. Credentials stay outside the sandbox; the agent calls authenticated connection methods exposed by the platform. ^[extracted]

Native read, write, edit, grep, and glob tools cover common file operations. Deployment, app builds, and Python notebooks are explicit methods rather than arbitrary shell commands. ^[extracted]

## Selective Linux

Short-lived containers remain for Vite/Tailwind/React Router builds and Python notebooks because these jobs need Linux, dependency installation, or more memory and CPU than the Worker environment provides. Containers are started for seconds of work and then shut down. ^[extracted]

## Trade-offs

The architecture requires camelAI to anticipate and expose capabilities as explicit methods. This is more constrained than bash, but the authors report that the constraint improves product clarity and smaller-model performance by narrowing the action space. ^[extracted]

The result is an [[concepts/edge-native-agent-harness|edge-native agent harness]] where persistent state is data rather than an always-on machine and Linux is a specialized execution backend rather than the default substrate. ^[inferred]

## Concepts

- [[concepts/edge-native-agent-harness]]
- [[concepts/durable-objects]]
- [[concepts/durable-execution]]
- [[concepts/agent-infrastructure]]
- [[concepts/agent-tool-calling]]
- [[concepts/agent-sandboxing]]
- [[concepts/ai-harness]]

## Entities

- [[entities/camelai]]
- [[entities/miguel-salinas]]
- [[entities/cloudflare]]
- [[entities/pi]]
- [[entities/cloudflare-agents-sdk]]

## Open Questions

- How are arbitrary user dependencies represented when no explicit method exists?
- What are the isolation and quota boundaries for dynamic Worker executions?
- How does the system preserve compatibility as the underlying Cloudflare primitives evolve?

## Sources

- https://x.com/Vercantez/status/2082138839888589200
- https://x.com/Vercantez/article/2082137754788646912
- https://github.com/qaml-ai/camelAI
