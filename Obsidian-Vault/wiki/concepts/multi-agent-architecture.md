---
title: Multi-Agent Architecture
category: concepts
tags:
- multi-agent
- agent-architecture
- agent-workflows
- mcp
- a2a
- agent-memory
- ai-agents
sources:
- "Graph Engineering: build 1000+ agent loops in one window from one prompt — X post and captured Google Hands-on AI Multi-Agent Lab, 2026-08-02"
- "Google Hands-on AI Multi-Agent Lab - MCP, ADK, A2A, and Agent Memory"
- "https://www.deeplearning.ai/courses/agentic-ai"
- "https://nitter.tiekoetter.com/i/article/2080296261576687751"
- "https://video.twimg.com/amplify_video/2083930623962406912/vid/avc1/1922x1080/Z6F8963hpN2se-3A.mp4"
summary: "Multi-agent architecture composes specialized agents with bounded tools, handoffs, and shared memory instead of one loop; parallel specialist voting on a shared whiteboard is a core pattern."
provenance:
  extracted: 0.81
  inferred: 0.14
  ambiguous: 0.05
base_confidence: 0.82
lifecycle: draft
lifecycle_changed: 2026-08-02
tier: supporting
created: 2026-07-06
updated: 2026-08-03T00:00:00Z
relationships:
- target: '[[concepts/agent-architecture]]'
  type: extends
- target: '[[concepts/agent-workflows]]'
  type: implements
- target: '[[concepts/agent-to-agent-communication|Agent-to-Agent Communication]]'
  type: uses
- target: '[[concepts/agent-memory|Agent Memory]]'
  type: uses
- target: '[[references/google-hands-on-ai-multi-agent-lab|Google Hands-on AI Multi-Agent Lab]]'
  type: derived_from
- target: '[[references/google-agents-to-autonomous-systems-course]]'
  type: derived_from
---
# Multi-Agent Architecture

**Multi-agent architecture** is the design of a system where multiple specialized agents collaborate through explicit workflow and communication boundaries. The graph defines which agents can hand work to one another; MCP exposes tools and data; A2A carries agent-to-agent work; memory preserves useful state. ^[extracted]

## Composition Pattern

A practical system separates concerns into:

1. **Agents** — bounded roles with their own instructions, tools, and decision scope.
2. **Workflows** — sequential, parallel, and loop transitions that coordinate execution.
3. **MCP tools** — structured access to external systems and data.
4. **A2A handoffs** — messages or tasks exchanged between agents.
5. **Memory** — durable observations and artifacts retrieved across steps.

The boundaries are useful because they make the graph inspectable and let each node be tested independently. ^[inferred]

## Captured Lab

The Google hands-on lab demonstrates the pattern with ADK, MCP, A2A, agent memory, and graph composition. Its teaching value is not a single framework trick; it is the mapping from a user goal to a graph whose nodes can be decomposed, parallelized, looped, and verified. ^[extracted]

## Communication Topologies

The Andrew Ng course distinguishes several multi-agent communication patterns: a linear handoff, a manager coordinating workers, deeper hierarchies, and all-to-all messaging. Linear and hierarchical patterns make ownership and data flow easier to reason about; all-to-all communication permits flexibility but increases chaos and unpredictability. ^[extracted]

The topology is a design choice, not a reason to add agents by default. Specialized roles should have bounded responsibilities and an explicit handoff contract. ^[inferred]

## Voting Specialist Pattern

Google's Space Quest workshop teaches a parallel specialist pattern: three agents analyze different evidence modalities (image, video, database) in parallel and **vote**; the root agent applies a majority rule (2-of-3) for the final decision. The teaching demo deliberately produces a split vote — two agents misjudge, one disagrees, the majority still lands correctly — showing why parallel specialists beat a single agent on multimodal judgment. ^[extracted] See [[references/google-agents-to-autonomous-systems-course]].

State is the coordination mechanism: a setup callback runs once and writes shared evidence URLs into **session state**, which acts as a whiteboard every parallel sub-agent reads at runtime. State is how agents communicate with each other and with their tools; it is the same mechanism ADK's session service persists. ^[extracted]

Costs of the pattern: more resource consumption and concurrency complexity; sequential execution is preferable for simple tasks. ^[extracted]

## Related

- [[concepts/agent-architecture]] — Four-component agent stack
- [[concepts/agent-workflows]] — Workflow orchestration and state transitions
- [[concepts/agent-to-agent-communication|Agent-to-Agent Communication]] — A2A boundary
- [[concepts/model-context-protocol|Model Context Protocol]] — MCP tool boundary
- [[concepts/agent-memory|Agent Memory]] — Persistent context and artifacts
- [[references/google-hands-on-ai-multi-agent-lab|Google Hands-on AI Multi-Agent Lab]] — Captured course reference
