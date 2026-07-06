---
title: "AI Team Bottleneck Identification"
category: concepts
tags: [ai-team, bottleneck, hiring, prioritization, strategy]
aliases: [what is your bottleneck, ai bottleneck]
relationships:
  - target: "[[concepts/ai-hiring-trade-offs]]"
    type: related_to
  - target: "[[concepts/ai-team-anatomy]]"
    type: related_to
  - target: "[[concepts/execution-as-moat]]"
    type: related_to
sources:
  - "https://www.youtube.com/watch?v=sbuxrluvrwk"
summary: "Before hiring for AI, identify what is actually stopping your organization from achieving success — shipping features, acquiring users, retention, monetization, scalability, or reliability."
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# AI Team Bottleneck Identification

The practice of identifying what is actually stopping an organization from achieving success before making AI hiring decisions. Articulated by [[entities/denys-linkov|Denys Linkov]] at AIEF2025 as the foundational step in building an AI team. ^[extracted]

## The Core Question

Before you hire anyone for AI work, ask: **what is your bottleneck?** Linkov proposes a set of diagnostic questions:

1. **Is it shipping features?** — Development velocity is the constraint
2. **Is it acquiring users?** — Growth/marketing is the constraint
3. **Is it retaining users?** — Product engagement is the constraint
4. **Are you monetizing correctly?** — Revenue/business model is the constraint
5. **Are there scalability issues?** — Infrastructure/performance is the constraint
6. **Are there reliability and observability issues?** — Quality/stability is the constraint

The answer determines what kind of AI team you need and what skills to prioritize. ^[extracted]

## Why This Matters

Most organizations skip this step and jump straight to "we need an AI engineer" or "we need an AI researcher" without diagnosing the actual constraint. This leads to:

- Hiring the wrong skills for the actual problem
- Wasting budget on AI talent when the bottleneck is something else entirely
- Building AI solutions for problems that aren't the real constraint

The bottleneck determines whether you need:
- AI engineers who can integrate AI into existing products (feature shipping bottleneck)
- AI-powered growth tools (user acquisition bottleneck)
- AI-driven personalization and engagement (retention bottleneck)
- AI pricing and packaging tools (monetization bottleneck)
- AI infrastructure and MLOps (scalability bottleneck)
- AI testing and observability (reliability bottleneck) ^[inferred]

## The Key Takeaway

**Only you know the answer.** There is no universal AI team structure. The right structure depends entirely on what your organization is actually bottlenecked on. ^[extracted]

## Related

- [[concepts/ai-hiring-trade-offs|AI Hiring Trade-offs]] — Evaluating skills once you know the bottleneck
- [[concepts/ai-team-anatomy|AI Team Anatomy]] — What responsibilities the team covers
- [[concepts/generalist-vs-specialist|Generalist vs. Specialist Hiring]] — Hiring approach influenced by bottleneck
- [[concepts/execution-as-moat|Execution as Moat]] — Why identifying bottlenecks drives competitive advantage
- [[entities/denys-linkov|Denys Linkov]] — Source of this framework
