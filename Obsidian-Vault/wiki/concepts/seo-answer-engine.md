---
title: SEO Answer Engine
category: go-to-market
tags:
  - seo
  - answer-engines
  - chatgpt
  - entity-consistency
  - answer-blocks
  - third-party-hosts
sources:
  - https://x.com/i/article/2089714600405356544
summary: A shared SEO and answer engine layer used by all three GTM verticals — entity consistency, answer blocks, earned mentions, and third-party hosting — to get cited by both Google and AI answer engines.
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.47
lifecycle: draft
lifecycle_changed: '2026-08-18'
tier: supporting
created: '2026-08-18'
updated: '2026-08-18'
relationships:
  - type: applies_to
    target: concepts/agent-architecture
  - type: implements
    target: concepts/agent-vs-workflow
  - type: related_to
    target: concepts/loop-engineering-product-vs-research-loops
  - type: related_to
    target: concepts/agent-driven-development
---

# SEO Answer Engine

The SEO and answer engine layer is a shared component used by all three GTM verticals (agencies, SaaS, infoproducts). It addresses the dual reality that "search is now two things": traditional Google ranking and answer engines (like ChatGPT) that read the web and cite what they trust. The basic requirements for both are the same. This page is a concrete application of the [[concepts/loop-engineering-product-vs-research-loops|loop engineering]] philosophy to SEO, and follows the [[concepts/agent-vs-workflow|agent vs workflow]] principle of reusable shared components.

## Key Ideas

- **Two-phase search landscape**: Search now encompasses both Google ranking and AI answer engines that crawl the web and cite sources. Both systems share the same foundational requirements.^[extracted]
- **Monthly audit cycle**: Once a month, the agent runs a set of prompts (framed as questions a buyer would ask an answer engine) and reads everything you publish and every profile you own against four checks:^[extracted]

### Four Checks

1. **Entity consistency**: Your name, offer, category, and facts must be stated the same way on every profile. Answer engines match you across sources before they cite you.^[extracted]
2. **Answer blocks**: Every page you want cited must open with a direct answer in everyday words, with facts underneath and proof near the top. Search engines pull passages, so a self-contained passage is what gets used.^[extracted]
3. **Earned mentions**: Mentions in places you do not own must be earned by "taking part in them for real before you ever mention the product."^[extracted]
4. **Third-party hosts**: Platforms like Reddit, Medium, YouTube, press-release wires, and bare Google Sites pages still rank and still get cited — but only on one condition: the content has to be worth its place.^[extracted]

- **Output**: A fix list per page and per profile, drafts for host posts, and a diff showing who got cited this month and who dropped.
- **Delivery**: Every host post is posted by the human from an account that "took part first" — meaning genuine participation before promotion.^[extracted]
- **Timing**: The search layer comes last for all three verticals because it "builds slowly and needs pages worth citing."^[extracted] This sequential approach connects to the [[concepts/agent-best-practices|agent best practices]] guidance on incremental rollout.

## Open Questions

- What specific prompts does the agent run for the monthly SEO audit?
- How are "answer blocks" structured technically — is there a recommended format or schema?
- What metrics define "performed" for entity consistency auditing?
- How does the agent determine which third-party hosts are worth participating in?
- What is the "diff of who got cited this month" — is it an automated ranking tracker?
- Can this layer be used for non-English markets, or is it optimized for English-language search?

## Sources

- **How to build a GTM machine from 0 to $10k MRR** by @EXM7777 (Machina). [Source](https://x.com/i/article/2089714600405356544)
