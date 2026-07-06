---
title: "Vibe Coding"
category: concepts
tags: [vibe-coding, ai-coding, rapid-prototyping, development-methodology, aief2025]
summary: "Development approach using AI to rapidly prototype without upfront planning, iterating through waves of AI-generated code until stability, then switching to traditional engineering."
sources:
  - "https://www.youtube.com/watch?v=kcka7rzcxlk"
  - "https://www.youtube.com/watch?v=lqq_lcbajcc"
  - "AIEF2025 - Design like Karpathy is watching — Zeke Sikelianos, Replicate - https://www.youtube.com/watch?v=huQPkrwVWwc"
  - "AIEF2025 - Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments - Harald Kirshner, - https://www.youtube.com/watch?v=i1uPAN6uW4s"
  - "AIEF2025 - Vibe Coding with Confidence — Itamar Friedman, Qodo - https://www.youtube.com/watch?v=n991Yxo1aOI"
  - "AIEF2025 - Beyond the Prototype: Using AI to Write High-Quality Code - Josh Albrecht, Imbue - https://www.youtube.com/watch?v=x_1EumTaXeE"
provenance: { extracted: 0.75, inferred: 0.20, ambiguous: 0.05 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-05
tier: supporting
created: 2026-07-05T00:30:00Z
updated: 2026-07-05
relationships:
  - target: "[[concepts/vibe-engineering|Vibe Engineering]]"
    type: related_to
  - target: "[[concepts/agent-development-lifecycle|Agent Development Lifecycle]]"
    type: extends
  - target: "[[concepts/vibe-coding-as-agentic-ai|Vibe Coding as Agentic AI]]"
    type: related_to
  - target: "[[concepts/menugen|Menugen]]"
    type: related_to
  - target: "[[concepts/yolo-structured-spectrum-vibe-coding|YOLO, Structured, Spec-Driven Spectrum of Vibe Coding]]"
    type: relates-to-spectrum
  - target: "[[concepts/agent-driven-development|Agent-Driven Development]]"
    type: contrasts-with
  - target: "[[entities/eno-reyes|Eno Reyes]]"
    type: discussed-by
---

## Vibe Coding

Vibe coding is a development methodology where the programmer uses AI to rapidly prototype without upfront planning or architectural design. Instead of spending time designing the system first, the developer describes what they want in natural language to an AI and iterates on the generated code.

### The Method

The approach follows a pattern of waves:

1. **Rapid prototyping** — Tell the AI what you want, generate working code immediately. The key insight is "you don't know what you don't know" — upfront planning is often wasted effort because requirements evolve.
2. **Waves of iteration** — Generate code, see what works, discard what doesn't, generate again. Throwing away AI-generated code "feels great" compared to discarding code you poured your heart into.
3. **Amplitude decreases** — Each wave produces less waste. Eventually the code stabilizes and the "amplitude of the waste" becomes small.
4. **Traditional engineering kicks in** — Once the design is stable, switch to old-school practices: testing, refactoring, type safety.

### Why It Works

The core advantage is speed of exploration. When building something novel (especially with AI), the optimal architecture is unknown at the start. Vibe coding lets you discover the right design through working prototypes rather than theoretical planning.

[[entities/kitze|Kitze]] and [[entities/sizzy|Sizzy]] presented a related talk at AIEF2025 on "From Vibe Coding to Vibe Engineering" — the transition from rapid prototyping to structured development.

### Karpathy's Vibe Coding

Andre Karpathy coined the term "vibe coding" and describes it as a development approach where you use AI to rapidly prototype. He built **Menugen** as a vibe coding experiment at a hackathon — a web app that takes photos of restaurant menus and generates image representations of the menu contents. He described building it locally as "an exhilarating and fun escapade" but deploying it as "a bit of a painful slog."

Karpathy subscribes to the idea that "the hottest new programming language is English" — a provocative framing of vibe coding's core premise that natural language descriptions can replace traditional coding.

### Caveats

Not all code should be vibe-coded. Some components (like audio processing libraries from OpenAI) may be better left untouched even if poorly written, if they work and aren't painful to maintain. The decision to refactor should consider badness × pain × ease.

### Eno Reyes' Critique: Vibe Coding Isn't Enough for Production

[[entities/eno-reyes|Eno Reyes]] of [[entities/factory|Factory]] argues that "vibe coding won't solve hard problems" like "a legacy Java 7 app that runs 5% of the world's global bank transactions." Production software requires real software engineering — agents are "climbing gear" for scaling production software, not a replacement for engineering rigor.^[extracted]

Reyes contrasts the Twitter-narrative of "vibe coding your way to anything" with the reality of enterprise software: building production-grade systems requires more than natural language prompts. Agents should be viewed as tools that augment human expertise, not replace it.^[inferred]

### Vibe Coding as Agentic AI

Donald Hruska (Retool) characterized vibe coding as "the punk rock of software," drawing an analogy to punk rock's simplicity enabling anyone with something to say to make music. He sees it as a powerful proof-of-concept for agentic AI but argues the same principle should apply to business problems beyond code. ^[extracted]

Vibe coding works because code is testable, has semantics, and is easy to validate — making it the first domain where agentic AI has proven productive. The question is whether the same principle can apply to any problem in business, requiring general-purpose agents with proper guardrails. ^[inferred]

### Model Capability Context

SWE Bench Verified provides a key signal of model capability driving vibe coding adoption: GPT-4.1 is up 21 percentage points from GPT-4.0, and Gemini 2.5 Pro is up another 9 percentage points from GPT-4.1. These gains reflect massive investment in coding-specific capabilities by LLM providers. ^[extracted]

### The False Positive Problem in Vibe Coding

A significant risk of vibe coding is that AI agents generate excessive false positive bug reports, creating alert fatigue and eroding developer trust. In Bismuth's SM100 benchmark, Cursor had a 97% false positive rate across 100+ repos and 1,200+ issues. ^[extracted] When agents overrun codebases with unintended bugs they can't actually find — and then can't fix — developers lose trust and real bugs go to production. ^[extracted]

Mitigations include [[concepts/bug-focused-rules|bug-focused rules]] (structured rules files with explicit bug class naming and OWASP context), [[concepts/context-management-for-agents|context management]] (feeding diffs, protecting key files, building component inventories), and using [[concepts/thinking-models-for-bug-detection|thinking models]] which significantly outperform non-thinking models at bug detection. ^[extracted]

### The Vibe Coding Spectrum

Harald Kirshner (Microsoft) presented at AIEF2025 a maturity spectrum for vibe coding, from creative chaos to enterprise-grade reliability. See [[concepts/yolo-structured-spectrum-vibe-coding|YOLO, Structured, Spec-Driven Spectrum of Vibe Coding]] for the full framework. The three stages are:

1. **YOLO Vibes** — Creative exploration, auto-approve, no code review, rapid iteration. For prototyping, learning, and building AI intuition.
2. **Structured Vibes** — Template-based guardrails, consistent tech stack, Copilot Instructions, custom MCP tools. Enterprise-ready.
3. **Spec-Driven Vibes** — Scales to large codebases, team-wide velocity, generated code fits existing architecture. The enterprise end goal.

### Karpathy's Rethink of Vibe Coding

Itamar Friedman (Qodo) highlighted Andre Karpathy's own rethinking of vibe coding as evidence that the field is maturing. Karpathy has contrasted "code I actually and professionally care about" (maintainable, quality code) with "vibe code" — acknowledging that vibe coding alone doesn't produce production-grade software. This self-critique from the person who coined the term carries significant weight in the developer community. ^[extracted]

### Enterprise vs Noob: Two Definitions of "End-to-End"

Friedman differentiated between two developer segments, each with different definitions of "end-to-end" AI coding:

- **Noobs / casual developers:** End-to-end means "prompt and get a fully managed software" — building simple games, PoVs, side projects. Vibe coding works well here because the stakes are low. ^[extracted]
- **Enterprise developers:** End-to-end means "reliable, versatile workflows" across the SDLC — not just generating code, but testing it, reviewing it, fixing bugs, and refactoring features. This requires more than vibe coding. ^[extracted]

### CLI as Gen 3.0 Interface

Friedman framed the evolution of AI coding tools as three generations: Gen 1.0 (autocomplete in IDEs), Gen 2.0 (chat and agentic chat), and Gen 3.0 (CLI-based end-to-end workflows). The CLI is positioned as the defining interface of Gen 3.0 — enabling agents to execute complete, end-to-end flows that span multiple tools and environments, something IDE-only tools cannot do as easily. ^[extracted]

### The Vibe Coding Gap: Prototype vs Production

Josh Albrecht (Imbue) formalizes the central tension in vibe coding at AIEF2025: the gap between AI-generated prototype code and code safe to ship to production. He describes the current state as an awkward binary — manually review every line of AI-generated diff, or blindly merge and hope for the best. Neither is satisfactory. ^[extracted]

Albrecht proposes a third option: using another AI system to evaluate the generated code for specific problem classes (race conditions, leaked API keys, architectural violations). This "AI-to-AI verification" approach builds trust through automated, systematic evaluation rather than manual inspection. ^[extracted]

His framework for bridging this gap includes four prevention strategies (learning, planning, spec-first, style guide enforcement) and three detection strategies (linters, tests, LLM review), implemented in [[entities/sculptor|Sculptor]], Imbue's experimental coding agent environment. ^[extracted]

This formalizes what many vibe coders experience intuitively: vibe coding produces working prototypes, but the transition to production-grade code requires structured processes that go beyond natural language prompting. ^[inferred]
