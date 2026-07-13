---
title: Engineering for Bounded Cognition
category: references
tags: [bounded-cognition, software-engineering, cognitive-limits, system-design, human-factors]
aliases:
  - bounded cognition essay
relationships:
  - target: "[[concepts/bounded-cognition]]"
    type: related_to
  - target: "[[entities/matt-williams]]"
    type: related_to
  - target: "[[concepts/cognitive-technologies]]"
    type: related_to
sources:
  - "https://shapeofthesystem.com/posts/2026/02/03/bounded-cognition.html"
summary: Essay by Matt Williams arguing that the human mind holds ~4 working memory chunks and that software engineering is fundamentally about designing systems that work within those cognitive limits.
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.82
lifecycle: draft
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-07-13T00:00:00Z
---

# Engineering for Bounded Cognition

> One paragraph summary: This essay by Matt Williams argues that the human mind can hold about four things in working memory at once, yet software systems are vastly larger. Nearly everything good in software engineering is a strategy for designing systems that a small mind can work on safely without being overwhelmed.

## Overview

By [Matt Williams](https://shapeofthesystem.com), published February 3, 2026. ^[extracted]

The essay is the root of a series of field notes on building software for the way minds actually work — tired, distractible, ordinary, and now partly machine. The full set of concrete moves is the manifesto at [The Shape of the System](https://shapeofthesystem.com). ^[extracted]

## Key Arguments

1. **Working memory is four, not seven.** The popular "magical number seven" has been overstated; Cowan (2001) found four is the honest figure. ^[extracted]
2. **Software is a ratio problem.** Devices run millions of lines of code; the mind builds and maintains them with four slots. ^[extracted]
3. **Attention is a torch beam, not a floodlight.** People miss things staring right at them (gorilla study, door study). ^[extracted]
4. **Human error is a design problem.** Blaming the person ignores the designer's role in creating error-prone situations. ^[extracted]
5. **LLMs share the same limit.** Context windows behave like working memory — things drop out entirely. ^[extracted]
6. **Designing for constraints benefits everyone.** The OXO Good Grips peeler example — built for arthritic hands, better for every hand. ^[extracted]

## Sources Cited

- **Cowan 2001** — Working-memory limit is about four chunks.
- **Liu et al. 2023** — "Lost in the Middle": models lose the center of long contexts.
- **Miller 1956** — The original seven-plus-or-minus-two paper (authored skeptically).
- **OXO Good Grips 1990** — Sam Farber's design for the constrained case.
- **Peterson & Peterson 1959** — Unrehearsed items decay within seconds.
- **Simons & Chabris 1999** — Inattentional blindness: the gorilla study.
- **Simons & Levin 1998** — Change blindness: the door study.

## Reception

The tweet recommending this essay (by @badlogicgames, June 28, 2026) received 594 likes, 32 reposts, and 13 replies with 32,975 views. Replies included debate over whether AI models can reliably track more than four things simultaneously, and praise for the framework's practical value in reducing self-blame for cognitive overload. ^[extracted]

## Sources

- [[concepts/bounded-cognition|Bounded Cognition]] — distilled concept page
- [[entities/matt-williams|Matt Williams]] — author
