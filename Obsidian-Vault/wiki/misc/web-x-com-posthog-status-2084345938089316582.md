---
title: "What nobody tells you about writing agent skills — PostHog's X Article"
category: misc
tags: [agent-skills, context-engineering, posthog, progressive-disclosure]
sources:
  - "https://x.com/posthog/status/2084345938089316582"
  - "https://x.com/posthog/article/2084345938089316582"
source_url: "https://x.com/posthog/status/2084345938089316582"
created: "2026-08-15T20:08:52Z"
updated: "2026-08-15T20:08:52Z"
summary: "PostHog's five practical lessons for agent skills: progressive disclosure, goal-focused ambiguity, anti-rot regeneration, agent feedback, and selective skill creation."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.92
  inferred: 0.06
  ambiguous: 0.02
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
relationships:
  - target: "[[concepts/progressive-disclosure-forms]]"
    type: extends
  - target: "[[concepts/context-engineering]]"
    type: related_to
  - target: "[[entities/posthog]]"
    type: related_to
---

# What nobody tells you about writing agent skills — PostHog's X Article

**Author:** PostHog (@posthog); the article credits Ian Vanagas. ^[extracted]
**Date:** August 3, 2026. ^[extracted]
**URL:** https://x.com/posthog/status/2084345938089316582

## Tweet Content

The post announces “What nobody tells you about writing agent skills” and links to the full X Article. The article was readable through an authenticated X session during ingest. ^[extracted]

## Distilled Lessons

- **Progressive disclosure is foundational.** Skill names and descriptions route agents toward relevant context; the main file then routes to references, scripts, schemas, examples, or other deeper material. ^[extracted]
- **Specify goals, constraints, and unavailable context, not brittle procedures.** Skills should leave room for the agent to inspect runtime reality and choose a path. ^[extracted]
- **Prevent skill rot.** Separate durable structure from volatile content, point at a source of truth, and regenerate rather than repeatedly patching a decaying skill. ^[extracted]
- **Ask the agent what it needs.** Questions about capabilities, missing context, and the previous run expose information the skill author may not have. ^[extracted]
- **Create skills selectively.** Repeated, error-prone, context-heavy, or automatable workflows justify the maintenance cost; simple work that agents already perform well does not. ^[extracted]

PostHog reports 226 skills in its internal store and 187 `SKILL.md` files across 28 products. ^[extracted]

## Concepts

- [[concepts/agent-skill-engineering]] — distilled skill-writing principles
- [[concepts/progressive-disclosure-forms]] — on-demand context loading
- [[concepts/context-engineering]] — context selection and structure
- [[concepts/continuous-eval-loops]] — recurring improvement loops

## Entities

- [[entities/posthog]] — publisher and practitioner
- [[entities/ian-vanagas]] — credited author

## Open Questions

- How are PostHog's 226 internal skills evaluated quantitatively?
- Which parts of the context mill are automated versus human-curated?

## Related

- [[references/posthog-writing-agent-skills]]
- [[concepts/skills-checklist-framework]]
- [[references/harness-skills-hub]]
