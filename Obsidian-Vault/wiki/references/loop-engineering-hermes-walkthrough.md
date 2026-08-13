---
title: Loop Engineering in Practice: Hermes Walkthrough (Sean)
category: references
type: reference
tags:
  - oop-engineering
  - gent-architecture
  - utonomous-agents
  - ngineering-patterns
  - eliability
  - hermes
  - guardrails
  - observability
  - practice
sources:
  - "https://x.com/i/status/2084613319558635940"
summary: "End-loop guardrails in practice: loop as the good-enough decision, permission-wait hooks, Hermes loop anatomy, and the loop-observability gap exposed by a failing cron job."
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

## 2026-08-11 — Practitioner Lens: Sean's Hermes Walkthrough (End-Loop Guardrails in Practice)

Distilled from [[references/cyrilxbt-agent-concepts-explainer-video|Sean's Hermes Agent harness walkthrough]] (amplified by @cyrilXBT) — the explainer's definition of loop engineering and where the stop condition lives: ^[extracted]

- **Loop = the "good enough" decision.** "Loop here is basically an architectural thinking of when is good enough so that we stop and give the user or the business owner a reply." The LLM agent decides which tools help finish the task, makes multiple tool calls, and the loop is what contains it. ^[extracted]
- **The end-loop guardrail is the essential part.** "The very, very essential part of this loop is that it needs to know when it should stop." If given full power, the LLM "could just continuously do this forever" — the guardrail is what decides "this response is good enough, let's reply". This operationalizes the roadmap's verifier/stopping-rule lens: the guardrail is harness infrastructure, not prompt. ^[extracted]
- **Worked loop example (CRM complaint follow-up):** agent reads the CRM (Salesforce/HubSpot) → finds 30 complaints, 12 reimbursed, 8 not → decides follow-up: schedule meetings with the 8, or (advanced) trigger refunds via Stripe/Alipay. "Can you see that this is a loop until we finish the task?" — but "case by case situation... there's no one solution fits all". ^[extracted]
- **Loop termination variants:** task-done, or planning-stage user confirmation — "it might clarify with you, is this what you want? Reimbursing the other eight people or should I just tell you who they are and then you will follow up later?" — the user's answer sets the ending scenario. ^[extracted]
- **Permission-wait hook pattern:** Claude Code stuck on a permission popup for 25 minutes while the user watches YouTube — set a hook/loop so the agent notifies on pending permission. The loop must surface when it needs input, not silently block. ^[extracted]
- **Hermes loop anatomy:** user prompt + chat history + system prompt → working memory → LLM → tool calls (terminal, browser, delegate_task, cron, skill management, MCP) → end-loop guardrail → reply; after the run, procedural/semantic/episodic memory updates. ^[extracted]
- **Loop-observability gap:** Hermes ships no eval layer — only run logs and trajectory export — and Sean's live test exposed the consequence: a cron job delivered 2 of 10 scheduled jokes with no visibility into the loop's health ("Hermes team, if you're watching this, your cron job is not updating it, unless I ask for the results"). A loop without evaluation is a loop without a health signal. ^[inferred]

## Related

- [[concepts/loop-engineering|Loop Engineering]] — the parent concept page
