---
title: Stop being the code review bottleneck
category: references
tags: [code-review, ai-agents, automation, developer-workflow, pr-automation, human-in-the-loop]
aliases: [PostHog code review bottleneck]
relationships:
  - target: '[[concepts/developer-outer-loop]]'
    type: extends
  - target: '[[concepts/self-driving-code-review]]'
    type: implements
  - target: '[[concepts/agent-driven-development-shift]]'
    type: relates_to
  - target: '[[concepts/ai-teammates-insufficient]]'
    type: related_to
sources:
  - 'https://x.com/posthog/status/2075645235724767739'
summary: PostHog's four workflow changes for offloading code review to agents — multi-agent review panels, PR babysitting loops, auto-stamping, and observation-based verification.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.78
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Stop being the code review bottleneck

A PostHog article by [@jinayoon_] describing four concrete workflow changes the team adopted to stop engineers from becoming the bottleneck in AI-accelerated code review pipelines. The core thesis: if you need to be involved in every code review, you will always be the bottleneck; instead, build pipelines that delegate tasks to agents.

## The Core Insight

> The naive solution would be for developers to review code faster. The 500 IQ take is for developers to review as little code as possible. ^[extracted]

As AI writes code faster than any human can review, the problem shifts from "review faster" to "review less" — by pushing review tasks out of the human loop into agent-driven pipelines.

## Four Workflow Changes

### 1. Make Agents Review Code for You

The primary offload: assign the simpler reviews to agents, and flag only what genuinely needs human attention.

**Key rule:** The agent that wrote the code cannot be the one that reviews it — agents are bad at checking their own work since they are unaware of their own blind spots. ^[extracted]

**Best practice:** Use multiple agents with different instructions, goals, models, and providers to cover more gaps. ^[extracted]

PostHog engineer Paul D'Ambra's system:
- **qa-swarm** spawns four specialized reviewer agents:
  - **qa-team** — technical subagents hunting for security, database, performance issues
  - **security-audit** — probes for SQL/prompt injections
  - **paul-reviewer** — uses Paul's voice, focuses on observability, rollouts, naming
  - **xp-reviewer** — applies an Extreme Programming lens
- **review-triage** sorts findings into three categories:
  - **actionable** → gets fixed and pushed
  - **nits** → get resolved with a comment
  - **ambiguous** → escalated for Paul to work through later
- Outer loop iterates up to three times or until no new actionable threads appear

> "Something like 60% of my token spend is burned automating the toil of handling CI and review and I don't regret a single dollar." — Paul D'Ambra ^[extracted]

**Alternatives for smaller teams:** Single-agent designs like Kun Chen's approach when multi-agent loops are not feasible. ^[extracted]

### 2. Delegate PR Babysitting to Loops

PR babysitting involves tedious tasks that don't need human attention: monitoring CI, re-running flaky tests, checking notification comments, keeping branches up to date. Delegating these to loops reduces context switching and engineering fatigue.

Example system: @haacked's **babysit-prs** skill, which dispatches a single-PR review skill via spawned agents per unreviewed PR, with extra tasks like CI monitoring, branch freshness, lint autofix, and description sync. ^[extracted]

### 3. Add a PR Auto-Stamper

- Fast-moving teams generate a lot of small, low-risk PRs, and every one still needs approval on GitHub (a.k.a., a stamp). At PostHog, they used to handle this in Slack where engineers drop their PR in #dev-stamp-exchange and wait for someone to give it a quick approval and react with a stamp emoji. They even built a leaderboard for it. Now, most of those are done by their **StampHog** agent instead.

In one quarter, StampHog gives the final stamp on roughly **1 in 3 PRs** merged into PostHog's main repo. Last month alone: **1.6K PRs** handled autonomously — 1.6K fewer Slack interruptions.

StampHog's safety checks:
- **PR state** — no merge conflicts, no changes requested
- **Blast radius** — deny list keywords (auth, secrets, billing, public APIs)
- **Diff size** — under 500 lines and 20 files
- **LLM check** — basic showstoppers

If the agent approves: bare GitHub approval with no line comments. If it refuses or escalates: 1–2 sentence reason, risk level, and next steps (usually routing to a subject-matter expert via CODEOWNERS-soft and git-blame familiarity).

> Safety invariant: fail closed, never request changes or merge. LLM can tighten gates but never loosen them. ^[extracted]

### 4. Verify by Observation, Not Reasoning

> Agents are good at explaining why their code works. The explanation is often convincing... but also wrong. ^[extracted]

Daniel Visca's rule of thumb: **observability over reasoning.** Don't accept an argument that code works when you can watch it work.

**Gold standard:** Send a real API request and read the response. But this doesn't scale — a 3,000-line PR would be challenging to observe.

**Scaling approach:** Decompose work into small, single-purpose PRs stacked using **Graphite**'s stacking functionality. Each diff is independently runnable and observable:

- At each step, run a real check and confirm the output matches expectations
- Merge bottom-up so each layer builds on already-verified behavior
- Early mistakes can't compound; bugs are in one small diff, not the whole change

This also enables StampHog to auto-approve the small, focused PRs — creating two distinct verification layers: agent reasoning first, human observation second.

**Frontend extension:** Agent takes screenshots and GIFs for each PR step, capturing evidence from the branch's final state — empty/loading/error/populated screens, key interaction GIFs, before/after for behavior changes — so changes can be reviewed by observation, not by reading the diff. ^[extracted]

## Related Systems Mentioned

- **Graphite** — PR stacking tool; also has Diamond AI reviewer ^[extracted]
- **@haacked/babysit-prs** — PR babysitting skill pattern ^[extracted]
- **@pauldambra/qa-swarm + review-triage** — Multi-agent review panel with triage ^[extracted]
- **Kun Chen** — Single-agent review design alternative ^[extracted]
- **@jinayoon_** — Author of the PostHog article

## Key Takeaways

1. **Multi-agent review panels** outperform single agents because different agents have different blind spots ^[extracted]
2. **PR automation (stamping, babysitting)** eliminates low-value context switching — a significant source of engineering fatigue ^[extracted]
3. **Observation-based verification** (running actual code, screenshots) is more reliable and scalable than reasoning-based review of diffs ^[extracted]
4. **Decomposition is essential** — small stacked PRs are both more observable and more auto-approvable ^[extracted]

## Open Questions

- What is the token cost tradeoff of multi-agent review vs. single-agent review? The 60% spend figure from Paul suggests it is significant. ^[ambiguous]
- Does StampHog's safety gate configuration generalize across codebases, or is it heavily tuned to PostHog's specific deny list and thresholds? ^[extracted]
- How does the observation-based verification approach scale to complex UI changes where screenshots may not capture behavioral correctness? ^[inferred]

## Sources

- [[references/posthog-stop-being-the-code-review-bottleneck]] — This source
