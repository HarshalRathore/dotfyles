---
title: "Repository as System of Record"
category: concepts
type: concept
tags:
- repository
- system-of-record
- agent-harness
- context-engineering
- state-management
summary: "The code repository as the single authoritative source for agent work — decisions, constraints, execution state, verification. Knowledge not in the repo does not exist for the agent."
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-03-why-the-repository-must-become-the-system-of-record/"
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: "2026-08-13"
tier: supporting
created: "2026-08-13"
updated: "2026-08-13"
---

# Repository as System of Record

The **repository as system of record** is the principle that the code repository is the authoritative source for everything an agent needs to do its work — project decisions, architecture constraints, execution state, and verification standards. "The repo has the final say — nowhere else counts." ^[extracted]

## Definition

An agent has exactly three input channels: system prompts and task descriptions, file contents from the repository, and tool execution output. It cannot ask colleagues, search chat logs, or read wiki pages the way a human can. Therefore any knowledge that lives only in Slack, Jira, Confluence, or people's heads is, for the agent, information that does not exist. The repository is the only stable, reliably accessible storage the agent has — making it the de facto (and, deliberately, the de jure) system of record for agent-driven work. ^[extracted]

The lecture frames this with a map metaphor: the repo is the map given to the agent; where the map is blank, the agent has to guess — wrong guesses become bugs, excessive guessing wastes context, and every new session guesses all over again. ^[extracted]

## Key Claims

- **Repo as spec (OpenAI).** OpenAI's harness engineering article states that information not in the repo does not exist for the agent; the repository is the highest-authority specification document. ^[extracted]
- **Persistence is a necessary condition for long-task continuity (Anthropic).** Anthropic's long-running agents documentation ties cross-session knowledge recoverability directly to task success rates — and the repo is where that state must live. ^[extracted]
- **Proximity over volume.** A 50-line `ARCHITECTURE.md` next to the code it describes beats a 500-page design document in a wiki nobody maintains. Information is useful only when it's at hand the moment it's needed. ^[extracted]
- **Drift is the cost of not doing this.** Knowledge decay — docs going stale relative to code — is described as the biggest enemy: out-of-date documentation is more dangerous than none, because it sends the agent in the wrong direction while the agent believes it is on the right track. ^[extracted]
- **Failure is the observable consequence.** In the lecture's 30-microservice case study, 70% of agent tasks required human intervention because decisions lived in heads and hard-to-search tools; agents violated implicit constraints "everyone knows but nobody ever wrote down." ^[extracted]
- **ACID as the state-management discipline.** Atomicity (one logical operation per commit), Consistency (verification predicates like green tests), Isolation (per-agent progress files or branches), Durability (cross-session knowledge in git-tracked files). "What's in your head doesn't count — only what's written down counts." ^[extracted]

## Measurement

- **Knowledge Visibility Gap** — the proportion of project knowledge NOT in the repository; the lecture's exercise targets bringing it below 10%. ^[extracted]
- **Fresh Session Test** — open a brand-new agent session with only repo contents and see if it can answer: What is this system? How is it organized? How do I run it? How do I verify it? What's the current progress? ^[extracted]
- **Discovery Cost** — context budget burned to locate a single piece of information; critical info belongs where the agent sees it first. ^[extracted]

## Sources

- Walking Labs, *Learn Harness Engineering*, Lecture 03 — "Making the Repository the Single Source of Truth" (https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-03-why-the-repository-must-become-the-system-of-record/). Distilled into [[references/harness-lecture-03-repository-system-of-record|Lecture 03 deep-dive]].
- Corroborating lens: OpenAI's Harness Engineering post and Anthropic's Effective Harnesses for Long-Running Agents, both cited by the lecture and covered in [[references/harness-lecture-02-what-a-harness-actually-is|Lecture 02]] ("the repo IS the spec"; "anything the agent cannot see, for all practical purposes, does not exist").

## Related

- [[concepts/agents-md|AGENTS.md]] — the standardized entry file that orients the agent to the repo-as-system-of-record
- [[concepts/ai-harness|AI Harness]] — the repo is the harness's state/instruction substrate
- [[concepts/context-engineering|Context Engineering]] — the visibility/map framing is context delivery by other means
- [[concepts/agents-should-use-a-filesystem|Agents Should Use a File System]] — the file system as the agent's state representation, of which this is the repository-scale consequence
- [[concepts/agent-memory|Agent Memory]] — durability claim: only persisted (repo) knowledge survives across sessions
- [[entities/openai|OpenAI]] / [[entities/anthropic|Anthropic]] — the two sources the lecture's truth claim rests on
