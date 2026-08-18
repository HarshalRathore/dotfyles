---
title: "Cordis Paper Repository (github.com/cordiverse/paper)"
category: misc
tags:
  - dynamic-composition
  - effects
  - coeffects
  - research-paper
  - open-source
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
source_url: "https://github.com/cordiverse/paper"
created: "2026-08-15T00:00:00Z"
updated: "2026-08-15T00:00:00Z"
summary: "Landing page for the Cordis paper repo — hosts the 88-page draft (2026-08-13) by Shi, Zhang & Cui behind the Cordis meta-framework deep-dive."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.60
  inferred: 0.35
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
relationships:
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: derived_from
  - target: "[[entities/cordis]]"
    type: related_to
---

# Cordis Paper Repository — github.com/cordiverse/paper

> **Source:** <https://github.com/cordiverse/paper>, a repository of the **Cordiverse** organization. Local clone at `/home/harshal/dotfyles/Obsidian-Vault/research/cordiverse-paper/` (single commit `948a07b` "upload paper", remote `origin` = `https://github.com/cordiverse/paper`).

## Overview

This repository hosts the paper **"A Programming Paradigm for Spatiotemporal Composability"** by Yifan Shi, Wei Zhang, and Tianyi Cui — a draft dated **August 13, 2026**, shipped as an 88-page PDF (`paper.pdf`, ~2.1 MB) plus a README. The README frames the work: modern software from plugin systems to self-evolving agent harnesses needs *dynamic composition*, whose formal foundations are underdeveloped; the paper lifts effect and coeffect concepts to runtime mechanisms (revertible effects, reactive coeffects), unifies them in a context type, gives a calculus of dynamic composition with metatheory, and implements the ideas in **Cordis** (a meta-framework, validated by the Koishi chatbot framework with 4000+ plugins). ^[extracted]

The README carries a preprint caveat: *"This is a preprint under active revision. The content may change substantially; please cite the latest version and check back before relying on specific results."* ^[extracted]

## Repository Facts

- **Org:** [[entities/cordiverse|Cordiverse]] ^[inferred]
- **Contents:** `paper.pdf` (88 pages), `README.md`, `.gitattributes`
- **Affiliation note:** authors are affiliated with [[entities/peking-university|Peking University]] and [[entities/deepseek|DeepSeek-AI]] ^[extracted]
- **Relation to runtime:** the paper describes **Cordis v4**; Koishi currently runs on Cordis v3 (shared core compositional model). ^[extracted]

## Concepts

- [[concepts/dynamic-composition]] — the problem this paper formalizes
- [[concepts/revertible-effects]] — temporal composability as a runtime mechanism
- [[concepts/reactive-coeffects]] — spatial composability as a runtime mechanism
- [[concepts/context-paradigm]] — the unified programming paradigm
- [[concepts/self-evolving-agent-harnesses]] — motivating application and future validation
- [[concepts/temporal-composability]] / [[concepts/spatial-composability]] — the two dimensions

## Entities

- [[entities/cordis]] — the meta-framework implementation
- [[entities/koishi]] — the 4000+-plugin production case study
- [[entities/yifan-shi]], [[entities/wei-zhang]], [[entities/tianyi-cui]] — authors

## Open Questions

- Whether the paper will be posted to arXiv or a conference (repo-only distribution as of 2026-08-15). ^[inferred]
- Whether Cordis v4's refined semantics will ship as a breaking Koishi migration. ^[inferred]

## Related

- [[references/cordis-spatiotemporal-composability]] — the full paper deep-dive
- [[misc/web-github-com-karpathy-autoresearch]] — another repo landing page pattern in this wiki

## Sources

- https://github.com/cordiverse/paper — repository
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf — the paper PDF
