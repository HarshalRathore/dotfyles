---
title: Google Jules
category: entities
tags:
- google
- google-labs
- coding-agent
- async-agent
- remote-agent
- cloud-agent
- aief2025
sources:
- AIEF2025 - Your Coding Agent Just Got Cloned And Your Brain Isn't Ready - Rustin Banks, Google Jules - https://www.youtube.com/watch?v=X4BwOu0GWb8
relationships:
- target:
  - - entities/google|Google
  type: implements
- target:
  - - concepts/parallel-agent-workflows|Parallel Agent Workflows
  type: enables
- target:
  - - concepts/remote-agents-as-a-service|Remote Agents as a Service
  type: exemplifies
- target:
  - - concepts/asynchronous-coding-agents|Asynchronous Coding Agents
  type: exemplifies
provenance:
  extracted: 0.9
  inferred: 0.07
  ambiguous: 0.03
base_confidence: 0.85
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
summary: Google Jules
---

# Google Jules

**Jules** is Google Labs' asynchronous coding agent designed to run in the background while developers focus on the art of coding. Launched publicly at AI Engineer World's Fair 2025, it operates as a remote agent in the cloud rather than inside the IDE.

## What Jules Is

Jules is an **asynchronous coding agent** meant to handle tasks developers don't want to do right now. It runs in the background, takes tasks from a queue, and completes them independently — freeing developers to focus on high-value work. ^[extracted]

Rustin Banks, product manager for Jules at Google Labs, described it as the tool that "does the laundry, so to say, so that you can focus on the art of coding." ^[extracted]

## Key Capabilities

- **Cloud-based VM**: Jules runs in its own virtual machine in the cloud, cloning the developer's entire codebase and executing any command the developer can run ^[extracted]
- **GitHub integration**: Automatically integrated into GitHub, creating branches, running tests, and merging PRs ^[extracted]
- **Test-first approach**: Can run test suites (Jest, Playwright) and report coverage metrics to help choose between multiple implementation approaches ^[extracted]
- **Cross-device development**: Developers can manage and review agent work from any device, including phones ^[extracted]
- **Multi-agent coordination**: Supports running multiple Jules instances in parallel for different tasks, with an "octopus merge" pattern for bringing results together ^[extracted]

## Real-World Use Cases

Banks cited practical use cases where Jules shines:
- Updating Firebase SDKs automatically ^[extracted]
- Developing applications from a phone ^[extracted]
- Running accessibility audits and security audits — tasks that "seem to go on the backlog but are really important" ^[extracted]
- Improving Lighthouse scores ^[extracted]
- Generating AI summaries for UI elements using [[entities/gemini|Gemini]] ^[extracted]

## Launch and Adoption

Jules was launched publicly at AI Engineer World's Fair 2025 — "to everyone, everywhere, all at once, for free" — while other Google Labs products were being demoed on stage. Within two weeks of launch, it had generated 40,000 public commits. ^[extracted]

## Architecture

Jules exemplifies the **remote agents as a service** model: agents running in the cloud are "infinitely scalable, always connected, and you can develop from anywhere from any device." ^[extracted] This contrasts with IDE-internal agents that are "always going to be limited by our laptop." ^[extractextracted]

## Related Pages

- [[entities/google|Google]] — Parent organization
- [[entities/gemini|Gemini]] — Model used for AI summaries in Jules
- [[concepts/parallel-agent-workflows|Parallel Agent Workflows]] — How Jules enables parallel development
- [[concepts/remote-agents-as-a-service|Remote Agents as a Service]] — Architecture pattern Jules follows
- [[concepts/asynchronous-coding-agents|Asynchronous Coding Agents]] — Agent paradigm Jules embodies
- [[concepts/octopus-merge|Octopus Merge]] — Pattern for consolidating multiple agent outputs
