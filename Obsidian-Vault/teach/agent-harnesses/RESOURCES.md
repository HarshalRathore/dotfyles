# Agent Harnesses Resources

## Knowledge

- [PostHog: "Why we're bullish on loops" — Ian Vanagas](https://posthog.com/newsletter/loops)
  Foundational overview of engineering loops: four requirements, concrete examples, why now (6x improvement in long-running agent capacity). Use for: the four-requirement framework, industry context, self-driving products vision.

- [PostHog: "What if your product built itself?" — Karpathy / PostHog team](https://posthog.com/blog/what-if-your-product-built-itself)
  Concrete production deployment of the agent loop. Signals as goal, grouped reports as context, research agent + PR author as agent, CI green as evaluation. Use for: understanding the self-driving pipeline end-to-end.

- [PostHog: "Karpathy autoresearch" — ClickHouse bug fix](https://posthog.com/blog/karpathy-autoresearch-query)
  Optimization-focused loop applied to a 3-year-old bug. Benchmark → propose → measure → keep/discard. Use for: the autoresearch pattern, evaluation-driven loops.

- [YouTube: "The Multi-Agent Architecture That Actually Ships" — Luke Alvoeiro, Factory (AI Engineer 2026)](https://www.youtube.com/watch?v=ow1we5PzK-o)
  Missions architecture: three-role system (orchestrator, workers, validators). Validation contracts, structured handoffs, serial execution, adversarial verification. 18m30s. Use for: multi-agent design, validation contracts, serial vs parallel.

- [ghuntley.com: "Ralph Wiggum as a 'Software Engineer'" — Geoffrey Huntley](https://ghuntley.com)
  Monolithic single-loop technique. `while :; do cat PROMPT.md | claude-code ; done`. Built CURSED programming language. Use for: monolithic philosophy, deterministic allocation, "signs not rewrites" tuning approach.

- [PostHog: "Stop AI Slop" — Cleo Lant](https://posthog.com/blog/stop-ai-slop)
  Evals guide for agent quality. LLM-as-judge, code-based Hog evals, sentiment analysis. Use for: evaluation design, the five concrete eval criteria, eval template patterns.

- [PostHog: "SQL Parser Rewrite" — Andy Maguire](https://posthog.com/blog/sql-parser)
  Engineering loops framework in practice. How PostHog's engineering team structures loops for complex codebase changes. Use for: practical loop patterns in existing codebases.

- [PostHog: "What is a Scout?" — Engineering loops](https://posthog.com/blog/what-is-a-scout)
  Scout agents within the looped framework. Use for: specialized agent roles within loops.

## Wisdom (Communities)

- [r/LocalLLaMA](https://reddit.com/r/LocalLLaMA)
  High-signal subreddit for agent architecture discussions. Use for: benchmark comparisons, real-world harness experiences.

- [AI Engineer Conference talks (YouTube)](https://www.youtube.com/@aiengineer)
  Luke Alvoeiro's Missions talk, Peter Steinberger's loops talk, Andrej Karpathy's autoresearch. Use for: deep dives into architecture decisions.

- [Andrew Ng's The Gradient newsletter](https://gradient.org)
  Occasional deep pieces on agentic systems. Use for: perspective on how loops fit into broader AI evolution.

## Gaps

- No single comprehensive reference on validation contract design — each team writes their own
- No systematic comparison of error recovery strategies across harnesses
- Limited documentation on what happens when validation fails repeatedly (3+ failures in a row)
- No open-source multi-agent harness with production deployment examples (Goose is coding-only, Missions is closed)
