---
title: Stripe
category: entities
tags:
- company
- payments
- fintech
- saas
aliases:
- Stripe Inc.
sources:
- 'AIEF2025 - #define AI Engineer - Greg Brockman, OpenAI (ft. Jensen Huang) - https://www.youtube.com/watch?v=avWhreBUYF0'
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
provenance:
  extracted: 0.85
  inferred: 0.1
  ambiguous: 0.05
base_confidence: 0.8
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: core
created: 2026-07-04
updated: 2026-07-05
relationships:
- target: '[[entities/greg-brockman|Greg Brockman]]'
  type: employs
- target: '[[entities/patrick-collison|Patrick Collison]]'
  type: co-founded-by
- target: '[[entities/john-collison|John Collison]]'
  type: co-founded-by
- target: '[[entities/wells-fargo|Wells Fargo]]'
  type: integrates-with
- target: '[[concepts/virtual-cards|Virtual Cards]]'
  type: implements
summary: Stripe
---

# Stripe

Stripe is a payments infrastructure company founded by [[entities/patrick-collison|Patrick Collison]] and [[entities/john-collison|John Collison]]. In its earliest days it had only about 3 people and grew to become one of the most valuable private companies in the world. ^[extracted]

## Early Engineering Culture

During the company's formative period, Stripe's engineering team operated with extreme customer proximity. The team added all customers on [[entities/gchat|Gchat]] and maintained constant contact — even if not literally sitting over their shoulder, they were doing "the next best thing." ^[extracted] This customer-obsessed approach was so notable that the "Collison installation" (Patrick and John Collison physically installing Stripe at a customer's office) became an [[concepts/urban-legend|urban legend]] within the company. ^[extracted]

## Technical Speed and Problem-Solving

One of Stripe's defining early episodes involved integrating with [[entities/wells-fargo|Wells Fargo]]'s payment backend. The bank claimed the technical integration would take nine months. Greg Brockman, then the first CTO, assembled a team that completed it in 24 hours by treating it like a college problem set — Brockman implementing everything, John testing from the top of the test script, and Dara working from the bottom up. ^[extracted] The integration initially failed during a certification call, but the team rescheduled two hours later and passed on the second attempt. ^[extracted] This represented approximately six weeks of normal development compressed into a single day. ^[extracted]

## Related

- [[entities/greg-brockman|Greg Brockman]] — First CTO
- [[entities/patrick-collison|Patrick Collison]] — Co-founder
- [[entities/john-collison|John Collison]] — Co-founder
- [[entities/wells-fargo|Wells Fargo]] — Early banking integration partner
- [[concepts/first-principles-thinking|First Principles Thinking]] — Stripe's approach to stripping away inherited constraints

## Developer Platform

[[entities/kenneth-auchenberg|Kenneth Auchenberg]] ran Stripe's developer platform, building a significant portion of everything Stripe did for developers. ^[extracted]

### Feedback Loop Discipline

At Stripe, Kenneth's team embedded rapid feedback loops into their development process: ^[extracted]

- Before locking in any major design decisions for new projects, they ensured a feedback loop was in place
- The goal: run the full loop (ship → feedback → iterate → ship improvement) in less than a day ^[extracted]
- "If you cannot run your loop in a day, your process is broken" ^[extracted]
- This meant having real users who could see something, a way to get feedback, and the ability to iterate and ship an improvement ^[extracted]

### High-Bandwidth Feedback Methods

Kenneth describes Stripe's approach to user feedback: ^[extracted]

- Shadow customers integrating APIs in their offices
- Getting customers into Slack and Discord channels
- Texting directly with users — the best customer relationships Kenneth has had are with people he's texting with
- Rigorously monitoring API responses to see where people get stuck
- Working with a very small set of users and making them extremely happy

### Launch Post Practice

At Stripe, the team wrote the PRD or launch blog post before building anything, then pushed it to early users for feedback before prototyping in Figma or Bolt. ^[extracted] When building APIs, they would draft a rough outline of the API documentation and push it to users for feedback — ensuring the product feedback loop was active from day one. ^[extracted]

## Agent Checkout: Virtual Cards

Stripe's SDK model provides the current mainstream solution for agent-mediated checkout: when a user wants to buy something through an AI agent, the software provider (like ChatGPT) spins up a virtual card and buys the item on the user's behalf. This abstracts away the merchant-user relationship, with the software provider becoming the intermediary in the transaction. ^[extracted]

This approach is contrasted with [[entities/visa|Visa]]'s delegated authentication model, where the agent uses the user's actual credit card directly through the checkout flow — described as "the more elegant solution." ^[inferred]

## Sources

- AIEF2025 - #define AI Engineer - Greg Brockman, OpenAI (ft. Jensen Huang) - https://www.youtube.com/watch?v=avWhreBUYF0
- AIEF2025 - Shipping something to someone always wins — Kenneth Auchenberg (ex. Stripe, VSCode) - https://www.youtube.com/watch?v=mHzJhXppwUA
- AIEF2025 - Machines of Buying and Selling Grace - Adam Behrens, New Generation - https://www.youtube.com/watch?v=zlZz0mDF2eg
