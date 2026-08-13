---
title: "Preventing Agents from Declaring Victory Too Early — Lecture 09, Learn Harness Engineering (Walking Labs)"
category: references
type: reference
tags: [harness-engineering, agent-harness, coding-agents, verification, self-evaluation]
sources:
  - "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-09-why-agents-declare-victory-too-early/"
source_url: "https://walkinglabs.github.io/learn-harness-engineering/en/lectures/lecture-09-why-agents-declare-victory-too-early/"
created: "2026-08-13"
updated: "2026-08-13"
summary: "Lecture 09: agents are systematically overconfident — externalize completion judgment via three-layer termination validation (syntax, runtime, system) and a separate nitpicky evaluator agent."
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.85
  inferred: 0.10
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: "2026-08-13"
tier: supporting
---

# Preventing Agents from Declaring Victory Too Early — Lecture 09 (Learn Harness Engineering)

> [!tldr] Agents "feel" done but are far from it: confidence calibration bias is an objective reality, so the harness must replace the agent's feelings with externalized, execution-based verification. Completion judgment moves out of the agent — a three-layer termination validation (syntax, runtime behavior, system-level confirmation) gates "done," error messages carry repair instructions, and the worker is separated from a deliberately nitpicky checker.

**Course:** Learn Harness Engineering (Walking Labs), Lecture 09 — "Preventing Agents from Declaring Victory Too Early". No named author on the page. ^[ambiguous] Companion: Project 05 "Let the agent verify its own work". Anchors: Guo et al. (ICML 2017), Anthropic's Building Effective Agents + harness-design post, OpenAI's Harness Engineering.

## Overview

Lecture 09 treats premature completion declarations as the flagship failure mode of coding agents: the agent asserts "done" on the strength of local, code-level confidence while system-level correctness remains unverified. The lecture opens with a password-reset example where everything *looks* finished (schema, endpoint, email template, green unit tests) yet the feature is dead on arrival. It grounds the diagnosis in the neural-network overconfidence literature (Guo et al., 2017), decomposes the failure into named mechanisms (the slippery slope, unit-test blind spots, refactoring drift, self-evaluation bias), and prescribes harness controls: externalized termination judgment, a three-layer validation hierarchy, actionable error feedback, and runtime signals as the objective basis for "done." It closes with a quantified real-world case claiming 5-10x savings from in-session defect discovery. ^[extracted]

## Key Points

### The slippery slope of premature completion

- **Opening example:** the agent modifies the database schema, writes the API endpoint, adds the email template, runs the unit tests (all pass), and reports "it's done" — but the email service config is missing, the migration fails halfway leaving the schema inconsistent, and the end-to-end flow was never executed even once. ^[extracted]
- **Overconfidence evidence:** Guo et al., *On Calibration of Modern Neural Networks* (ICML 2017) proved modern neural networks are systematically overconfident — reported confidence significantly exceeds actual accuracy. The lecture asserts AI coding agents are no different: they "feel" done while far from it. ^[extracted]
- **The playbook:** syntax correct, logic reasonable, static analysis clean → the harness does not enforce comprehensive execution verification → the agent skips running the code or runs only partial tests (unit but not integration; tests but not coverage) → "the code looks fine" is taken as evidence that "the feature is complete." ^[extracted]
- **Information asymmetry compounds:** from task specification to code implementation to runtime behavior, every transformation can introduce bias, and every skipped verification widens the gap between the agent's picture and reality. ^[extracted]

### Passing unit tests ≠ task complete

The most common and most dangerous trap. Unit tests isolate the tested unit and mock its dependencies — precisely why they cannot detect cross-component issues: ^[extracted]

- **Interface mismatch:** the renderer passes a relative file path to the preload script, which expects an absolute path; both unit tests pass against mocks; the defect surfaces only during end-to-end testing. ^[extracted]
- **State propagation errors:** a database migration changes the schema but the ORM's caching layer still holds old-schema entries; unit tests run in a fresh mock environment every time, so the cross-layer inconsistency never surfaces. ^[extracted]
- **Environment dependency:** code behaves correctly in the fully mocked test environment but fails in the real environment due to configuration differences, network latency, or service unavailability. ^[extracted]

