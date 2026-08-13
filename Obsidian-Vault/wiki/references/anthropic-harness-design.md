---
title: "Harness Design for Long-Running Application Development — Anthropic"
category: references
type: reference
tags: [harness-engineering, multi-agent, evaluator, long-running-agents, anthropic]
sources:
  - "https://www.anthropic.com/engineering/harness-design-long-running-apps"
source_url: "https://www.anthropic.com/engineering/harness-design-long-running-apps"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Anthropic Labs' GAN-inspired planner-generator-evaluator harness for multi-hour full-stack builds: grading criteria, sprint contracts, Playwright QA, and stripping components as models improve."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: "2026-08-13"
tier: supporting
---

# Harness Design for Long-Running Application Development

> [!tldr] Anthropic Labs engineer Prithvi Rajasekaran describes a GAN-inspired harness that pairs a generator with a skeptical evaluator to push Claude past its solo ceilings — first for subjective frontend design, then for multi-hour autonomous full-stack builds. Two earlier harness lessons carry over: decomposing the build into tractable chunks and handing off context between sessions via structured artifacts. The final architecture is three agents — planner, generator, evaluator — where the evaluator clicks through the running app with Playwright MCP and enforces hard per-criterion thresholds. The article ends with an explicit principle: every harness component encodes an assumption about what the model can't do alone, and those assumptions must be re-tested every time a stronger model lands.

**Author:** Prithvi Rajasekaran, member of the Anthropic Labs team. **Source:** anthropic.com engineering blog; publication date not shown on the page. ^[ambiguous]

## Overview

The author worked on two interconnected problems: getting Claude to produce high-quality frontend designs, and getting it to build complete applications without human intervention. Earlier work on a frontend design skill and a long-running coding agent harness improved Claude's performance well above baseline through prompt engineering and harness design — but both eventually hit ceilings. Taking inspiration from Generative Adversarial Networks (GANs), he designed a multi-agent structure with a **generator** and an **evaluator** agent. Building an evaluator that graded outputs reliably — and with taste — meant first developing criteria that turn subjective judgments like "is this design good?" into concrete, gradable terms. The techniques then transferred to long-running autonomous coding, yielding a three-agent architecture (planner, generator, evaluator) that produced rich full-stack applications over multi-hour sessions. ^[extracted]

## Key Points

### Why naive implementations fall short

- Earlier harness work used an initializer agent to decompose a product spec into a task list, and a coding agent that implemented tasks one feature at a time, handing off artifacts to carry context across sessions — echoing community approaches like the "Ralph Wiggum" method of hooks/scripts keeping agents in continuous iteration. ^[extracted]
- **Failure mode 1 — context loss:** models lose coherence on lengthy tasks as the context window fills. Some models exhibit "context anxiety": wrapping up work prematurely as they approach what they believe is their context limit. ^[extracted]
- **Context resets** (clearing the window entirely, starting a fresh agent with a structured handoff carrying state + next steps) address both issues; **compaction** (summarizing earlier conversation in place so the same agent continues) preserves continuity but gives no clean slate, so context anxiety can persist. Compaction alone was insufficient for Claude Sonnet 4.5, making resets essential — at the cost of orchestration complexity, token overhead, and latency. ^[extracted]
- **Failure mode 2 — self-evaluation leniency:** agents confidently praise their own work even when quality is obviously mediocre, especially on subjective tasks with no binary check. Separating the agent doing the work from the agent judging it is a strong lever: tuning a standalone evaluator to be skeptical is far more tractable than making a generator critical of its own work, and the external feedback gives the generator something concrete to iterate against. ^[extracted]

### Frontend design: making subjective quality gradable

