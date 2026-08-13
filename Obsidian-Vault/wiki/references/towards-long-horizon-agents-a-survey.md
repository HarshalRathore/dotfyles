---
title: "Towards Long-Horizon Agents: A Survey"
category: references
tags:
  - long-horizon-agents
  - agent-harness
  - model-optimization
  - survey
sources:
  - "https://openreview.net/pdf?id=HyhfhlbWGh"
source_url: "https://openreview.net/pdf?id=HyhfhlbWGh"
relationships:
  - target: "[[concepts/long-horizon-agency]]"
    type: implements
  - target: "[[concepts/ai-harness]]"
    type: extends
  - target: "[[references/awesome-long-horizon-agents]]"
    type: related_to
  - target: "[[concepts/agent-loop]]"
    type: related_to
summary: "Survey formalizing long-horizon agency jointly shaped by harness engineering and model optimization, with three nested difficulty levels (H1⊂H2⊂H3) and an empirical scaling law."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.67
lifecycle: draft
lifecycle_changed: 2026-07-18
tier: supporting
created: 2026-07-18
updated: 2026-07-18
---

# Towards Long-Horizon Agents: A Survey

> [!tldr] A 74-page survey (Dong et al., Jul 2026) providing the first principled formalization of long-horizon agency as Agent = π_θ ⊕ H, with three nested difficulty levels (H1⊂H2⊂H3). Organizes the field around six harness components, seven training stages, and four frontier axes with nine open challenges. Grounds claims in METR's empirical time-horizon scaling (doubling ~every 6.5 months, accelerating to 4.3 months since 2023). Does not conduct experiments — it is a taxonomy and synthesis of 700+ references.

## Problem & Motivation

LLMs have evolved from single-turn chatbots into the decision-making core of autonomous agents, but the field lacks a shared definition and taxonomy for "long-horizon" capability. Related terms like "self-evolving" or "autonomous" agents are used interchangeably — none cleanly captures the specific challenge of sustained, interdependent multi-step reasoning across contexts. ^[extracted]

**Central thesis:** *"Long-horizon agency is a system-level capability jointly shaped by two co-evolving components: externalized harness engineering and internalized model optimization."* ^[extracted]

The two sides co-evolve through experience feedback — capabilities first implemented explicitly in the harness may later be internalized into model weights, while stronger policies enable more capable harnesses. ^[extracted]

### Three Representative Failure Modes

1. **Goal drift and compounding error** — errors accumulate along the trajectory and steer the agent off course ^[extracted]
2. **Context rot and context-limit pressure** — agent degrades past a context-utilization threshold; premature termination ^[extracted]
3. **Sparse, delayed rewards and irreversibility** — reward arrives only at end, leaving no intermediate learning signal; longer trajectories increase irreversible actions ^[extracted]

## Method / Taxonomy

### Formal Definition

The paper formalizes a long-horizon agent as: ^[extracted]

$$
\text{Agent} = \pi_\theta \oplus H
$$

Where $\pi_\theta$ is the base policy coupled to a surrounding harness $H$. Embedded in a POMDP with state space $S$, observation space $O$, action space $A$, transition kernel $s_{t+1} \sim \Psi(\cdot \mid s_t, a_t)$, and observation kernel $o_t \sim Z(\cdot \mid s_t)$. At each step the harness assembles a contextual signal: ^[extracted]

$$
c_t = H(o_{0:t}, a_{0:t-1}, Q), \quad a_t \sim \pi_\theta(\cdot \mid c_t)
$$

### Three Nested Levels of Long-Horizon Difficulty

| Level | Horizon | Example Timescale | Demanded Capability |
|:-----:|:--------|:----------------:|:--------------------|
| **H1** | Intra-context, within one window | ~minutes | C1 — Intra-context interactive reasoning |
| **H2** | Cross-context, across windows/sessions | ~hours–days | C2 — Cross-context state & memory |
| **H3** | Cross-task, open-ended task stream | ~lifelong | C3 — Cross-task experience accumulation |

These nest: H1 ⊂ H2 ⊂ H3, with corresponding capabilities C1 ⊂ C2 ⊂ C3. Each reveals a distinct insufficiency: per-step accuracy alone (H1), larger context windows alone (H2), episodic success alone (H3). ^[extracted]

### Time-Horizon Scaling Law

Based on METR measurements (50%-task-completion time horizon for agentic engineering tasks), the paper fits an exponential trend: ^[extracted]

$$
\log_2 H(t) \approx \log_2 H_0 + \frac{t - t_0}{T_d} \quad\Longleftrightarrow\quad H(t) \approx H_0 \cdot 2^{(t-t_0)/T_d}
$$

| Period | Doubling Time $T_d$ |
|:-------|-------------------:|
| Full series (2019–2026) | ~196.5 days (6.5 months) |
| 2023 onward | ~130.8 days (4.3 months) |

