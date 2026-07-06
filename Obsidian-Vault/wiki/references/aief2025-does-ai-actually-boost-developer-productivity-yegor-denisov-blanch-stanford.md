---
title: AIEF2025 — Does AI Actually Boost Developer Productivity? (100k Devs Study) — Yegor Denisov-Blanch, Stanford
category: references
tags:
- aief2025
- ai-productivity
- software-engineering
- research
- methodology
- developer-metrics
aliases:
- AIEF2025 AI Productivity Study
- Stanford AI Productivity Study
- 100k Devs Study
sources:
- AIEF2025 - Does AI Actually Boost Developer Productivity? (100k Devs Study) - Yegor Denisov-Blanch, Stanford - https://www.youtube.com/watch?v=tbDDYKRFjhk
summary: Stanford's largest study on AI's impact on developer productivity, analyzing 100k+ engineers across 600+ companies. Finds 15-20% net productivity boost from AI, but significant rework costs mask tr...
provenance:
  extracted: 0.8
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05
updated: 2026-07-05
relationships:
- target: '[[entities/yegor-denisov-blanch|Yegor Denisov-Blanch]]'
  type: authored_by
- target: '[[entities/stanford|Stanford University]]'
  type: affiliated_with
- target: '[[concepts/ghost-engineers|Ghost Engineers]]'
  type: related_to
- target: '[[concepts/ai-productivity-measurement|AI Productivity Measurement]]'
  type: related_to
- target: '[[concepts/rework-vs-refactoring|Rework vs Refactoring]]'
  type: related_to
---

# AIEF2025 — Does AI Actually Boost Developer Productivity? (100k Devs Study)

**Speaker:** [[entities/yegor-denisov-blanch|Yegor Denisov-Blanch]], Stanford University
**Video:** <https://www.youtube.com/watch?v=tbDDYKRFjhk>

## TL;DR

Stanford's largest study on AI's impact on developer productivity — 100,000+ software engineers across 600+ companies, dozens of millions of commits, billions of lines of code — finds a 15–20% net productivity boost from AI coding tools. However, a significant portion of apparent gains is consumed by [[concepts/rework-vs-refactoring|rwork]]: AI-generated code introduces bugs that require fixing, creating a misleading impression of increased output. The study critiques three common research approaches: commit/PR-based metrics, greenfield experiments, and self-reported surveys.

## Problem / Motivation

In January 2025, Mark Zuckerberg announced plans to replace all mid-level engineers at [[entities/meta|Meta]] with AI by year-end. This created pressure on CTOs worldwide to demonstrate AI-driven productivity gains, yet most organizations reported being "not very far" along. The speaker argues that AI will not replace developers entirely, but it does increase productivity — with important caveats. The core problem: existing studies on AI's productivity impact suffer from fundamental methodological flaws that produce misleading results.

## Methodology / Architecture

### Dataset Scale
- 100,000+ software engineers
- 600+ companies (enterprise, mid-sized, startups)
- Dozens of millions of commits
- Billions of lines of code
- **Most data is from private repositories** — critical for measuring team/organizational productivity, as public repos are not self-contained work signals

### Time-Series + Cross-Sectional Design
- **Time-series**: Participants' full Git history available, enabling trend analysis across events (COVID, AI adoption, etc.)
- **Cross-sectional**: Multiple companies and teams at a single point in time

### Productivity Measurement Model
The team built an automated model that:
1. Plugs into Git and analyzes source code changes per commit
2. Quantifies changes across multiple dimensions (quality, maintainability, output)
3. Aggregates by author/SHA/timestamp to compute team productivity as **functionality delivered over time**, not lines of code or commit count

The model was trained on expert panel evaluations — the team found that engineering experts agree with each other when evaluating code objectively, and that panel judgments predict real-world outcomes. The automated model correlates well with expert panels while being fast, scalable, and affordable.