- Two insights: aesthetics can't be fully reduced to a score, but they can be improved with **grading criteria** that encode design principles ("does this follow our principles for good design?" beats "is this beautiful?"); and separating frontend generation from frontend grading creates a feedback loop toward stronger outputs. ^[extracted]
- Four grading criteria given to both agents: **design quality** (coherent whole vs collection of parts), **originality** (custom decisions vs templates, library defaults, and AI-generated patterns — unmodified stock components or telltale AI slop like purple gradients over white cards fail), **craft** (typography hierarchy, spacing consistency, color harmony, contrast ratios), **functionality** (usability independent of aesthetics). Design quality and originality were weighted more heavily, since Claude already scored well on craft and functionality by default. ^[extracted]
- The evaluator was calibrated with **few-shot examples with detailed score breakdowns**, aligning its judgment with the author's preferences and reducing score drift across iterations. ^[extracted]
- Built on the Claude Agent SDK: a generator creates an HTML/CSS/JS frontend; the evaluator gets the **Playwright MCP** to interact with the live page (navigating, screenshotting, studying the implementation) before scoring each criterion and writing a detailed critique. Feedback flows back to the generator; 5–15 iterations per generation, runs up to four hours. After each evaluation the generator makes a strategic decision: **refine** the current direction if scores trend well, or **pivot** to a different aesthetic. ^[extracted]
- Findings: criteria wording itself steered output (phrases like "museum quality" pushed a particular visual convergence); later iterations were better overall but a middle iteration was sometimes preferred over the last; implementation complexity tended to increase across rounds. In the Dutch-art-museum example, the tenth cycle scrapped the polished landing page entirely and reimagined the site as a spatial experience (3D room, CSS-perspective checkered floor, doorway-based navigation) — a creative leap unseen from single-pass generation. ^[extracted]

### Scaling to full-stack coding

- The generator-evaluator loop maps naturally onto the software development lifecycle, where code review and QA play the evaluator's structural role. ^[extracted]
- **Planner:** takes a simple 1–4 sentence prompt and expands it into a full product spec. Prompted to be ambitious about scope, focused on product context and high-level technical design rather than granular implementation (spec errors would cascade into downstream implementation), and to weave AI features into the specs. ^[extracted]
- **Generator:** works in sprints, one feature at a time from the spec, on a React/Vite/FastAPI/SQLite (later PostgreSQL) stack, with git for version control; self-evaluates at the end of each sprint before handing off to QA. ^[extracted]
- **Evaluator:** uses Playwright MCP to click through the running application like a user — testing UI features, API endpoints, and database states — then grades each sprint against found bugs plus criteria modeled on the frontend experiment (product depth, functionality, visual design, code quality). Each criterion has a **hard threshold**: any one below it fails the sprint, and the generator gets detailed feedback. ^[extracted]
- **Sprint contracts:** before each sprint, generator and evaluator negotiate what "done" means for that chunk — the generator proposes what it will build and how success will be verified; the evaluator reviews so the generator builds the right thing; they iterate until agreement. Communication is file-based: one agent writes a file, another reads and responds in it or with a new file. ^[extracted]
- **Session architecture:** the earlier harness needed context resets with Sonnet 4.5 (context anxiety); Opus 4.5 largely removed that behavior, so this harness dropped resets entirely and ran agents as one continuous session, relying on the Claude Agent SDK's automatic compaction. ^[extracted]

### Running the harness (retro game maker)

