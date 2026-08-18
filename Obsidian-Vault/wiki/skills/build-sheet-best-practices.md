---
title: Build Sheet Best Practices
category: go-to-market
tags:
  - build-sheet
  - best-practices
  - prioritization
  - workflow-management
  - one-person-business
sources:
  - https://x.com/i/article/2089714600405356544
summary: Compressed best practices for building and running a GTM agent machine — prioritization rules, workflow management, and the philosophy of running fewer workflows well.
provenance:
  extracted: 0.95
  inferred: 0.04
  ambiguous: 0.01
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: '2026-08-18'
tier: supporting
created: '2026-08-18'
updated: '2026-08-18'
relationships:
  - type: part_of
    target: concepts/loop-engineering-product-vs-research-loops
  - type: implements
    target: concepts/agent-vs-workflow
  - type: uses
    target: concepts/agent-architecture
  - type: related_to
    target: concepts/agent-best-practices
---

# Build Sheet Best Practices

The "Build Sheet" is the compressed summary of best practices at the end of the GTM agent machine guide. It contains prioritization rules, workflow management principles, and the philosophy for running an automated GTM system as a one-person operation. These rules are a distilled expression of [[concepts/agent-vs-workflow|agent vs workflow]] constraints and connect directly to the [[concepts/loop-engineering-product-vs-research-loops|loop engineering]] design philosophy.

## Key Ideas

### Setup Principles

- **One workspace, one channel per workflow, the context pinned at the top** — minimal infrastructure, maximum clarity.^[extracted]
- **Viktor as starting point**: Set up Viktor first and give it the first workflow of your chosen chapter. Free credits cover the whole build, no card required.^[extracted]

### Workflow Structure

- **Every workflow is a trigger, a source, an output, and your approval** — the four-part pattern restated in compressed form.^[extracted]
- **Anything that sends, publishes, or moves money waits for your yes** — the hard human-in-the-loop rule.^[extracted]

### Strategic Priorities

- **The research is what you sell... the send is a formality you do yourself** — the human does the sending personally; the agent's value is in research, not delivery.^[extracted]
- **Launches and directories are one beat inside content, never the plan** — treat launches and directory submissions as tactical items within a broader content strategy, not as standalone strategies.^[extracted]
- **The money loop before the acquisition workflows when there are paying customers** — if you already have revenue, stabilize and grow it before spending effort on new acquisition.^[extracted]
- **Borrowed rooms before bought reach** — earn audience through community participation and partnerships before spending on paid advertising.^[extracted]
- **One workflow at a time... next one when the last passes the 7am test** — sequential build, no parallel overreach.^[extracted] This is the operationalization of the [[concepts/agent-best-practices|agent best practices]] rule about incremental workflow deployment.

### Prioritization by Vertical

From the "What to Build First" section:^[extracted]

- **Agencies**: Start with signal outbound, because it is the workflow that moves revenue first.
- **SaaS**: Start with the money loop if there are paying customers, and with demo-first content if there are not.
- **Creators**: Start with owned email because everything else in that chapter fills a list that does not exist yet.
- **Search layer**: Comes last for all three because it builds slowly and needs pages worth citing.

### Philosophy

- **Sales teams were the only way to run all of this before, and a one person business could not afford one, and that changed** — the core claim that AI agents have democratized capabilities that previously required entire sales teams.^[extracted]
- **Stop at the last workflow that keeps the calendar full** — do not be surprised if that means running two of them well for a long time before the third earns its channel.^[extracted]

## Open Questions

- What is the "one workspace" — is it a specific tool, or a conceptual container?
- What is the exact "7am test" — is it a real time check or a metaphor for "produced overnight without a message from you"?
- How many workflows can realistically be run by one person before the system breaks down?
- What happens when the 7am test fails — is there a diagnostic protocol?
- Are there any quantified outcomes from operators who have used this system?

## Sources

- **How to build a GTM machine from 0 to $10k MRR** by @EXM7777 (Machina). [Source](https://x.com/i/article/2089714600405356544)
