---
title: "Knowing When to Stop: The Art of Making a Loop Converge — Yoko Li (X Article)"
category: references
tags: [loop-engineering, agent-loops, verification, test-time-compute]
sources:
  - "https://x.com/i/status/2085392969558089980"
source_url: "https://x.com/i/status/2085392969558089980"
created: "2026-08-07T05:00:00Z"
updated: "2026-08-07T05:00:00Z"
summary: "Yoko Li's essay on loop convergence: done comes from outside the work, the verifier defines progress, four conditions of completion, and the economics of when to stop."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-07"
tier: supporting
---

# Knowing When to Stop: The Art of Making a Loop Converge

> [!tldr] An AI model can almost always produce another answer — so "done" must be manufactured outside the generator. The verifier decides both when the loop stops and what counts as progress; loop engineering is re-representing tasks until they sit where loops can converge.

**Author:** Yoko Li (@stuffyokodraws), Partner @a16z (infra & AI). **Published:** 2026-08-06 as an X Article.

## Overview

The essay asks how an AI model can know when its work is done, and answers that humans don't have a universal "done" detector either — programmers wait for green tests, designers step away and judge, writers submit on deadline. Completion is a judgment produced by the **system around the work** (tests, specs, precedent, approval, deadlines, risk, diminishing returns). A loop is only as good as the **verifier at each step**; without humans in the loop, designing what gets verified each cycle is the key — and it is hard. ^[extracted]

## Key Points

### The verifier defines progress, not just stopping

- A loop can converge on the verifier while diverging from user intent: in SpecBench, frontier agents routinely passed visible tests while failing held-out tests; one produced a **2,900-line "compiler" that memorized the test inputs**. ^[extracted]
- If the signal is incomplete, the loop gets better at passing the check without getting better at the task. ^[extracted]
- Loop engineering is not making an agent retry — it is making each cycle **reduce the distance** between current state and a desired state. "A loop is not yet a direction." ^[extracted]

### Why coding loops converged first

- Code is both **editable and executable** — change one function, run it, read the failure, retry. The environment returns a clear signal. ^[extracted]
- The same pattern applies to visual artifacts with editable representations: an SVG contains paths/shapes/text/gradients; a Blender scene contains geometry/materials/cameras/constraints. One wrong curve → change the path, instead of regenerating from scratch. ^[extracted]
- Visual loops fail where the target is "make it better, with better taste, but you cannot ask a human" — feedback is global and hard to map to one precise edit. Visual loops are not impossible; they are often extremely hard to verify. ^[extracted]

### The four conditions of completion

1. **A target state** — a representation of "done": test suite, spec, performance constraints, reference image, dimensions, layout rules. "Make it better" is not a target state — it is another prompt. ^[extracted]
2. **An observable current state** — files, diffs, test results, traces, DOM tree, SVG structure, Blender scene graph. A rendered output alone is not enough; the system must see the underlying structure to locate the error. ^[extracted]
3. **A precise way to make changes** — edit the part responsible for the error without regenerating everything else. The more local the edit, the more the loop preserves what already works. This is the part people struggle with: nearly every researcher interviewed said their loop started working only after finding the right tool calls and intermediate prompts, mostly by trial and error. ^[extracted]
4. **A stopping rule** — a condition from *outside* the generator: tests passing, constraints satisfied, score threshold, reviewer approval. It must account for cost — 500 attempts may converge technically but not economically. ^[extracted]

### Loops are tuned to their stack

- The tool calls that made a loop converge on one codebase encode assumptions that stop holding elsewhere: **bespoke loops do not generalize for free**. Published loops work for some people and not others — both sides of that discussion are real. ^[extracted]

### The editability × verifiability chart

- Two axes: how **editable** the artifact is, how **verifiable** the result is. Code sits upper-right (easy to edit, strong verifiers); open-ended image generation sits bottom-left. ^[extracted]
- Task position can move by **reframing**: a raster image as SVG paths or a Blender scene becomes editable (moves up); a reference image or constraints make progress verifiable (moves right). Loop engineering = re-representing the task until it sits in the quadrant where loops converge. ^[extracted]

### The economics of loops