- Same one-sentence prompt ("Create a 2D retro game maker...") run solo and through the full harness: **solo = 20 min, $9**; **full harness = 6 hr, $200** — over 20x more expensive, with immediately apparent quality differences. ^[extracted]
- Solo output: rigid workflow, wasted viewport space, and a broken core — entities appeared but nothing responded to input (wiring between entity definitions and game runtime was broken). ^[extracted]
- Harness output: planner expanded the prompt into a **16-feature spec across ten sprints** (sprite animation system, behavior templates, sound/music, AI-assisted sprite generator and level designer, game export with shareable links); the planner read the frontend design skill to create a visual design language in the spec; the app showed more polish, a usable play mode, and a built-in Claude integration. Evaluator kept implementation in line with the spec: Sprint 3 alone had 27 contract criteria covering the level editor, and findings were specific enough to act on (e.g. `fillRectangle` not triggered on mouseUp; delete-key handler requiring both `selection` and `selectedEntityId`; FastAPI route ordering returning 422 on `/frames/reorder`). ^[extracted]
- **Evaluator tuning was real work:** "Out of the box, Claude is a poor QA agent" — it identified legitimate issues then talked itself into approving anyway, and tested superficially rather than probing edge cases. The loop: read evaluator logs, find judgment divergences, update the QA prompt; several rounds before grading was reasonable. Remaining limits: small layout issues, unintuitive interactions, and undiscovered bugs in deeply nested features. ^[extracted]

### Iterating on the harness

- **Design principle:** every component in a harness encodes an assumption about what the model can't do on its own, and those assumptions are worth stress-testing — they may be wrong, and they go stale as models improve ("find the simplest solution possible, and only increase complexity when needed"). ^[extracted]
- A radical cut-back attempt couldn't replicate performance and made it hard to tell which pieces were load-bearing; the author switched to removing one component at a time. ^[extracted]
- **Opus 4.6** (released mid-experiments) "plans more carefully, sustains agentic tasks for longer, can operate more reliably in larger codebases, and has better code review and debugging skills" — capabilities the harness had been built to supplement. ^[extracted]
- **Removing the sprint construct:** Opus 4.6 could natively handle decomposition. Planner and evaluator stayed: without the planner the generator under-scoped; the evaluator moved to a single pass at the end of the run. Evaluator value is a boundary question — worth the cost when the task sits beyond what the current model does reliably solo; unnecessary overhead for tasks inside that boundary. ^[extracted]
- DAW experiment on the simplified harness (same 1-sentence prompt → full spec): ~4 hr, $124.70 total (planner 4.7 min/$0.46; build rounds 2h7m/$71.08 + 1h2m/$36.89 + 10.9m/$5.88; QA rounds ~9 min/~$3.10 each). Builder ran coherently for over two hours without sprint decomposition; QA still caught real gaps (display-only DAW features, stub-only audio recording, no clip resize/split, numeric sliders instead of EQ curves). Result: working arrangement view, mixer, and transport; the agent composed a short song end-to-end. Claude can't hear, which weakened the QA loop for musical taste. ^[extracted]

### What comes next

- Better models cut both ways: scaffolding matters less for tasks models now handle natively, but there is more room to build harnesses that achieve tasks beyond what the model does at baseline. ^[extracted]
- Carried-forward lessons: experiment with the model you're building against and read its traces on realistic problems; for complex tasks, decompose and apply specialized agents per aspect; when a new model lands, re-examine the harness — strip pieces no longer load-bearing and add new ones for newly possible capability. ^[extracted]
- Closing conviction: "the space of interesting harness combinations doesn't shrink as models improve. Instead, it moves" — the interesting work for AI engineers is finding the next novel combination. ^[extracted]

## Concepts

- [[concepts/ai-harness|AI Agentic Harness]] — the article is a first-party case study of the harness layer this page defines
- [[concepts/context-management-for-agents|Context Management for Agents]] — context resets vs compaction trade-off is the article's session-level context strategy
- [[concepts/session-portability|Session Portability]] — structured artifacts hand off state across sessions/agents; the article's file-based communication is a concrete instance
- [[concepts/context-rot|Context Rot]] — context anxiety and coherence loss as the window fills are the article's failure-mode 1
- [[concepts/agentic-evaluators|Agentic Evaluators]] — evaluator agents that act (Playwright MCP click-through) rather than score statically
- [[concepts/evaluator-thresholds|Evaluator Thresholds]] — the hard per-criterion thresholds that fail a sprint
- [[concepts/self-reflection-evaluator|Self-Reflection Evaluator-Optimizer]] — the article's core counterpoint: self-evaluation is unreliable, separation beats self-critique
- [[concepts/llm-as-planner-not-executor|LLM as Planner, Not Executor]] — the planner agent's high-level-spec design
- [[concepts/blueprint-generator-pattern|Blueprint Generator Pattern]] — the planner→spec→generator flow the article executes
- [[concepts/agent-exit-strategies|Agent Exit Strategies]] — sprint contracts define "done" before work starts, an external exit condition per chunk