Frontier agents rose from **seconds** (GPT-2/GPT-3) → **4 min** (GPT-4, 2023) → **38.8 min** (o1, 2024) → **1.7h** (Claude Opus 4, 2025) → **≥16h** (early Claude Mythos Preview, May 2026) — nearly 4 orders of magnitude. ^[extracted]

### Six-Component Harness

| # | Component | Responsibility | Representative Systems |
|:-:|:----------|:---------------|:-----------------------|
| 1 | **Loops & Workflows** | Schedule model calls, actions, observations | ReAct, ReWOO, ToT, LATS |
| 2 | **Context & Memory** | Bound in-run state, persist across windows | ReSum, MemAgent, Mem0, HippoRAG |
| 3 | **Tools, MCP & Skills** | Interface with external capabilities | MCP, AnyTool, MCP-Zero, Voyager |
| 4 | **Orchestration** | Decompose goals, coordinate multi-agent | MetaGPT, AutoGen, AFlow, Magentic-One |
| 5 | **Hooks & Middleware** | Intercept and govern execution | NeMo Guardrails, AgentSpec, AEGIS |
| 6 | **Verification** | Score states/outputs for correctness/safety | PRMs, LLM-as-Judge, Agent-as-a-Judge |

### Seven Training Stages

1. **Architectural Substrate** — explicit-context, compressed-state, hybrid, high-throughput mechanisms
2. **Data & Environment Synthesis** — task synthesis (TaskCraft), environment synthesis (WebArena, OSWorld), trajectory synthesis
3. **Pre-training & Mid-training** — reasoning priors, long-context state, multimodal perception
4. **Fine-tuning** — instruction selection (AgentTuning, LIMI), curriculum learning, distillation
5. **Agentic Reinforcement Learning** — credit assignment (Search-R1), policy optimization (DAPO, GRPO, StepPO)
6. **On-Policy Distillation** — teacher-guided, self-improving (SOD, f-OPD, MAD-OPD)
7. **Self-Evolution** — offline/online (STaR, R-Zero, Absolute Zero), agent-environment co-evolution

### Four Frontier Axes, Nine Open Challenges

| Axis | Frontier | Core Open Challenge |
|:-----|:---------|:--------------------|
| **I. Evolution** | Self-evolving harness & agents | Objective is a hand-set metric; gains stay in-distribution; long runs overfit/drift |
| | Harness transferability | Models bind to one harness; rankings swing across providers; no standard protocol |
| | Continual & lifelong learning | External memory is shallow; internal updates risk forgetting |
| **II. Effectiveness** | Real-world environment interaction | No direct training in live systems; synthesis faces fidelity test |
| | Digital → embodied agents | Timescale conflict; physics/dimensionality gap |
| **III. Efficiency** | Cost- & budget-aware agency | Budget-blind; no calibrated cost sense; no runtime ceilings |
| | Multimodal & omni harness | Multimodality bolted on; heuristic visual-token budgeting |
| **IV. Trustworthiness** | Reflection & error robustness | Late failure detection; unreliable intrinsic self-correction |
| | Safety & governance | No unified safety standard; self-evolution erodes invariants |

## Key Empirical Result

The paper's central empirical claim — the exponential time-horizon scaling law — is descriptive (fitted to METR's observed trend) rather than predictive. The paper acknowledges uncertainty near the ~16h ceiling. ^[extracted]

## Limitations

- **Survey, not experiment** — no dedicated empirical evaluation or ablation ^[extracted]
- Time-horizon measurements from self-contained software-style tasks only; imprecise near ~16h ceiling ^[extracted]
- Full vs. 2023-onward doubling-time difference: cannot definitively attribute to acceleration due to differing evaluation coverage ^[extracted]
- Scaling law is descriptive, not predictive ^[extracted]
- The harness-vs-optimization attribution problem is stated but unresolved ^[extracted]
- Does not engage with mechanistic interpretability or theoretical limits ^[inferred]

## Related

- [[concepts/long-horizon-agency]] — Core concept formalized by this survey
- [[concepts/ai-harness]] — The harness concept central to the survey's formulation
- [[references/awesome-long-horizon-agents]] — Companion curated reading list
- [[concepts/agent-loop]] — The loop pattern underlying H1/H2/H3
- [[concepts/context-engineering]] — Related thesis about context quality for agents
- [[concepts/ppo-vs-grpo-vs-dpo]] — RL algorithms used in agentic training stages
- [[concepts/model-context-protocol]] — Tool standardization protocol referenced across harness components

## Sources

- https://openreview.net/pdf?id=HyhfhlbWGh — Towards Long-Horizon Agents: A Survey (Dong et al., Jul 2026)