- Returns on test-time compute are **logarithmic** across studies: one web-agent benchmark went from 38.8% → 43.2% success going 1 → 10 samples; 10 → 20 bought +0.2 points for twice the tokens. Past the plateau, marginal iteration can go **negative** — reasoning models with larger budgets start abandoning answers that were already correct. ^[extracted]
- Her Lighthouse experiment on Anthropic's popular loop example: on a deliberately broken page (Lighthouse 35) Claude Code cleared 98 on the first try for $0.35 — the loop never engaged. She made the goal unreachable (2.2s artificial latency capping the score ~89, asked for 100): the first **$1.40 took the score 26 → 89**; the remaining **$2.84 (67% of the bill) bought exactly zero points** — turn after turn of re-minifying HTML against a bottleneck the agent couldn't change, each turn more expensive as the transcript grew (the Haiku evaluator quietly accumulated $0.67 on its own). ^[extracted]
- The loop's escape hatch is unreliable: Claude correctly diagnosed the latency ceiling around try 5, but the evaluator model bounced it back **14 times** anyway. ^[extracted]
- "Stopping well isn't something one can prompt into existence. It takes infrastructure": something to meter spend, something to measure progress against it, and something with enough information to cut the loop off. ^[extracted]

### The stack for loop engineering

- Once the loop becomes the unit of engineering, infrastructure is needed at every layer: an **environment** to act in, a place to keep **long-running state** alive, a way to **verify** (close the loop), and a **human-steering surface**. A stack has already formed around each category. ^[extracted] The article names categories, not vendors. ^[inferred]

### Inference-time vs training-time loops

- Inference time: the loop changes the work, not the model — fixed weights, searching a better answer within one task (test-time compute). Training time: RL runs many trajectories, scores outcomes, updates the model. Same rule: **the loop is only as good as its verifier** — test suite in agent loops, reward signal in RL; sometimes the two are the same. ^[extracted]
- The loops feed each other: inference-time traces (what worked, what failed, which corrections led to success) become training data, preference pairs, or rewards. But not every failure should be trained away — often the higher-leverage fix is outside the weights: a better tool, clearer state, a more precise action space, a stronger verifier. ^[extracted]

### Future implications

- **Economics must become explicit**: loops currently bill like forgotten cloud instances — the token costs the same whether it moves the score or re-minifies the same HTML for the ninth time. The missing pieces: cost per iteration, progress per dollar, a visible curve while the loop is still running. ^[extracted]
- For loops that converge, the interesting infra work has **moved out of the loop**: the environment, the surviving state, the verifier, the human surface. "The loop itself is a while-statement" — differentiation lives in the stack around it. ^[extracted]
- Closing line: the systems that matter will not be the ones that can keep going — they all can. They will be the ones whose builders decided, precisely and in advance, *what done costs and what done means*. ^[extracted]

## Concepts

- [[concepts/loop-engineering]] — the wiki's engineering-roadmap counterpart; this essay adds the verifier/stopping lens
- [[concepts/agent-exit-strategies]] — termination patterns; the essay's stopping rule is an external, cost-aware exit condition
- [[concepts/test-time-compute-scaling]] — the logarithmic-returns evidence extends this page
- [[concepts/reward-hacking]] — verifier gaming (the 2,900-line "compiler")
- [[concepts/verifiers-toolkit]] — how verifiers are designed and composed
- [[concepts/agent-workflow-loop]] — the general loop shape being engineered

## Entities

- [[entities/yoko-li]] — author
- [[entities/anthropic]] — the loop-engineering post her Lighthouse run stress-tested ^[inferred]
- [[entities/h100envy]] — independent practitioner reaching convergent conclusions about loop discipline

## Open Questions

- How do you detect the diminishing-returns point *in flight*? The article's answer is "infrastructure" but describes no concrete mechanism or product. ^[ambiguous]
- Does the 38.8% → 43.2% → +0.2pt curve generalize across task families, or is it benchmark-specific? ^[ambiguous]
- If loop traces become RL training data, which failures should be trained away versus fixed outside the weights? The article argues for the latter but offers no decision rule. ^[inferred]

## Related

- [[references/h100envy-loop-engineering]] — step-by-step roadmap for convergent loops (deterministic checks, stateless iteration, brakes, cost accounting)
- [[references/posthog-why-were-bullish-on-loops]] — loops as a product strategy
- [[misc/web-x-com-i-status-2085392969558089980]] — the X post announcing this article
