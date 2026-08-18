---
title: AI Engineering Skills Map
category: concepts
tags:
  - ai-engineering
  - software-engineering
  - coding-agents
  - product-judgment
  - career-development
sources:
  - "https://x.com/AndrewYNg/status/2088302050706686198"
summary: "A four-part framework for AI engineering: build AI applications, retain software fundamentals, use coding agents, and shape what gets built."
provenance:
  extracted: 0.72
  inferred: 0.23
  ambiguous: 0.05
base_confidence: 0.37
lifecycle: draft
lifecycle_changed: "2026-08-15"
tier: supporting
created: "2026-08-15T19:39:57Z"
updated: "2026-08-15T19:39:57Z"
relationships:
  - target: "[[concepts/ai-engineering]]"
    type: extends
  - target: "[[concepts/agentic-coding]]"
    type: uses
  - target: "[[concepts/eval-driven-development]]"
    type: requires
  - target: "[[concepts/ai-product-manager]]"
    type: related_to
---

# AI Engineering Skills Map

Andrew Ng’s visible announcement proposes a practical map of AI-engineering skills organized around four mutually reinforcing areas: building AI applications, software-engineering fundamentals, coding-agent proficiency, and shaping the build. The framework treats AI engineering as a broad, cross-functional capability rather than a narrow title. ^[extracted]

## Four Areas

### 1. Build AI Applications

AI engineers need to build and deploy applications whose behavior is partly probabilistic. That makes evaluation, measurement, error analysis, monitoring, and governance first-class engineering work rather than post-launch polish. ^[extracted]

- Define the task and expected behavior.
- Build evaluation datasets and feedback loops.
- Analyze errors instead of relying only on aggregate accuracy.
- Account for safety, privacy, and governance constraints.
- Make cost, latency, and quality trade-offs explicit. ^[inferred]

See [[concepts/ai-engineering]] and [[concepts/eval-driven-development]].

### 2. Software-Engineering Fundamentals

AI-generated code does not remove the need for architecture, security, scalability, testing, maintainability, or cost awareness. Strong fundamentals let engineers judge generated implementations and choose appropriate system boundaries. ^[extracted]

This area is the control layer around probabilistic components: it makes AI systems legible, testable, and operable. ^[inferred]

See [[concepts/software-engineering-model]] and [[concepts/type-safety-ai]].

### 3. Use Coding Agents

Coding-agent skill is not synonymous with writing clever prompts. It includes giving an agent the right context, breaking work into verifiable steps, specifying outcomes, orchestrating tools or sub-agents, inspecting artifacts, and deploying safely. ^[inferred]

The practical loop is: provide context → plan → delegate → verify → correct → ship. This links the map to [[concepts/context-engineering]], [[concepts/agentic-coding]], and [[concepts/agent-workflow-loop]].

### 4. Shape the Build

AI engineers increasingly need judgment about what to build, for whom, and why. Product sense, business understanding, user empathy, and ownership of outcomes complement implementation ability. ^[inferred]

This overlaps with the [[concepts/ai-product-manager]] mindset: balancing user desirability, technical feasibility, business viability, and the actual capability of the AI system.

## Implications

- **For developers:** career growth requires combining implementation, evaluation, agent collaboration, and product judgment rather than specializing in model APIs alone. ^[inferred]
- **For employers:** hiring rubrics should assess the ability to ship and operate AI products, not only model knowledge or prompt fluency. ^[inferred]
- **For educators:** curricula should connect software engineering, AI application development, evaluation, coding-agent workflows, and product decisions.
- **For teams:** continuous learning is operationally necessary because AI tools and best practices change quickly. ^[inferred]

## Limitations

The linked X article was unavailable during ingest, so the complete subskill taxonomy, level definitions, and any diagrams from the original map are not captured here. The four-area structure comes from the visible post and the detailed subclaims are partly synthesized from the post’s accessible description. ^[ambiguous]

## Related

- [[references/andrew-ng-ai-engineering-skills-map]] — source reference
- [[concepts/ai-engineering]] — reliable AI systems as an engineering discipline
- [[concepts/eval-driven-development]] — evaluation-first development
- [[concepts/agentic-coding]] — coding through AI agents
- [[concepts/context-engineering]] — supplying agents with useful context
- [[concepts/ai-product-manager]] — product and business judgment for AI systems
- [[entities/andrew-ng]] — author

## Sources

- <https://x.com/AndrewYNg/status/2088302050706686198>
