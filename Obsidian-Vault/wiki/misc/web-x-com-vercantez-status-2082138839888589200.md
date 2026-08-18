---
title: "We rewrote our agent to run entirely in a Durable Object — camelAI's X Article"
category: misc
tags: [camelai, cloudflare, durable-objects, agent-harness, code-mode]
sources:
  - "https://x.com/Vercantez/status/2082138839888589200"
  - "https://x.com/Vercantez/article/2082137754788646912"
source_url: "https://x.com/Vercantez/status/2082138839888589200"
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
summary: "Miguel Salinas explains camelAI's move from VM-hosted coding agents to Durable Objects, SQLite/R2 storage, Code Mode JavaScript, and explicit execution methods."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.94
  inferred: 0.04
  ambiguous: 0.02
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
relationships:
  - target: "[[concepts/edge-native-agent-harness]]"
    type: implements
  - target: "[[concepts/durable-objects]]"
    type: uses
  - target: "[[entities/cloudflare]]"
    type: related_to
---

# We rewrote our agent to run entirely in a Durable Object — camelAI's X Article

**Author:** Miguel Salinas (@Vercantez), CTO of camelAI. ^[extracted]
**Date:** July 28, 2026. ^[extracted]

## Article Content

camelAI describes a three-stage migration from VM-hosted Claude Code to a Cloudflare-native agent harness: move the agent into a Durable Object while controlling VMs remotely, replace VMs with Durable Object SQLite and R2-backed filesystems, then replace bash with JavaScript Code Mode and explicit methods. ^[extracted]

## Distilled Architecture

- Durable Objects host the agent loop and persistent chat-thread state near the user.
- Workspace files use Durable Object SQLite for small files and R2 for larger files.
- Cloudflare Artifacts supplies provisioned, git-compatible project history.
- Code Mode executes generated JavaScript in fresh V8 isolates.
- Explicit methods handle deployment, builds, and Python notebooks.
- Short-lived Linux containers remain only for work that genuinely needs Linux. ^[extracted]

The stated benefits are lower cost, lower latency, simpler operations, and better performance from smaller models. ^[extracted]

## Concepts

- [[concepts/edge-native-agent-harness]]
- [[concepts/durable-objects]]
- [[concepts/agent-infrastructure]]
- [[concepts/agent-tool-calling]]
- [[concepts/agent-sandboxing]]

## Entities

- [[entities/camelai]]
- [[entities/miguel-salinas]]
- [[entities/cloudflare]]
- [[entities/pi]]
- [[entities/cloudflare-agents-sdk]]

## Open Questions

- Which explicit methods must be added as users discover new workflows?
- How does the architecture behave for workloads that need arbitrary Linux tools?

## Related

- [[references/camelai-durable-object-agent]]
- [[concepts/ai-harness]]
