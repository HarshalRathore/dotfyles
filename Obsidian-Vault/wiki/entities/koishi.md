---
title: Koishi
category: entities
type: entity
tags: [project, framework, chatbot, open-source, typescript]
aliases: [Koishi framework, koishijs]
relationships:
  - target: "[[entities/cordis]]"
    type: uses
  - target: "[[concepts/reactive-coeffects]]"
    type: uses
  - target: "[[entities/cordiverse]]"
    type: related_to
  - target: "[[references/cordis-spatiotemporal-composability]]"
    type: related_to
sources:
  - "https://github.com/cordiverse/paper"
  - "https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf"
summary: "Koishi — an open-source chatbot framework built on Cordis; over four years it accumulated 4000+ community plugins, serving as the paper's production case study."
provenance:
  extracted: 0.80
  inferred: 0.17
  ambiguous: 0.03
base_confidence: 0.77
lifecycle: draft
lifecycle_changed: 2026-08-15
tier: supporting
created: 2026-08-15
updated: 2026-08-15
---

# Koishi

**Koishi** is an open-source chatbot application framework built on [[entities/cordis|Cordis]]. Over four years of development it accumulated over 4000 community-contributed plugins — ranging from instant-messaging (IM) adapters and database drivers to administrative consoles and end-user features. Its scale and diversity make it a representative validation of Cordis's dynamic composability in a production setting. ^[extracted] (Koishi uses the term *plugin* for the concept the paper formalizes as *component*.) ^[extracted]

## Basic Information

- **Type:** software framework (chatbot application framework)
- **Built on:** [[entities/cordis|Cordis]] (currently Cordis v3; the paper describes Cordis v4)
- **Org:** [[entities/cordiverse|Cordiverse]]
- **Scale:** 4000+ community plugins over four years ^[extracted]

## Description

Koishi runs as a server-side bot whose every feature is realized as a plugin over Cordis's context primitives; Koishi itself contributes only the chatbot-domain vocabulary. Notably, Koishi's web console is a **second, independent Cordis application** whose plugins compose the primitives of the browser and its UI rather than those of the server — establishing two properties of the paradigm: it is *expressive* (the primitives suffice to carry a complete production system) and *general* (it fixes how effects and coeffects compose while leaving their meaning to each application). ^[extracted]

## Key Findings from the Case Study

- **Temporal composability without cognitive overhead** — an orchestrator disables a plugin from the console and its effects are withdrawn in place; during development the HMR engine re-applies edited plugins on save while preserving cache state and live connections. Because effects performed through the context are tracked and their inverses composed automatically, even an inexperienced author obtains ordered cleanup without writing an uninstall path — correctness that would otherwise rest on each author's diligence is discharged once, by the abstraction. ^[extracted]
- **Spatial composability across an open ecosystem** — Koishi's ecosystem exhibits a genuine dependency topology: IM adapters provide access to each messaging platform, database drivers provide persistent storage, and functional plugins declare these as coeffects. Reconfiguring a provider at runtime reactivates only the dependents whose resolved dependency changed; a plugin whose dependency is unavailable stays inactive until it appears, without erroring. Providers and consumers are typically written by different authors coordinating on nothing beyond the coeffect. ^[extracted]
- **Threats to validity** — the evidence is drawn from a single ecosystem in a single host language, so it cannot separate the merits of the paradigm from those of its TypeScript realization or of Koishi's domain; it is observational rather than a controlled comparison — an existence-and-adoption result rather than a quantitative one. ^[extracted]

## Related Entities

- [[entities/cordis]] — the meta-framework Koishi is built on
- [[entities/cordiverse]] — the organization
- [[entities/yifan-shi]], [[entities/wei-zhang]], [[entities/tianyi-cui]] — paper authors describing Koishi
- [[entities/deepseek]] — author affiliation (DeepSeek-AI)

## Related Concepts

- [[concepts/reactive-coeffects]] — the dependency mechanism the ecosystem exercises
- [[concepts/revertible-effects]] — the cleanup mechanism plugins get for free
- [[concepts/dynamic-composition]] — the umbrella problem
- [[concepts/context-paradigm]] — the paradigm validated
- [[concepts/ai-harness]] — chatbot-as-harness connection
- [[references/cordis-spatiotemporal-composability]] — paper deep-dive

## Mentions in Source

> "Koishi is an open-source chatbot application framework built on Cordis. Over four years of development, it has accumulated over 4000 community-contributed plugins... Its scale and diversity make it a representative validation of Cordis's dynamic composability in a production setting." ^[extracted]

## Sources

- https://github.com/cordiverse/paper
- https://raw.githubusercontent.com/cordiverse/paper/main/paper.pdf
