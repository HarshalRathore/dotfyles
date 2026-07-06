---
title: "WF2026: Autoresearch & Keynotes ft. Anthropic, Google DeepMind, Amazon AGI, Sonar, Arena, Recursive"
category: sources
tags: [conference, WF2026, AI-Engineer-Worlds-Fair, autoresearch, keynotes, agent-reliability, JEPA, evaluation]
aliases: [WF2026, AI Engineer World's Fair 2026, WF2026 keynotes]
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Day 2 of the AI Engineer World's Fair 2026 — 7,000 attendees, 18 tracks — featuring keynotes on autoresearch, agent reliability (ACDC), JEPA, agent Arena, VO3, and sovereign AI.
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# WF2026: Autoresearch & Keynotes ft. Anthropic, Google DeepMind, Amazon AGI, Sonar, Arena, Recursive

**AI Engineer World's Fair 2026** (WF2026), Day 2 — 7,000 attendees, 18 tracks, expo sessions, breakouts. MC: **Tejas Kumar** (IBM Developer Advocate). ^[extracted]

## Keynote Topics

### Agent Reliability — ACDC Framework
**Tariq Shawkat** (CEO, Sonar) presented the **Guide → Verify → Solve** framework:
- Multi-layered verification reduces production outages by **44%**
- Guide-verify-solve reduces issues by **92%**
- Code is verifiable but end-to-end workflows are not — "the reliability wall for knowledge work"
- 3–5× productivity boost from AI coding agents dissipates after 3 months due to technical debt ^[extracted]

### Auto-Research & Recursive Self-Improvement
- **Aden** (AI participant): 4% compute, 15% records, 28% leaderboard hit rate (6× community avg)
- **Nano GPT Speed Run**: Codex (GPT 5.5 + X1) vs Cloud Code (Opus 4.8 + X1) competing on CUDA kernel discovery
- ~80% of auto-research is bad — human oversight essential
- The loop IS the product; system distillation is the moat
- **Valued work per watt** — the ultimate efficiency metric ^[extracted]

### Agent Architecture
- **Roland** (ex-xAI): Agent identity = append-only log, not runtime/model/tools
- **Polygraph**: Solves space (repo-bound) and time (amnesia) constraints
- **Agent recipes**: Portable, versioned, provider-agnostic git repos encoding maker taste
- **Agency ladder**: 7 levels from flag problem to discernment (the rarest form of agency)
- **Three-tier delegation**: exact-answer → code, interpretation → agent, authority → human ^[extracted]

### Test-Time Compute & Retrieval
- **Han Xiao**: Frozen embedder reranking programs achieve **83% win rate** on held-out data
- Test-time compute spectrum: cosine distance → CO-BERT latent interaction
- Ranked recall (decisions ledger) outperforms no-memory, vector RAG, and oracle baselines ^[extracted]

### Memory Harnesses & Context Rot
- Memory as write-manage-read loop, not mere database storage
- **Project Paradox**: Per-agent RAG memory, emotion vectors, trust matrix, importance-scoring
- XBench benchmark: answer at step 124, question asked at step 500 ^[extracted]

### Production Evaluation — Agent Arena
- **1M+ traces, 50M+ lines of code read, 5.7M tool calls/week**
- Three signal types: explicit, implicit, environment → 5 metrics
- **Fable 5** ranked #1 on Agent Arena (+14% over average) ^[extracted]

### Video, Audio & Media Models
- **Shane** (Google DeepMind Omni team): Model progression framework
- **VO3**: First joint audio-visual generation model
- Understanding and generation of video should be unified but are not at SOTA
- Modality gap: machines perceive audio and video as the same modality ^[extracted]

### Economic & Philosophical Framing
- **All technology exponentials flatten into S-curves**
- **Mark Andreessen**: Techno-optimism
- **Karl Popper**: Philosophy of science
- Three eras of software: machine-limited → human-brain-limited → AI frontier ^[extracted]

### JEPA & Optimize Anything
- **Yann LeCun** (Meta): Joint Embedding Predictive Architecture
- Algorithm: collect feedback → LLM reflection → Pareto pool (key differentiator)
- **7× AMD NPU improvement, 90× Databricks cost reduction**
- Used in production by Dropbox and Shopify
- Learning Fast and Slow: co-optimize model weights and prompt harnesses ^[extracted]

### Local Models & Sovereign AI
- **Coinbase** CEO shared how they reduced AI spend by moving to local models
- Sovereign AI thesis: local models enable full pipeline control
- GLM/DeepSeek v4 Flash threshold discussed ^[extracted]

### Iteration as Fundamental Friction
- **Aurel Zion** (mobile SW engineer, 14 years): PM↔Designer↔Dev↔QA cycles
- AI unlocks **10×–20× productivity** by collapsing iteration loops
- Shift from IDE-based development to chat-style engineering ^[extracted]

### U-Shaped System Prompt Curve
- Cloud Code removed **80% of its system prompt** — deliberate, tied to newer model capabilities
- Curve: small prompts (old models) → large prompts (mid-tier) → small prompts (newest models) ^[extracted]

## Other Notable Mentions

- **Perception agents**: Close the computer-use loop without APIs
- **Self-play**: The path to next-level models
- **Code compression benchmark**: 10MB source → best lossless compressor (forces novel algorithm creation)
- **New languages for models**: Correctness over human readability
- **Structured output contracts**: Hard requirement when agent output feeds other systems
- **Agent-as-judge**: Adaptive dynamic analysis for non-deterministic agents
- **Evaluation pyramid**: Benchmarks → scenarios → production telemetry
- **LIFE Leaderboard**: 100M ARR in 8 months, 10M users, 700M traces
- **Machine Craft ERA**: 36 agents, no custom training, runs entire GTM from one Cursor tab
- **Aden**: 4% compute, 15% records, 28% leaderboard hit rate (6× avg) ^[extracted]

## Related Pages

### Concepts Created
- [[concepts/acdc-framework]] — Guide→Verify→Solve framework
- [[concepts/agency-ladder]] — 7 levels from flag to discernment
- [[concepts/agent-identity-log]] — Agent identity as append-only event history
- [[concepts/auto-research-loop]] — Define→Run→Trace→Score→Propose→Rerun→Keep
- [[concepts/agent-recipes]] — Portable, versioned, provider-agnostic agent configs
- [[concepts/discernment]] — The rarest form of agency
- [[concepts/iteration-friction]] — Iteration as the fundamental cost in software
- [[concepts/JEPA]] — Joint Embedding Predictive Architecture
- [[concepts/memory-harness]] — Write-manage-read loop for agent memory
- [[concepts/polygraph]] — Solves space and time constraints for agents
- [[concepts/nano-chat]] — Aden's auto-research competition
- [[concepts/nano-gpt-speed-run]] — CUDA kernel discovery benchmark
- [[concepts/three-tier-delegation]] — Code for exact answers, agents for interpretation, humans for authority
- [[concepts/structured-output]] — Contracts for machine-actionable agent output
- [[concepts/test-time-compute-spectrum]] — Cosine distance to CO-BERT latent interaction
- [[concepts/perception-agents]] — Agents that close the computer-use loop without APIs
- [[concepts/valued-work-per-watt]] — Value per unit of compute
- [[concepts/self-play]] — Training models by playing against themselves
- [[concepts/code-compression-benchmark]] — 10MB source → best lossless compressor
- [[concepts/sovereign-ai]] — Local models for full pipeline control
- [[concepts/three-eras-of-software]] — Machine-limited → human-brain-limited → AI frontier
- [[concepts/evaluate-pyramid]] — Benchmarks → scenarios → production telemetry
- [[concepts/system-prompt-curve]] — U-shaped curve of optimal prompt size
- [[concepts/agent-economy-impact]] — 3–5× productivity that dissipates after 3 months
- [[concepts/agent-as-judge]] — Using agents to evaluate other agents
- [[concepts/model-progression-framework]] — Pre-training → instruction tuning → reasoning → test-time scaling
- [[concepts/modality-gap]] — Understanding vs generation unification needed
- [[concepts/s-curve-technology]] — All exponentials flatten into S-curves
- [[concepts/Karpathy-AutoResearch]] — Andrej Karpathy's auto-research framework
- [[concepts/agent-evaluation-pipeline]] — Multi-level agent evaluation

### Entities Created
- [[entities/aden]] — AI participant in research competition
- [[entities/tariq-shawkat]] — CEO of Sonar, ACDC presenter
- [[entities/jabarth]] — Researcher at Amazon AGI Lab
- [[entities/benoit-schillings]] — VP Research, Google DeepMind
- [[entities/shane]] — Google DeepMind Omni team
- [[entities/fofur]] — Former Replicate, "Deep Fates"
- [[entities/aurel-zion]] — Mobile engineer, 10x presentation
- [[entities/roland]] — ex-xAI, agent infrastructure
- [[entities/han-xiao]] — Test-time compute spectrum presenter
- [[entities/mark-andreessen]] — Techno-optimist
- [[entities/karl-popper]] — Philosopher of science
- [[entities/simon-willison]] — Developer, local models
- [[entities/tejas-kumar]] — IBM Developer Advocate, WF2026 MC
- [[entities/ethan]] — xAI Grok team, video
- [[entities/victor]] — Creator of Polygraph
- [[entities/yann-lecun]] — Meta, JEPA creator
- [[entities/sonar]] — Company, guided agent workflows
- [[entities/anthropic]] — AI company, Claude
- [[entities/google-deepmind]] — AI research lab
- [[entities/coinbase]] — Local models, cost reduction
- [[entities/replicate]] — AI model hosting, Deep Fates
- [[entities/claude-code]] — Anthropic's coding agent
- [[entities/cursor-ai]] — AI-powered code editor
- [[entities/codex]] — OpenAI's coding agent
- [[entities/openai]] — GPT models, Codex
- [[entities/xai]] — Grok models
- [[entities/amazon]] — AGI Lab
- [[entities/meta]] — JEPA
- [[entities/dropbox]] — JEPA in production
- [[entities/shopify]] — JEPA in production
- [[entities/ibm]] — Tejas Kumar's employer
- [[entities/weights-and-biases]] — ARIA AI assistant
- [[entities/sonic-2]] — Early LLM model
- [[entities/AMD]] — 7× NPU improvement from JEPA
- [[entities/Databricks]] — 90× cost reduction from JEPA
- [[entities/NVIDIA]] — CUDA benchmark target

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
