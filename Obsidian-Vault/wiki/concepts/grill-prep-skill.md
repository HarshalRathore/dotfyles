---
title: Grill Prep Skill
category: concepts
tags:
- agent-skills
- grilling
- skill-design
aliases:
- /grill-prep
relationships:
- target: '[['entities/matt-pocock']]'
  type: derived_from
- target: '[['concepts/skills-checklist-framework']]'
  type: extends
sources:
- '[[misc/remaining-mattpocock-grill-prep-skill]]'
summary: Matt Pocock's concept for a /grill-prep skill that light-grills ideas then distributes discussion areas across parallel threads to prevent cognitive overload.
provenance:
  extracted: 0.6
  inferred: 0.4
  ambiguous: 0.0
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: '2026-07-13T00:00:00+00:00'
updated: '2026-07-13T00:00:00+00:00'
---
# Grill Prep Skill

Matt Pocock's concept for a `/grill-prep` skill that light-grills an idea, then distributes discussion areas across separate threads to prevent the "dumb zone during grilling" — the cognitive overload that occurs when grilling is done serially.

## Problem

Serial grilling of ideas pushes humans into a "dumb zone" where they can no longer hold all the trade-offs in working memory. Each question in a grilling pass consumes attention, leaving less capacity for the next round.

## Idea

The `/grill-prep` skill would:

1. **Light-grill the idea** — surface the obvious holes, tensions, and assumptions
2. **Break discussion areas into threads** — each topic becomes its own focused pass, allowing parallel processing rather than one monolithic grilling session

This turns a single exhausting grilling pass into multiple focused ones, each with its own head-space.

## Relation to Skills Checklist Framework

The grill-prep idea extends Matt Pocock's Skills Checklist Framework by applying the **pruning** dimension to grilling itself: instead of one skill that does everything at once, split the grilling into sequential focused skills. ^[inferred]

The existing `grill-with-docs` and `to-prd` skills already embody this pattern by splitting planning into separate phases. Grill prep generalizes it to any grilling session.

## Open Questions

- What's the optimal depth of light-grilling before splitting into threads?
- Does thread parallelism translate well to single-threaded human cognition, or is this more useful for multi-agent systems? ^[inferred]
- How does this compose with the "leading words" steering technique in skill design? ^[ambiguous]

## Related

- [[entities/matt-pocock]] — Creator of the idea
- [[concepts/skills-checklist-framework]] — His framework for building and evaluating agent skills
- [[concepts/skill-hell]] — The quality problem his skills address
- [[concepts/leading-words]] — His steering technique for agent skills
