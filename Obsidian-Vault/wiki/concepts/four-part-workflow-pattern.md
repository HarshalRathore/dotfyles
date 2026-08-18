---
title: Four-Part Workflow Pattern
category: go-to-market
tags:
  - workflow-pattern
  - triggers
  - approval-gate
  - human-in-the-loop
  - agents
  - gtmmachine
sources:
  - https://x.com/i/article/2089714600405356544
summary: Every GTM workflow follows four parts: trigger, source read, output, human approval. Nothing sends or spends without human consent.
provenance:
  extracted: 0.95
  inferred: 0.05
  ambiguous: 0.0
base_confidence: 0.44
lifecycle: draft
lifecycle_changed: '2026-08-18'
tier: supporting
created: '2026-08-18'
updated: '2026-08-18'
relationships:
  - type: used_by
    target: agencies-gtm
  - type: used_by
    target: saas-gtm
  - type: related_to
    target: agent-tools
---

# Four-Part Workflow Pattern

Every workflow in the [[gtm-agent-machine|GTM agent machine]] follows the same four-part pattern. This universal structure underpins all three vertical-specific chapters (agencies, SaaS, infoproducts and communities) described in [[how-to-build-gtm-machine]] and provides the foundational rhythm for building a one-person GTM operation.

## Key Ideas

- **Part 1 — Trigger**: Something starts the workflow. Concrete examples from the guide include a post crossing an engagement threshold, a discovery call ending, or a payment failing.
- **Part 2 — Source reading**: The agent reads a data source before producing anything. Sources include CRM records, a prospecting database (like Apollo), or a call transcript from a notetaker (Granola, Fireflies, or the built-in meeting tool).
- **Part 3 — Output production**: The agent produces something for the human to review — a research sheet, a prospect list, a draft message, or a proposal draft with assumptions listed underneath.
- **Part 4 — Human approval gate**: Nothing sends, publishes, or spends money until the human says yes. This is a hard rule. Drafts wait in a channel for human read and approval.^[inferred]
- **Sequential build philosophy**: Build one workflow at a time, run it until it produces output autonomously, then add the next. This is "the only way one person runs a dozen of these without drowning."
- **The 7am test**: A workflow has "passed" when it produced something that morning without a message from the operator. This is the criteria for deciding you can add the next workflow.
- **Stop rule**: Stop at the last workflow that keeps the calendar full. Running two well is better than running all four poorly.

## Open Questions

- What happens if a trigger fires but the source is unavailable? Is there a retry or failure mode?
- Does the approval gate support timeout behavior (e.g., auto-send if not approved within a set period)?
- Can multiple triggers fire the same workflow concurrently?
- How are outputs versioned when an agent revises a draft after human feedback?

## Sources

- **How to build a GTM machine from 0 to $10k MRR** by @EXM7777 (Machina). [Source](https://x.com/i/article/2089714600405356544)
