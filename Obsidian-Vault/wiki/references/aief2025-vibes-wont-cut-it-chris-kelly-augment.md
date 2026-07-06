---
title: Vibes Won't Cut It — Chris Kelly, Augment Code (AIEF2025)
category: references
tags:
- ai-engineering
- production
- code-review
- software-engineering
- aief2025
aliases:
- Vibes won't cut it
- Chris Kelly AIEF2025
relationships:
- target: '[[concepts/code-is-artifact]]'
  type: extends
- target: '[[concepts/burden-of-generated-code]]'
  type: extends
- target: '[[concepts/code-review-primary-skill]]'
  type: extends
- target: '[[concepts/create-refine-loop]]'
  type: extends
- target: '[[concepts/vibe-coding-origins]]'
  type: related_to
sources:
- 'https://www.youtube.com/watch?v=dc3qoa9wone'
summary: A grounded critique of AI coding hype from a production software engineering perspective — arguing that generated code is still code that must be maintained, production systems have emergent behavi...
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Vibes Won't Cut It — Chris Kelly, Augment Code

> AI code is still code. Vibes don't fix a production outage at 2 AM.

## Key Claims

- **Code is an artifact, not the job.** Generating code is not the same as software engineering. An architect's job is not blueprints; a software engineer's job is not code — it is making thousands of decisions about what the software should do, what packages to bring in, what trade-offs to accept. ^[extracted]

- **Every generated line is a maintenance burden.** Every line of code comes with a cost: it must be maintained, debugged, and understood. "The best code is no code at all" ([[entities/jeff-atwood|Jeff Atwood]]). More AI-generated code means more to maintain, not less. ^[extracted]

- **Complex production systems have emergent behavior.** Pattern matching breaks down at scale because production systems accumulate idiosyncrasies, undocumented decisions, and "only Bob knows how that works" knowledge. LLMs generate text and patterns — they don't make decisions, and at some scale there is no pattern to match. ^[extracted]

- **Changing software safely is the real job.** Twenty years of software engineering is about one thing: how to make changes to software — new functionality or modified existing code — without breaking it. Testing, version control, type systems, deployment strategies are all tools for this. ^[extracted]

- **Code review is the most important skill.** As AI generates more code, the ability to read and evaluate code becomes critical. Current code review tools are inadequate — "I'm getting a lexicographically sorted list of changed files" is not how software changes should be reviewed. This skill should be what the industry interviews for. ^[extracted]

- **Professional software engineers are the last to adopt AI.** Unusual for a dev tool transformation. In the GitHub/cloud era, developers adopted immediately. With AI, they're hesitant. ^[extracted]

## The Create-Refine Loop

Kelly's recommended workflow for AI coding:

1. **Create** a document — have the LLM help generate a plan as a markdown file
2. **Refine** — edit the plan, iterate on it
3. **Create** — have the agent run against the refined plan file to generate code
4. **Refine** — use completions or manual edits to tweak the result
5. Loop

## Tips for AI-Ready Codebases

- Documented standards and practices — let AI know what direction the codebase is heading
- Reproducible development environments — avoid bespoke, hard-to-recreate setups
- Easy local testing — fast, runnable test suites
- Clear boundaries for tasks — "extract this module using the strangler pattern" is too vague for AI
- Defined, bounded tasks — give AI the same clarity you'd give a human engineer

## Don't Anthropomorphize AI

AI "talks like a human but it's actually a machine." When an LLM says "I just scanned that file, I didn't read it" — that's not what happened. It's generating text that sounds reasonable because its training data contains thousands of similar excuses. LLMs generate text; they don't always do what that text describes. ^[extracted]

## People

- [[entities/chris-kelly|Chris Kelly]] — Speaker (from [[entities/augment-code|Augment Code]])

## Related

- [[concepts/code-is-artifact|Code is an Artifact, Not the Job]] — Core thesis: code generation != software engineering
- [[concepts/burden-of-generated-code|Burden of Generated Code]] — Every line of AI-generated code adds maintenance cost
- [[concepts/code-review-primary-skill|Code Review as Primary Skill]] — Why review matters more as AI writes more code
- [[concepts/create-refine-loop|Create-Refine Loop]] — The plan-create-refine workflow for productive AI coding
- [[concepts/vibe-coding-origins|Vibe Coding Origins]] — What this talk offers a practical counterpoint to: the practice of "not examining the code at all"
