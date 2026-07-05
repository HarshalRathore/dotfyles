---
title: AI Skunkworks
tags: [ai-strategy, skunkworks, internal-ai, team-building, pragmatic-ai]
aliases: [ai skunkworks, internal ai team, ai lab]
summary: "An internal AI team formed to experiment and build AI capabilities without the constraints of product timelines — often starting with no AI experience and learning by doing."
sources: ["[[sources/aief2025-building-the-platform-for-agent-coordination-—-tom-moor]]", "[[sources/watchv=ug9iadmi2dg]]"]
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04T00:00:00Z
updated: 2026-07-04T00:00:00Z
relationships:
  - target: [[concepts/pragmatic-ai|Pragmatic AI]]
    type: related_to
  - target: [[concepts/ai-integration-patterns|AI Integration Patterns]]
    type: related_to
---

# AI Skunkworks

An AI skunkworks is an internal team formed within a company to experiment with AI capabilities outside the normal product development process. ^[inferred]

## Linear's Skunkworks

Linear formed its AI skunkworks team in early 2023, around the GPT-3 era. Key characteristics:

- **No AI experience:** "Nobody on the team had any AI experience" — they learned by doing ^[extracted]
- **Early focus:** Started with summarization and similarity (embeddings), the two AI capabilities that were most mature at the time ^[extracted]
- **Pragmatic approach:** Built foundational infrastructure (search) before building user-facing features ^[extracted]

## Why Skunkworks?

The skunkworks model allows teams to:

1. **Experiment without product pressure:** No aggressive shipping deadlines means more room for exploration
2. **Build foundational capabilities:** Search infrastructure, embedding pipelines, and evaluation frameworks take time to develop
3. **Learn the domain:** Understanding how AI applies to your specific product before committing to large investments
4. **Avoid hype-driven decisions:** A dedicated team can resist the pressure to ship "AI features" just because it's trendy ^[inferred]

## Evolution Path

Linear's skunkworks evolved from experimental features (similar issues, natural language filters) to core product capabilities (product intelligence, customer feedback analysis, agent platform). This represents a common pattern: skunkworks experiments that prove value get absorbed into the main product. ^[extracted]

## Related

- [[concepts/pragmatic-ai|Pragmatic AI]]
- [[concepts/ai-integration-patterns|AI Integration Patterns]]
- [[entities/linear|Linear]]
- [[entities/tom-moor|Tom Moor]]