### Output Categories
Productivity is decomposed into four categories per time period:
- **Added functionality** (green) — new features and capabilities
- **Removed code** (gray) — dead code elimination
- **Refactoring** (blue) — altering existing code without changing behavior
- **Rework** (orange) — altering **recent** code, considered wasteful

## Key Results

### Net Productivity Gain
A company of ~120 developers piloting AI showed a **15–20% net productivity boost** after implementation. However, the composition of gains is revealing:

### The Rework Problem
AI implementation immediately increased **rework** — code alterations to recently-written AI-generated code. The speaker notes: "you feel like you're delivering more code because there's just more volume of code being written, more commits, more stuff being pushed. But not all of that is actually useful."

The speaker summarizes: with AI coding, you increase productivity by roughly 30–40% in raw output, but then must go back and fix bugs that the AI code introduced. ^[extracted]

### Ghost Engineers Finding
A related study from the same Stanford research group found that roughly **10% of software engineers** (in a dataset of ~50,000) were "ghost engineers" — people who collect a paycheck but do essentially no work. This finding was amplified when [[entities/elon-musk|Elon Musk]] retweeted it.

## Limitations of Existing Research (Speaker's Critique)

### 1. Commit/PR/Task-Based Metrics
Studies measuring productivity via commit count, PR count, or time-between-commits suffer from a fundamental flaw: **task size varies**. More commits ≠ more productivity. AI often introduces new tasks (bug fixes for AI-generated code), so teams may appear more active while actually "spinning their wheels."

### 2. Greenfield Experiments
Lab studies that split developers into AI/non-AI groups on greenfield (from-scratch) tasks show AI "decimating" non-AI teams. This is misleading because AI excels at greenfield boilerplate, but **most software engineering is not greenfield** — it involves existing codebases with dependencies and context.

### 3. Self-Reported Surveys
The team ran an experiment with 43 developers asking them to self-rate productivity in 5 percentile buckets vs. their measured productivity. Results:
- Self-assessment correlated almost as poorly as flipping a coin with actual productivity
- Developers misjudged their productivity by **~30 percentile points**
- Only 1 in 3 estimated their productivity within their quartile
- Surveys are valuable for morale but **should not measure developer productivity**

## Key Equations / Models

The speaker describes a productivity function:

$$\text{Productivity} = f(\text{functionality delivered across time})$$

where functionality is quantified by analyzing source code changes per commit across dimensions of quality, maintainability, and output — not by lines of code or commit count. ^[inferred]

## Results Summary

| Metric | Finding |
|--------|---------|
| Dataset size | 100k+ engineers, 600+ companies |
| Net productivity boost | 15–20% with AI |
| Raw output increase | 30–40% with AI |
| Rework increase | Significant, immediately visible post-AI |
| Ghost engineer rate | ~10% of software engineers |
| Survey accuracy | ~30 percentile point misjudgment |
| Survey-quartile accuracy | 1 in 3 developers |

## Limitations

- Results presented from a single talk transcript; no peer-reviewed paper or full methodology details available
- The automated productivity model's correlation with expert panels is claimed but not quantified
- The 15–20% net boost is from one company of 120 developers; generalizability unknown
- The speaker's critique of existing research is well-reasoned but based on the team's own findings, not independent validation

## Related

- [[concepts/ghost-engineers|Ghost Engineers]] — 10% of devs do no work
- [[concepts/ai-productivity-measurement|AI Productivity Measurement]] — methodology critique
- [[concepts/rework-vs-refactoring|Rework vs Refactoring]] — wasteful vs. beneficial code changes
- [[concepts/commit-based-metrics-limitations|Commit-Based Metrics Limitations]] — why commits don't measure productivity
- [[concepts/self-reported-productivity|Self-Reported Productivity]] — surveys are poor predictors
- [[concepts/greenfield-vs-brownfield|Greenfield vs Brownfield]] — AI's context advantage
- [[entities/yegor-denisov-blanch|Yegor Denisov-Blanch]] — Stanford researcher
- [[concepts/ai-developer-productivity|AI Developer Productivity]] — broader topic
