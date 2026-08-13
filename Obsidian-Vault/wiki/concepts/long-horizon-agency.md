---
title: Long-Horizon Agency
category: concepts
tags:
  - long-horizon-agents
  - agent-capability
  - agent-harness
  - model-optimization
relationships:
  - target: "[[references/towards-long-horizon-agents-a-survey]]"
    type: derived_from
  - target: "[[references/memoharness-agent-harnesses-learn-from-experience]]"
    type: related_to
  - target: "[[references/awesome-long-horizon-agents]]"
    type: related_to
  - target: "[[concepts/ai-harness]]"
    type: extends
  - target: "[[concepts/agent-loop]]"
    type: uses
sources:
  - "https://openreview.net/pdf?id=HyhfhlbWGh"
  - "https://arxiv.org/html/2607.14159v1"
  - "https://github.com/RUC-NLPIR/Awesome-Long-Horizon-Agents"
  - "https://x.com/i/status/2083430232405733819"
summary: "System-level capability for coherent multi-step action across contexts, sessions, tools, and open-ended task streams — jointly shaped by model and harness."
provenance:
  extracted: 0.50
  inferred: 0.42
  ambiguous: 0.08
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-18
tier: supporting
created: 2026-07-18
updated: 2026-08-02T01:17:21Z
---

# Long-Horizon Agency

Long-horizon agency is the capability of an AI system to sustain coherent, interdependent multi-step reasoning and action across extended contexts — from tasks within a single context window to those spanning multiple sessions, tools, and open-ended task streams. It is a **system-level capability** jointly shaped by the base model's policy and the surrounding harness. ^[extracted]

## Formalization

Following the formalization from [[references/towards-long-horizon-agents-a-survey|Towards Long-Horizon Agents]]: ^[extracted]

$$
\text{Agent} = \pi_\theta \oplus H
$$

A base policy $\pi_\theta$ coupled to a surrounding **harness** $H$. The harness assembles a contextual signal at each step:

$$
c_t = H(o_{0:t}, a_{0:t-1}, Q), \quad a_t \sim \pi_\theta(\cdot \mid c_t)
$$

Long-horizon capability is not a property of the model alone — it emerges from the interaction between the policy and the harness's ability to manage context, memory, tools, and control flow. ^[inferred]

## Three Levels of Difficulty

Long-horizon tasks organize into three nested levels (H1 ⊂ H2 ⊂ H3): ^[extracted]

| Level | Horizon | Example | Demanded Capability |
|:-----:|:--------|:--------|:--------------------|
| **H1** | Intra-context, ~minutes | Multi-step code edit in one window | C1 — Interactive reasoning within context |
| **H2** | Cross-context, ~hours–days | Multi-session research project | C2 — Cross-context state & memory |
| **H3** | Cross-task, open-ended | Self-improving agent over weeks | C3 — Cross-task experience accumulation |

Each level nests and reveals a distinct insufficiency: per-step accuracy alone (H1), larger context windows alone (H2), episodic success alone (H3). ^[extracted]

## Harness–Model Co-Evolution

The central dynamic of long-horizon agency is **co-evolution** between the harness and the model: ^[extracted]

1. Capabilities first implemented explicitly in the **harness** (loops, memory, tool use)
2. May later be **internalized** into the model policy via RL training
3. Stronger policies enable more **capable harnesses** — which in turn generate better training data

This creates a virtuous (or vicious) cycle. The [[references/memoharness-agent-harnesses-learn-from-experience|MemoHarness]] framework exemplifies one approach to optimizing the harness side: decomposing it into six editable control surfaces and adapting the harness per-test-case from execution experience. ^[extracted]

## Three Representative Failure Modes

### Goal Drift and Compounding Error

Errors accumulate along the trajectory, steering the agent off course. Each step's small error compounds into larger deviations. Mitigations include intermediate verification checkpoints and process reward models. ^[extracted]

### Context Rot and Context-Limit Pressure

Agent performance degrades past a context-utilization threshold. Context windows fill with stale or irrelevant information; compression and summarization strategies become critical. Related to [[concepts/instruction-rot]] in the broader agent operating context. ^[extracted]

### Sparse, Delayed Rewards and Irreversibility

Reward arrives only at the end of long trajectories, leaving no intermediate learning signal. Longer trajectories increase risk of irreversible actions. [[concepts/advantage-estimation|Advantage estimation]] and process reward models address this by attributing credit to intermediate steps. ^[extracted]

## Time-Horizon Scaling

An empirical scaling law describes the growth of frontier time horizons: ^[extracted]

$$
H(t) \approx H_0 \cdot 2^{(t-t_0)/T_d}
$$

With doubling time accelerating from ~196.5 days (full series) to ~130.8 days (2023 onward). Frontier agents rose from seconds to ≥16 hours in roughly 6 years. This is a **descriptive** trend, not a predictive law. ^[extracted]


## Google Antigravity Case

The source keynote reports a twelve-hour operating-system build coordinated by 93 parallel sub-agents. The run made more than 15,000 model requests, processed 2.6 billion tokens, generated and iterated over tests, and reportedly produced a functioning core OS for less than $1,000 in API credits. ^[extracted]

This is a concrete H2-to-H3-style demonstration: the work spans hours, decomposes across agents, persists through asynchronous execution, and accumulates a shared artifact rather than ending after one context window. The numbers remain self-reported product-demo claims. ^[inferred] See [[entities/google-antigravity|Google Antigravity]] and [[misc/web-x-com-i-status-2083430232405733819|the source page]].
## Open Questions

1. **Attribution:** How much of long-horizon progress comes from harness improvements vs. model improvements vs. their co-evolution? ^[inferred]
2. **Upper bound:** Does the scaling law have a ceiling, or can it continue through new architectures and training paradigms? ^[inferred]
3. **Measurement:** Should long-horizon competence be benchmarked per-level (C1/C2/C3) or via cross-cutting benchmarks like SWE-bench? ^[inferred]
4. **Transferability:** Harness configurations learned for one model may not transfer to another — [[references/memoharness-agent-harnesses-learn-from-experience|MemoHarness]] shows cross-model gains vary widely (+0.038 to +0.233) ^[inferred]
5. **Self-evolution stability:** Can self-evolving agents avoid distributional drift and goal drift in open-ended runs? ^[inferred]

## Related

- [[concepts/ai-harness]] — The harness component of the Agent = π_θ ⊕ H formulation
- [[references/towards-long-horizon-agents-a-survey]] — The survey that formalizes this concept
- [[references/memoharness-agent-harnesses-learn-from-experience]] — Framework for optimizing harness from experience
- [[references/awesome-long-horizon-agents]] — Curated reading list companion
- [[concepts/agent-loop]] — The loop pattern underlying agent behavior
- [[concepts/context-engineering]] — Thesis that context quality is the primary lever for agent capability
- [[concepts/advantage-estimation]] — RL mechanism addressing sparse rewards in long horizons
- [[concepts/swe-bench]] — Canonical benchmark for software engineering agents
- [[concepts/test-time-compute-scaling]] — Complementary paradigm for improving per-step reasoning