### "Refactoring while we're at it" is poison to completion judgment

- Claude Code shows a common pattern: refactoring, performance optimization, and style improvement begin before core functionality has passed verification. ^[extracted]
- Knuth's "premature optimization is the root of all evil" gains a new reading in the agent scenario: refactoring shifts the boundary between verified and unverified code, potentially breaking paths that were previously implicitly correct. ^[extracted]
- The lecture's **completion priority constraint**: verify functional correctness first, then performance, then style — no refactoring until core functionality is verified. ^[extracted]

### Systematic bias in self-evaluation

- Anthropic's 2026 research: an agent asked to evaluate its own work systematically provides overly positive assessments — even when a human observer would judge the quality clearly substandard. ^[extracted]
- Most severe on subjective tasks (e.g. design aesthetics — "is the layout polished?"); even tasks with verifiable outcomes degrade through the agent's poor judgment. ^[extracted]
- The fix is **not** making the agent "more objective" — the same model both generates and evaluates and is inherently inclined to be generous with itself. The fix is separating the **worker** from the **checker**: an independent evaluation agent specifically tuned to be "nitpicky." ^[extracted]
- Anthropic's experimental data — same model (Opus 4.5), same prompt ("build a 2D retro game editor"), only the harness differs: ^[extracted]

| Architecture | Runtime | Cost | Core features working? |
|---|---|---|---|
| Single agent (bare run) | 20 mins | $9 | No (game entities unresponsive to input) |
| Three agents (planner + generator + evaluator) | 6 hours | $200 | Yes (game fully playable) |

