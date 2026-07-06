---
title: Chain-of-Thought Driving
category: concepts
tags:
- chain-of-thought
- reasoning
- autonomous-driving
- explainability
- foundation-models
aliases:
- reasoning in autonomous driving
- explainable autonomous driving
sources:
- 'AIEF2025 - Waymo''s EMMA: Teaching Cars to Think - Jyh Jing Hwang, Waymo - https://www.youtube.com/watch?v=iS9YFW28XyM'
summary: A technique for adding chain-of-thought reasoning to autonomous driving systems — the model first identifies critical objects, predicts their behavior, and states driving meta-decisions before outp...
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.0
base_confidence: 0.8
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/foundation-models-autonomous-driving]]'
  type: enables
- target: '[[concepts/end-to-end-driving]]'
  type: enhances
- target: '[[concepts/scaling-laws]]'
  type: related_to
---

# Chain-of-Thought Driving

Chain-of-thought driving is a technique for adding reasoning transparency to autonomous driving systems. Instead of directly outputting waypoints, the model first explains its reasoning before making driving decisions.

## The Problem: No Explainability

Pure end-to-end models (camera + routing text → waypoints) have a critical limitation: **only the planner output is visible; internal reasoning is opaque.** This makes it impossible to understand why a driving decision was made.

## The Solution: Channel-Solve Process

Waymo's EMMA adds a "channel-solve" reasoning step before the planning output:

### Step 1: Identify Critical Objects

The model identifies the most important objects on the road:

> "In this scenario, the critical objects are the cyclist ahead and the vehicle to the right."

### Step 2: Predict Behavior

The model predicts what those objects will do:

> "The cyclist is maintaining a steady pace. The vehicle to the right appears to be slowing."

### Step 3: State Meta-Decision

The model states the overall driving strategy:

> "We should maintain normal speed."

or

> "We should yield to the cyclist."

or

> "We should slow down for the intersection."

### Step 4: Output Waypoints

Finally, the model outputs the future waypoints consistent with its reasoning.

## Benefits

1. **Explainability** — the reasoning chain is visible and auditable
2. **Improved quality** — reasoning before action leads to better decisions (measured improvement on Waymo's Remote Open Motion dataset)
3. **Debuggability** — when the model makes a wrong decision, the reasoning chain reveals where it went wrong
4. **Safety** — the reasoning process catches errors before they become actions

## Performance

With chain-of-thought reasoning, EMMA outperformed strong baselines including:

- Waveformers
- Motion LLMs
- Specialized models built on oracle perception systems with HD map and traffic light inputs

## Related

- [[concepts/foundation-models-autonomous-driving]] — Foundation models enable chain-of-thought
- [[concepts/end-to-end-driving]] — EMMA's architecture
- [[entities/waymo]] — Waymo's implementation
- [[concepts/foundation-models]] — Foundation models and reasoning
