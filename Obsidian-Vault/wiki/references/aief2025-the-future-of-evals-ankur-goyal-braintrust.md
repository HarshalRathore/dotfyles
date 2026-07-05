---
title: "The Future of Evals - Ankur Goyal, Braintrust"
category: references
tags:
  - reference
  - talk
  - aief2025
  - braintrust
  - evaluation
  - loop
  - cloud-4
  - automated-evals
aliases: [AIEF2025 Ankur Goyal evals, Future of Evals Braintrust, Braintrust Loop talk]
sources:
  - "[[sources/watchv=mc55hdwlq4o]]"
  - "AIEF2025 - Five hard earned lessons about Evals — Ankur Goyal, Braintrust - https://www.youtube.com/watch?v=a4BV0gGmXgA"
summary: "AIEF2025 talk by Ankur Goyal on the evolution of AI evaluation from manual dashboard review to automated optimization via Loop, Braintrust's agent built on frontier model capabilities."
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AIEF2025 - The Future of Evals — Ankur Goyal, Braintrust

> [!tldr] Ankur Goyal of [[entities/braintrust|Braintrust]] presents at AI Engineer World's Fair 2025 on how evals — currently a manual dashboard-watching process — are being revolutionized by frontier models through **Loop**, Braintrust's automated optimization agent, powered by the breakthrough **Cloud 4** model.

## Speaker

[[entities/ankur-goyal|Ankur Goyal]] — Braintrust. He notes he's the brother of a previous AIEF2025 speaker and aims to "live up to his energy and charisma." ^[extracted]

## Context: Evals at Scale

Ankur opens with data on Braintrust's usage patterns, illustrating how deeply evals have penetrated AI product development: ^[extracted]

- The average organization signing up for Braintrust runs **~13 evals per day**
- Some customers run **3,000+ evals per day**
- Advanced companies spend **2+ hours per day** working through their evals

Despite companies building "some of the coolest, most automated AI-based products and agents in the world," evals remain a **manual process**. ^[extracted]

## The Dashboard Problem

The current eval workflow is: run an eval → look at a dashboard → decide what changes to make to code or prompts. ^[extracted] Braintrust has "a pretty cool dashboard," but the fundamental interaction model is static — you look at it and walk away. ^[extracted] This is the problem Ankur argues is about to change. ^[inferred]

See also: [[concepts/dashboard-dumpster-diving|Dashboard Dumpster Diving]] — the pattern of manual eval result interpretation.

## Loop: Automated Eval Optimization

The centerpiece of the talk is **Loop**, an agent built into Braintrust that automatically optimizes: ^[extracted]

1. **Prompts** — iteratively improving system prompts
2. **Datasets** — building and refining evaluation datasets
3. **Scorers** — creating and tuning evaluation scoring functions

Loop is described as "actually only possible because of evals" — Braintrust has run quarterly evaluations on frontier models to measure how well they improve prompts, datasets, and scorers. ^[extracted] Until very recently, these models "weren't very good" at these tasks. ^[extracted]

### Cloud 4 Breakthrough

Ankur identifies **Cloud 4** as "a real breakthrough moment" in model capability for eval optimization. ^[extracted] It performs **almost six times better** than the previous leading model at improving prompts, datasets, and scorers. ^[extracted] This capability leap is what makes Loop viable. ^[inferred]

### Loop Features

- **Model selection**: Defaults to Cloud 4 but allows any model — OpenAI, Gemini, custom LLMs ^[extracted]
- **Side-by-side UI**: Every suggestion (data edit, scoring idea, prompt edit) is shown alongside the original in the UI, preserving the human ability to inspect data and prompts during optimization ^[extracted]
- **Auto-optimize toggle**: An "adventurous" mode that runs optimization autonomously without human-in-the-loop review ^[extracted]
- **Runs inside Braintrust**: Fully integrated into the Braintrust platform ^[extracted]
- **Feature flag**: Available to existing Braintrust users via a "Loop" feature flag ^[extracted]

## Key Thesis: Evals Will Be Revolutionized

Ankur's closing argument: evals have been a critical part of building great AI products, but the manual evaluation process is about to be "completely revolutionized by the latest and greatest that's coming out from the frontier models themselves." ^[extracted] The eval optimization loop — analyze results, generate improvements, run experiments, iterate — will be automated by increasingly capable models. ^[inferred]

## Call to Action

Ankur invites the audience to try Loop, provide feedback, and reach out about joining Braintrust (UI, AI, and infrastructure roles). ^[extracted]

## Related Pages

- [[entities/ankur-goyal|Ankur Goyal]] — Speaker
- [[entities/braintrust|Braintrust]] — Platform
- [[concepts/manual-vs-automated-evals|Manual vs Automated Agent Evaluation]] — eval progression
- [[concepts/dashboard-dumpster-diving|Dashboard Dumpster Diving]] — the problem Loop solves
- [[concepts/synthetic-eval-generation|Synthetic Eval Generation]] — frontier model eval capabilities
- [[references/aief2025-evals-workshop-braintrust|Braintrust Evals Workshop]] — companion Braintrust talk at AIEF2025
- [[concepts/eval-ingredients-task-dataset-score|Eval Ingredients: Task, Dataset, Score]] — the three components Loop optimizes