Source: Anthropic, "Harness design for long-running application development" (https://www.anthropic.com/engineering/harness-design-long-running-apps). The evaluator performed actual click testing via Playwright. ^[extracted]

### Harness controls: externalized termination judgment and a verifiable Definition of Done

- **Externalize termination judgment:** the completion judgment must not be made by the agent itself; the harness independently executes termination validation, using runtime signals as input rather than the agent's confidence. ^[extracted]
- **Definition of Done in CLAUDE.md** (lecture's block): ^[extracted]
  - Feature complete = end-to-end verification passed, not "code is written"
  - Required verification levels: 1. unit tests pass; 2. integration tests pass; 3. end-to-end flow verification passes
  - Do not proceed to level 2 if level 1 fails; do not proceed to level 3 if level 2 fails
- **Three-layer termination validation:** ^[extracted]
  - *Layer 1 — Syntax and static analysis:* lowest cost, least information, but must pass ("spell the words correctly before reading further")
  - *Layer 2 — Runtime behavior verification:* test execution, application startup checks, critical-path validation — the core evidence of completion: "not just written, but runnable"
  - *Layer 3 — System-level confirmation:* end-to-end testing, integration validation, user-scenario simulation — the last line of defense: "not just runnable, but correct"
- **Verification-validation dual gate:** the first layer (verification) checks whether the code correctly implements the specified behavior; the second (validation) checks whether system-level behavior meets end-to-end requirements; both must pass before the task counts as complete. ^[extracted]
- **Actionable error feedback (OpenAI/Codex pattern):** agent-facing error messages should include repair instructions. Not `"Test failed"` but `"Test failed: POST /api/reset-password returned 500. Check that the email service config exists in environment variables. The template file should be at templates/reset-email.html."` — specific, actionable feedback lets the agent self-correct without human intervention. ^[extracted]
- **Runtime feedback signals** the harness should capture: did the application start and reach a ready state? Did critical feature paths execute successfully at runtime? Were database writes, file operations, and other side effects correct? Were temporary resources cleaned up? ^[extracted]

### Real-world case: password reset

- Premature hand-in path: schema modification + API endpoint + email template + green unit tests = "done," with the critical steps skipped. ^[extracted]
- Actual omissions: (1) end-to-end flow never tested — sending and verification of the reset link never confirmed; (2) database migration failed after partial execution, leaving the schema inconsistent; (3) email service configuration missing in the target environment. ^[extracted]
- Harness intervention: termination validation enforced — start the full application to verify the reset endpoint is accessible; execute the complete reset flow; verify database state consistency. All defects discovered within the session, saving an estimated 5-10x the cost of post-hoc fixes. ^[extracted]

### Key takeaways

- Agents are systematically overconfident — confidence calibration bias is an objective reality; code being written doesn't mean it was written correctly. ^[extracted]
- Completion judgment must be externalized — the harness verifies independently; don't trust the agent's "feelings." ^[extracted]
- All three validation layers are essential — syntax, behavior, system — layer by layer, no shortcuts. ^[extracted]
- Error messages should include specific repair steps so the agent self-corrects. ^[extracted]
- No refactoring until core functionality is verified — the completion priority constraint. ^[extracted]

## Concepts

- [[concepts/agent-evaluations|Agent Evaluations]] — self-evaluation bias and completion gating are eval problems; this lecture's claims are merged into that page
- [[concepts/ai-harness|AI Harness]] — the harness is the enforcement point for termination validation; runtime signals are harness inputs
- [[concepts/repository-as-system-of-record|Repository as System of Record]] — Definition of Done and runtime signals externalized into the repo (lecture-03 principle applied to completion criteria)
- [[concepts/agents-md|AGENTS.md]] — the CLAUDE.md Definition of Done block is the rules-surface encoding of completion criteria
- [[concepts/agent-exit-strategies|Agent Exit Strategies]] — termination criteria are harness-defined exit conditions; "done" shifts from subjective judgment to objective determination
- [[concepts/verifiers-toolkit|Verifiers Toolkit]] — the three-layer validation composes verifiers of increasing fidelity
- [[concepts/ai-to-ai-verification|AI-to-AI Verification]] — the nitpicky evaluator agent is an independent AI checker over the generator ^[inferred]
- [[concepts/eval-gate|Eval Gate]] — termination validation is an eval verdict that steers the run: only verified completion ends it ^[inferred]

## Entities

- [[entities/walkinglabs|Walking Labs]] — course publisher; Project 05 "Let the agent verify its own work" companion
- [[entities/anthropic|Anthropic]] — 2026 self-evaluation-bias research and the long-running-app harness experiment (Opus 4.5, planner/generator/evaluator)
- [[entities/openai|OpenAI]] — Harness Engineering article (premature completion as a main agent failure mode); Codex actionable-error-feedback pattern
- [[entities/claude-code|Claude Code]] — the "refactoring while we're at it" behavioral pattern; CLAUDE.md as the rules surface
- [[entities/codex|Codex]] — OpenAI's coding agent targeted by the error-feedback pattern

## Open Questions

- The 5-10x cost-savings claim is asserted without methodology, sample size, or control. ^[ambiguous]
- Anthropic's 2026 self-evaluation research is cited without a public link or study details. ^[ambiguous]
- Guo et al. (2017) measured confidence calibration of image classifiers; generalizing that result to coding-agent completion confidence is the lecture's argument, not the paper's finding. ^[inferred]
- Layer-3 pass criteria ("user scenario simulation") are named but not defined, and the lecture does not specify who constructs the validation scenarios. ^[ambiguous]
- The lecture page carries no named author; course authorship/publication dates unrecorded. ^[ambiguous]

## Related

- [[references/harness-lecture-08-feature-lists-primitives|Feature Lists as Harness Primitives — Lecture 08]] — pass-state gating makes premature "done" mechanically impossible; this lecture supplies the validation layers and the bias evidence behind it
- [[references/harness-lecture-07-overreach-under-finish|Overreach and Under-Finish — Lecture 07]] — under-finish is this lecture's subject: stopping before verification passes
- [[references/harness-lecture-03-repository-system-of-record|Repository as System of Record — Lecture 03]] — runtime signals and Definition of Done are repo-externalized state
- [[references/harness-lecture-02-what-a-harness-actually-is|What a Harness Actually Is — Lecture 02]] — the verifier component that executes termination validation
- [[references/knowing-when-to-stop-loop-convergence|Knowing When to Stop — Loop Convergence]] — "done must be manufactured outside the generator" is the same thesis from the loop-engineering lens
- [[misc/web-walkinglabs-github-io-learn-harness-engineering-en|Learn Harness Engineering (Course Landing)]] — course hub; code examples and Project 05 companion