## Entities

- [[entities/anthropic|Anthropic]] — publisher; author's employer
- [[entities/claude-code|Claude Code]] — the frontend-design skill the article builds on lives in the claude-code repo ^[inferred]
- [[references/claude-agent-sdk|Claude Agent SDK]] — the orchestration layer for both harnesses (loops, automatic compaction)
- Prithvi Rajasekaran — author; named in the article, no entity page yet ^[inferred]
- Claude Opus 4.5 / Opus 4.6 / Claude Sonnet 4.5 — models named in the article; no entity pages yet ^[inferred]

## Open Questions

- The article's exact publication date is absent from the page; the Opus 4.6 release and Labs-team framing place it mid-2026. ^[ambiguous]
- "Claude is a poor QA agent" out of the box — the tuning loop (read logs → find divergences → update prompt) is described but never quantified (rounds, score deltas, cost of tuning). ^[ambiguous]
- The evaluator-threshold claim ("hard threshold, any one below fails the sprint") is stated without the thresholds' values or how they were set — presumably calibrated like the design criteria, but unsaid. ^[inferred]
- Whether the GAN-inspired generator/evaluator split generalizes beyond design and full-stack coding — the article maps it to code review/QA but tests only those two domains. ^[inferred]
- Model-dependence: context anxiety is attributed to Sonnet 4.5 and "largely removed" by Opus 4.5 — a fast-moving, model-specific claim that the wiki should re-check against newer models. ^[ambiguous]

## Related

- [[references/anthropic-effective-harnesses|Anthropic: Effective Harnesses]] — the companion article (initializer + coding agent, context resets) this post builds on; promised by the course landing page, page in flight from a sibling agent
- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering — Walking Labs (Course Landing)]] — links this article as a course reference
- [[references/harness-lecture-05-long-running-tasks-continuity|Lecture 05 — Long-Running Tasks & Continuity]] — why continuity is lost on long tasks
- [[references/harness-lecture-06-initialization-phase|Lecture 06 — Initialization Phase]] — planning/spec work before execution
- [[references/harness-lecture-09-declare-victory-too-early|Lecture 09 — Declaring Victory Too Early]] — the article's self-evaluation leniency, from the course lens
- [[references/harness-lecture-12-clean-state|Lecture 12 — Clean State]] — context resets and handoff artifacts
- [[references/harness-lecture-13-loop-engineering|Lecture 13 — Loop Engineering]] — generator/evaluator iteration as a loop
- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop: Loop Convergence]] — verifier economics; the article's evaluator thresholds are a concrete verifier

### Further reading (outbound links from the article)

- Introducing Anthropic Labs — https://www.anthropic.com/news/introducing-anthropic-labs
- Frontend design skill (claude-code repo) — https://github.com/anthropics/claude-code/blob/main/plugins/frontend-design/skills/frontend-design/SKILL.md
- Effective harnesses for long-running agents — https://www.anthropic.com/engineering/effective-harnesses-for-long-running-agents
- Generative Adversarial Network (Wikipedia) — https://en.wikipedia.org/wiki/Generative_adversarial_network
- The Ralph Wiggum method — https://ghuntley.com/ralph/
- Effective context engineering for AI agents — https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents
- Claude Agent SDK overview — https://platform.claude.com/docs/en/agent-sdk/overview
- Building Effective Agents — https://www.anthropic.com/research/building-effective-agents
- Claude Opus 4.6 launch — https://www.anthropic.com/news/claude-opus-4-6
