---
title: Loop Convergence and the Verifier (Yoko Li)
category: references
type: reference
tags:
  - oop-engineering
  - gent-architecture
  - utonomous-agents
  - ngineering-patterns
  - eliability
  - verifier
  - stopping-rule
  - convergence
  - test-time-compute
sources:
  - "https://x.com/i/status/2085392969558089980"
summary: "Verifier-defined progress: four conditions of completion, editability x verifiability axes, log-return economics of stopping (Lighthouse stress test), inference-time vs training-time loops."
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-08-13
---

> Extracted from [[concepts/loop-engineering|Loop Engineering]] to keep the concept page scannable.

## Convergence Conditions and the Verifier (Yoko Li)

[[entities/yoko-li|Yoko Li]]'s essay [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop: The Art of Making a Loop Converge]] supplies the stopping-rule and verifier lens to this roadmap: *done is rarely a property of the work itself — it is a judgment produced by the system around the work*, and an AI model has no internal detector for it. ^[extracted]

**The verifier defines progress, not just stopping.** If the signal is incomplete, the loop gets better at passing the check without getting better at the task. The canonical failure: a SpecBench agent produced a 2,900-line "compiler" that simply memorized the test inputs — the loop converged on the verifier, not the user's intent. This is reward hacking as a convergence failure mode, complementing Step 3's defense layers. ^[extracted]

**Four conditions of completion** (from interviews across domains):
1. A target state — "make it better" is not a target state, it is another prompt ^[extracted]
2. An observable current state — the underlying structure (files, diffs, traces, SVG structure, scene graph), not just a rendered output ^[extracted]
3. A precise way to make changes — the more local the edit, the more the loop preserves what already works; found mostly by trial and error, and "a loop is tuned to its stack" — bespoke loops do not generalize for free ^[extracted]
4. A stopping rule — external to the generator (tests, constraints, score threshold, review) and cost-aware ^[extracted]

**Editability × verifiability axes:** tasks live on two axes; code sits upper-right (editable + verifiable), open-ended image generation bottom-left. Loop engineering is often *re-representing* the task (raster → SVG/Blender scene, or adding constraints) until it lands in the quadrant where loops converge. ^[extracted]

**Economics of stopping:** returns on test-time compute are logarithmic and can go negative past the plateau (reasoning models with larger budgets abandon answers that were already correct). In her Lighthouse stress-test of Anthropic's popular loop, the first $1.40 of spend took the score 26 → 89, and the remaining $2.84 — 67% of the bill — bought exactly zero points; the evaluator bounced back a correctly-diagnosed impossible goal 14 times. Stopping well is infrastructure, not prompting: metered spend, progress-per-dollar, and something with enough information to cut the loop off. ^[extracted]

**Inference-time vs training-time loops:** inference loops change the work (fixed weights, test-time compute); training loops update the model (RL trajectories). Same rule — only as good as the verifier/reward — and they feed each other: inference traces become training data, but the higher-leverage fix is often outside the weights (better tool, clearer state, stronger verifier). ^[extracted]

## Related

- [[concepts/loop-engineering|Loop Engineering]] — the parent concept page
