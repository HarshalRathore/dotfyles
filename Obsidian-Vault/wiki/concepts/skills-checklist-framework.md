---
title: "Skills Checklist Framework"
tags:
  - "agent-skills"
  - engineering
  - "skill-design"
sources:
  - "[[sources/web-youtube-com-watch-v-unzcg3lw6o0]]"
relationships:
  - {'target': '[[concepts/leading-words]]'}
  - {'target': '[[concepts/microservices-architecture]]'}
---
# Skills Checklist Framework

A structured framework for evaluating and building high-quality agent skills, created by Matt Pocock and published as the `writing-great-skills` skill in his open-source skills repository. The framework has four dimensions.

## The Four Dimensions

### 1. Trigger — How is the skill invoked?

The fundamental design decision: **model-invoked vs. user-invoked**.

- **Model-invoked skills** have a description in the agent's context. The agent decides when to call them. More flexible, but: every description costs tokens on every request, and the agent may choose not to invoke even the perfect skill (adding unpredictability).
- **User-invoked skills** have no description visible to the model. The user explicitly triggers them. Lower context load on the agent, but higher cognitive load on the user.

The tradeoff: model-invoked skills increase **context load** (tokens per request); user-invoked skills increase **cognitive load** (the user must remember what's available). ^[inferred]

### 2. Structure — How is the skill composed?

Skills are composed of two units: **steps** (the procedure) and **reference** (supporting information).

| Component | Purpose | Example |
|---|---|---|
| Steps | Step-by-step procedure the agent follows | "Find context → confirm test seams → write PRD" |
| Reference | Supporting information for steps | PRD template, test-seam definition |

Key constraint: **make the main `skill.md` as small as possible**. Branching reference material (only used in some paths) should be hidden behind **external references** — context pointers that the agent can pull into its context window when needed, rather than being inlined into every invocation.

### 3. Steering — How does the skill guide agent behavior?

The primary technique: **leading words**. Compact phrases that pack substantial meaning into a small token budget. The agent adopts these words in its reasoning traces, which changes its behavior at the thought level.

Example: Instead of telling the agent "don't code layer by layer, do a small slice first," use the leading word **"vertical slice"** — a well-known term the model already understands. When the agent repeats "we need a thin vertical slice" in its thinking, it self-steers toward the desired architecture.

**Leg work per step:** When an agent rushes through a step because it's eager to reach the next one, hide the future steps. Split the skill into separate sub-skills so the agent only sees one phase at a time. Matt applied this by splitting his planning phase into separate `grill-with-docs` and `to-prd` skills — the agent focuses on clarifying questions instead of racing ahead to the plan.

### 4. Pruning — What can be removed?

Three categories of unnecessary content:

- **Sediment** — accumulated contributions from multiple authors that no one felt empowered to delete. Fix: structural refactoring, not appending.
- **Crud** — stale instructions, irrelevant examples, outdated references. Remove or archive.
- **No-ops** — paragraphs that appear to do something but don't change agent behavior. Detect via **deletion tests**: delete the paragraph and see if the agent's output changes. If not, it was never doing work.

## How to Use

The framework is operationalized as the `writing-great-skills` skill in Matt Pocock's skills repository (`github.com/mattpocock/skills`). It can be used to:
1. Evaluate skills written by others
2. Guide the design of new skills from scratch
3. Audit and improve existing skills

## Related

- [[concepts/skill-hell]] — The problem this framework addresses
- [[concepts/leading-words]] — The primary steering technique in the framework
- [[concepts/agent-loop]] — The broader agent loop pattern that skills plug into
- [[entities/matt-pocock]] — Creator of the framework
- [[concepts/microservices-architecture]] — Model-invoked skill design is analogous to microservices (distributed, unpredictable); user-invoked is monolithic (centralized, predictable). Framework recommends knowing the tradeoff rather than defaulting to one.
