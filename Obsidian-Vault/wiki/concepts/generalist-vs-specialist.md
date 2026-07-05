---
title: "Generalist vs Specialist Hiring"
category: concepts
tags: [hiring, ai-team, generalist, specialist, ml-engineering, team-building, aief2025]
aliases: [generalist hiring, specialist hiring, hiring generalists]
relationships:
  - target: "[[concepts/ai-team-anatomy]]"
    type: related_to
  - target: "[[concepts/ai-hiring-trade-offs]]"
    type: extends
  - target: "[[concepts/company-type-spectrum]]"
    type: related_to
  - target: "[[concepts/player-coach-model|Player-Coach Model]]"
    type: related_to
  - target: "[[entities/grant-lee|Grant Lee]]"
    type: related_to
sources:
  - "[[sources/watchv=sbuxrluvrwk]]"
  - "AIEF2025 - Rethinking Team Building: how a 30-person Startup serves 50 Million Users — Grant Lee, Gamma - https://www.youtube.com/watch?v=q8zoXAbmJdI"
summary: "The case for hiring generalist ML engineers over specialists for early AI teams, supported by automation and platform investment. Extended with cross-discipline generalists who span design, coding, and UX research."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-05
---

# Generalist vs Specialist Hiring

A hiring philosophy that prioritizes generalist ML engineers — people with broad AI/ML capability across training, serving, and business domains — over deep specialists, particularly for early-stage AI teams. Articulated by [[entities/denys-linkov|Denys Linkov]] based on his experience building the first ML team at a conversational AI platform. ^[extracted]

## The Generalist Approach

Denys Linkov's experience building the first ML team at a conversational AI company demonstrated that generalists, when supported by automation and platform investment, can achieve outcomes typically associated with specialist teams:

- Served hundreds of thousands of concurrent models
- Multi-domain support
- Cost-efficient operations
- Real-time training and serving

The key was building a custom MLOps platform and automating across the board, which raised the baseline capability of every team member. ^[extracted]

## Cross-Discipline Generalists

The generalist model extends beyond engineering into other disciplines. Grant Lee ([[entities/grant-lee|Grant Lee]], [[entities/gamma|Gamma]]) describes Gamma's head of design — their first hire — as a paradigm example: a designer who is simultaneously visual, can code, and goes deep on UX research (talking to users, setting up tests, iterating on feedback). ^[extracted] This cross-discipline breadth empowers the generalist to "connect all the dots" between design and engineering, building prototypes that can actually ship to production. ^[extracted]

### Key Traits of Strong Generalists

Grant Lee identifies two core traits that make a strong generalist:

1. **Likes to learn** — In the AI era with rapid innovation, the ability to pick up new skills is invaluable. ^[extracted]
2. **Likes to teach** — Great learners are often great teachers. The ability to articulate and persuade others about new skills is a key interview criterion. ^[extracted]

## The Trade-Off Framework

Linkov proposes evaluating hiring along three axes, each with a "good enough" threshold rather than a "best in class" threshold:

| Axis | Specialist Bar | Generalist Bar |
|------|---------------|----------------|
| **Model Training** | Can train GPT-3 level models | Upper half — knows architectures, can fine-tune encoder models, uses Hugging Face |
| **Model Serving** | Kubernetes internals, infrastructure expert | Can use abstractions, understands trade-offs |
| **Business Acumen** | Dedicated business development role | Engineers who can get on customer calls |

The generalist approach sets the bar at "good enough" on each axis, then invests in platform infrastructure to raise the floor. ^[extracted]

## When Specialists Make Sense

Specialists are justified when:

- You are a model provider (OpenAI, Anthropic, Google) — the best tech IS the product
- You have hit a scale where specialty is required
- The domain demands the best technology (e.g., frontier model research)

For most companies, however, the generalist approach delivers more value per dollar. ^[inferred]

## Platform as Force Multiplier

The generalist approach requires investment in platform infrastructure:

- Custom MLOps platforms that abstract complexity
- Automation across the ML lifecycle
- Abstraction layers that let generalists operate at specialist-like output levels

This shifts the investment from expensive specialist salaries to platform development. ^[inferred]

## Related

- [[concepts/ai-team-anatomy|AI Team Anatomy]] — What skills an AI team needs
- [[concepts/ai-hiring-trade-offs|AI Hiring Trade-offs]] — The three-axis evaluation framework
- [[concepts/ampere-s-wager|Ampere's Wager]] — Domain knowledge vs pure AI research talent
- [[concepts/ml-team-building|Building the First ML Team]] — Platform investment strategy
- [[concepts/small-team-scaling|Small Team Scaling]] — Hiring exceptional individuals
- [[concepts/player-coach-model|Player-Coach Model]] — Complementary leadership approach
- [[entities/denys-linkov|Denys Linkov]] — Source of this framework
- [[entities/grant-lee|Grant Lee]] — Cross-discipline generalist example
