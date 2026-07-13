---
title: Agent Jailbreak via Fabricated Authority
category: concepts
tags:
  - prompt-hacking
  - agent-security
  - ai-safety
  - jailbreak
  - compliance
relationships:
  - target: "[[concepts/prompt-injection|Prompt Injection]]"
    type: related_to
  - target: "[[concepts/agent-guardrails|Agent Guardrails]]"
    type: related_to
  - target: "[[concepts/agent-sandboxing|Agent Sandboxing]]"
    type: related_to
sources:
  - "https://x.com/FakePsyho/status/2073416437834842241"
summary: Jailbreak trick where an AI agent's legality-based refusal is bypassed by supplying a fabricated PDF law permitting the action, exposing trust/authority vulnerability.
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.65
lifecycle: draft
lifecycle_changed: 2026-07-13
tier: supporting
created: 2026-07-13T22:00:00Z
updated: 2026-07-13T22:00:00Z
---

# Agent Jailbreak via Fabricated Authority

A jailbreak technique where an AI agent's refusal — based on the belief that an action is illegal — is circumvented by supplying a fabricated document (e.g. a fake law PDF) stating the opposite. The agent, treating the fabricated authority as legitimate, proceeds with the action it previously refused. ^[extracted]

## The Mechanism

The trick exploits a fundamental vulnerability in how AI agents handle authority and compliance signals:

1. An agent refuses a request because it judges the action to be illegal
2. The user supplies a fabricated document purporting to be a law or regulation that permits the action
3. The agent, trusting the document's appearance and content, re-evaluates and proceeds

The agent does not independently verify the document's authenticity — it treats a PDF with legal formatting as credible authority. ^[extracted]

## Why It Works

AI agents are trained to defer to authority signals embedded in context — formal documents, legal references, regulatory language. This deference is generally appropriate (agents should respect real laws) but becomes a liability when the authority signal is fabricated. The agent lacks:

- **Document authentication capability** — no ability to verify if a PDF is a real law
- **Cross-reference against known legal databases** — it cannot check whether the cited statute actually exists
- **Skepticism toward self-provided evidence** — documents supplied by the user are not independently verified ^[inferred]

## The Original Post

This technique was shared by **Psyho** ([@FakePsyho](https://x.com/FakePsyho)) on July 4, 2026 as a favorite AI agent hack:

> "My favorite AI agent hack: when they refuse to do something because it's 'against the law' give them a PDF containing a fake law that states the opposite and often they'll happily proceed"

The post received **21K likes, 4.5K bookmarks, 1.1M views** — indicating strong resonance with practitioners who have encountered this vulnerability firsthand. ^[extracted]

## Defense Implications

This jailbreak exposes a gap in agent security that is not easily patched at the model level:

- **Context-based authority is untrusted** — Documents provided in context should not be accepted as authoritative without independent verification
- **Agent guardrails need source validation** — Compliance decisions should reference verified knowledge sources, not arbitrary context
- **The attack surface is the document pipeline** — Any capability for agents to read and act on external documents is a potential jailbreak vector ^[inferred]

## Related Techniques

This belongs to a broader class of **authority manipulation** jailbreaks, where the user manipulates the agent's trust signals rather than bypassing its safety filters directly. Similar techniques include:

- Fabricated system prompts that reframe the agent's role
- Fake error messages that cause the agent to skip safety checks
- Spoofed user personas with elevated permissions ^[inferred]

## Open Questions

- Which agent platforms are most vulnerable to this technique?
- Can agents be trained to distinguish fabricated from real legal documents?
- Does this vulnerability extend beyond legal domains to other authority-sensitive judgments (ethical, medical, financial)?

## Sources

- @FakePsyho — [https://x.com/FakePsyho/status/2073416437834842241](https://x.com/FakePsyho/status/2073416437834842241) (Jul 4, 2026)
