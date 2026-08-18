---
title: Agencies GTM
category: go-to-market
tags:
  - agencies
  - signal-outbound
  - warm-outbound
  - proposals
  - retention
  - agencies-of-one
sources:
  - https://x.com/i/article/2089714600405356544
summary: Chapter 1 of the GTM agent machine: four agency-specific workflows for selling time and outcomes to businesses — signal outbound, warm outbound, proposal from call, retention loop.
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.44
lifecycle: draft
lifecycle_changed: '2026-08-18'
tier: supporting
created: '2026-08-18'
updated: '2026-08-18'
relationships:
  - type: uses
    target: four-part-workflow-pattern
  - type: counterpart
    target: saas-gtm
  - type: counterpart
    target: infoproducts-gtm
---

# Agencies GTM

Chapter 1 of the [[gtm-agent-machine|GTM agent machine]] focuses on "agencies of one" — solopreneurs who sell time and outcomes to other businesses. The core job is maintaining a steady flow of researched, relevant conversations with the right companies, plus keeping those clients past the first quarter. This page documents the four agency-specific workflows, each implementing the [[four-part-workflow-pattern|four-part workflow pattern]].

## Key Ideas

### Signal Outbound

- **Definition**: Outreach triggered by changes at the prospect's business, not cold lists. Targets companies that just raised money, posted a job for a role you replace, hired a new head of marketing, or have left their website untouched for a year.
- **Process**: Agent watches a prospecting database (e.g., Apollo filtered to client profile), enriches rows through Clay (filling empty fields with provider data), and drops weak rows before drafting.
- **Output**: A research sheet with one row per prospect: what changed, what you can see at their business that your service fixes, and a confidence note on how solid the read is.
- **Messaging**: First messages for top rows only, opening with the workload spotted at their business in two short paragraphs — no pitch in the first line.
- **Delivery**: Every message waits in a channel for the human to read and send from their own inbox. Specific messages get replies; broad ones do not.
- **Recommended first workflow**: For agencies, start with signal outbound because it "moves revenue first."

### Warm Outbound

- **Audience**: People who like, comment on, or repost your posts — "the warmest list you own."
- **Trigger**: A post crosses a small engagement threshold.
- **Process**: Agent exports engagers, matches against client profile, keeps fits, drops mismatches.
- **Messaging**: Best matches get direct messages with something useful about the topic they engaged with. Others get emails with the same content.
- **Delivery**: Human sends every message manually from their own account. Platform bans on automated messaging plus the list being small enough that no automation is needed.

### Proposal from the Call

- **Trigger**: Discovery call ends, transcript becomes available from Granola, Fireflies, or the meeting tool's built-in notetaker.
- **Gate**: Agent checks transcript for buying signals: price agreed, scope asked for, start date discussed. If the call ended in a "maybe," it writes a follow-up note and produces no proposal.
- **Output**: Picks proposal template, fills in what the call answered, leaves blank what it didn't, posts draft link in channel with assumptions listed underneath.
- **After approval**: Proposal goes out, deal moves a stage in the CRM, follow-ups run off the document's own read receipts.

### Retention Loop

- **Problem**: Agencies lose clients "at the exact moment the early numbers flatten and nobody has shown them the pipeline."
- **Cadence**: Weekly during the ramp, monthly after.
- **Process**: Agent pulls client numbers into one sheet, writes a short summary showing the pipeline: what moved, what is queued, what was changed and why.
- **Campaign freshness**: If the operator runs outreach or ads for the client, the agent refreshes audience lists and copy monthly so campaigns don't go stale.
- **Referral ask**: After the first documented win, drafts a referral ask — specifically a request for an introduction to a specific kind of business.

## Open Questions

- What constitutes a "weak row" that gets dropped during signal outbound?
- What engagement threshold qualifies as "small" for warm outbound triggers?
- What is the exact proposal template structure?
- What metrics define "early numbers flattening" in the retention loop?
- How does the read-receipt tracking for proposal follow-ups work technically?

## Sources

- **How to build a GTM machine from 0 to $10k MRR** by @EXM7777 (Machina). [Source](https://x.com/i/article/2089714600405356544)
