---
title: Cordiverse
category: entities
type: entity
tags: [organization, open-source, community]
aliases: [Cordiverse org, cordiverse]
relationships:
  - target: "[[entities/cordis]]"
    type: related_to
  - target: "[[entities/koishi]]"
    type: related_to
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: related_to
  - target: "[[misc/web-github-com-cordiverse-paper]]"
    type: related_to
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
summary: "Cordiverse — the GitHub organization behind the Cordis meta-framework and the Koishi chatbot framework; publishes the Cordis paper repository."
provenance:
  extracted: 0.45
  inferred: 0.50
  ambiguous: 0.05
base_confidence: 0.77
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Cordiverse

**Cordiverse** is the GitHub organization behind the [[entities/cordis|Cordis]] meta-framework and the [[entities/koishi|Koishi]] chatbot framework. Its `paper` repository ([[misc/web-github-com-cordiverse-paper|github.com/cordiverse/paper]]) hosts the draft paper "A Programming Paradigm for Spatiotemporal Composability." ^[inferred]

## Basic Information

- **Type:** open-source organization (GitHub org)
- **Repositories:** `cordiverse/paper` (paper repo; source of the [[references/cordis-spatiotemporal-composability|paper deep-dive]]), plus the Cordis framework and Koishi framework repos ^[inferred]
- **Source:** <https://github.com/cordiverse/paper>

## Description

The organization publishes the Cordis ecosystem: the meta-framework of spatiotemporal composability, the Koishi chatbot framework built on it (4000+ community plugins), and the research paper formalizing the underlying paradigm. The paper repository was cloned locally at `/home/harshal/dotfyles/Obsidian-Vault/research/cordiverse-paper/` with a single commit ("upload paper"). ^[inferred]

Note: the paper itself does not name "Cordiverse" as an organization — it is inferred from the GitHub org hosting the repo. The paper presents Cordis and Koishi as the primary artifacts. ^[inferred] ^[ambiguous]

## Related Entities

- [[entities/cordis]] — the meta-framework
- [[entities/koishi]] — the chatbot framework
- [[entities/yifan-shi]], [[entities/wei-zhang]], [[entities/tianyi-cui]] — paper authors
- [[entities/deepseek]] — author affiliation on the paper

## Related Concepts

- [[concepts/dynamic-composition]] — the problem domain
- [[concepts/context-paradigm]] — the programming paradigm
- [[references/cordis-spatiotemporal-composability]] — paper deep-dive
- [[misc/web-github-com-cordiverse-paper]] — repo landing page

## Mentions in Source

No verbatim mention of "Cordiverse" appears in the paper text; the name is taken from the GitHub organization of the repository. ^[inferred]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
