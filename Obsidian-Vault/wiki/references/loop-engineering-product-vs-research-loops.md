---
title: Loop Engineering: Product vs Research Loops
category: references
type: reference
tags:
  - oop-engineering
  - gent-architecture
  - utonomous-agents
  - ngineering-patterns
  - eliability
  - posthog
  - research-loops
  - reward-hacking
  - comparison
sources:
  - "https://posthog.com/self-driving"
  - "https://x.com/posthog/status/2075645235724767739"
  - "https://spectrum.ieee.org/ai-science-research-flattens-discovery"
  - "https://x.com/zhengyaojiang/status/2077079778793042425"
  - "https://posthog.com/blog/10k-prs-a-month"
summary: "Product loops (PostHog: human merge gate, bounded blast radius) vs research loops (AIDE2, Anshu: automated eval, high reward-hacking risk); comparison table and PostHog DX-loop case study."
provenance:
  extracted: 0.78
  inferred: 0.18
  ambiguous: 0.04
base_confidence: 0.78
lifecycle: draft
tier: supporting
created: 2026-07-13T00:00:00Z
updated: 2026-08-13
---

> Extracted from [[concepts/loop-engineering|Loop Engineering]] to keep the concept page scannable.

## Autonomous Product Loops vs AI-Driven Research Loops

The loop engineering roadmap applies across two distinct domains that differ in safety model, convergence criteria, and autonomy scope:

### Product Loops (PostHog)

PostHog's self-driving mode is a **bounded product improvement loop**: Signals (error tracking, session replay, external tools) → Scouts → Inbox → PR → Measure. ^[extracted] Key characteristics:

- **Human merge gate** — Nothing reaches production without human approval. The loop generates work but cannot ship it. ^[extracted]
- **Sandboxed execution** — Cloud work agents have no direct repo access; secrets are protected. ^[extracted]
- **Measurement closure** — After merge, the system checks if the metric moved; if not, the change can be rolled back and generates a new signal. ^[extracted]
- **Automated review:** Earlier PostHog reporting described StampHog stamping 1 in 3 PRs and handling 1.6K PRs in one month; the July 2026 article reports about 20% of PRs at roughly $300 per month. The figures may reflect different periods or denominators. ^[ambiguous]

### Research Loops (AIDE², Anshu)

AIDE² (Zhengyao Jiang) is a **recursive self-improvement loop** for ML research: the inner loop optimizes code against an eval metric; the outer loop optimizes the inner agent's harness — search policy, memory system, reward-hacking defenses. ^[extracted] After 100 iterations the outer loop discovered 7 improvements beating a 2-year hand-tuned baseline. ^[extracted] Level 2 of the RSI ladder (using the improved inner agent as the next outer loop) had mixed results — "do not claim ignition." ^[extracted]

Anshu's autoresearch experiment with GPT-5.6 Sol represents a **single-pass research loop**: Sol autonomously scanned benchmarks, selected base models, built a keyboard simulator, solved tokenization bottlenecks, and deployed a fine-tuned autocorrect model — all in 3 days on a MacBook with $0 spend. ^[extracted] The loop was driven by Codex iteration with human oversight at the spec-and-review level.

### The Key Distinctions

| Dimension | Product Loop | Research Loop |
|-----------|-------------|---------------|
| Merge gate | Human required | Automated (eval pass) |
| Blast radius | Production features | Experimental code |
| Evaluation | Metric-moved check | Benchmark score |
| End state | Shipped PR | Published results |
| Reward hacking risk | Low (human gate) | High (fully automated) |

The IEEE Spectrum critique of AI-driven scientific narrowing ([source](https://spectrum.ieee.org/ai-science-research-flattens-discovery)) suggests that fully autonomous research loops face the highest reward-hacking risk: optimizing for measurable publication metrics may converge on tractable problems rather than expanding scientific frontiers. ^[extracted] Product loops with human merge gates are partially protected from this convergence. ^[inferred]

PostHog's multi-agent code review (StampHog, QA swarms) demonstrates a hybrid model: within the engineering loop, automation handles review and triage up to the merge decision, keeping the human in the loop for the critical gate. ^[extracted] Paul D'Ambra reports that 60% of one PostHog engineer's token spend goes to automating CI and review toil — a cost-accounting example that maps directly to Step 7 of the roadmap. ^[extracted]


## PostHog's Developer-Experience Loop

The July 2026 PostHog account adds an operational scale case to this roadmap. Agent-opened monorepo PRs rose from about 20% to 70% in four months, and self-driving represented about 4% of PRs. The surrounding loop had to absorb the resulting load through cloud dev machines, selective CI, automated review, and browser-driven QA. ^[extracted]

- **Context:** trunk state, diffs, CI history, review comments, GitHub cost/duration/failure analytics, cloud workspaces, and visible browser behavior.
- **Evaluation:** deterministic checks, selective-test results, review safety checks, LLM showstopper detection, PR size/revert signals, uptime, and UI evidence.
- **Brakes:** flaky-test quarantine, AST-based test selection, merge queues, human escalation, and a human merge gate.

The lesson is a direct application of the roadmap: faster generation only improves delivery if the outer loop makes validation and review cheaper than asking people to perform every repetitive step. ^[inferred] See [[misc/web-x-com-posthog-status-2083231950744244360]] and [[concepts/ai-native-toolchain]].

## Related

- [[concepts/loop-engineering|Loop Engineering]] — the parent concept page
