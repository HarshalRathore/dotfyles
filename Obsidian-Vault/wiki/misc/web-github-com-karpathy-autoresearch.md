---
title: autoresearch — Autonomous pretraining research (Andrej Karpathy)
category: misc
tags:
- ai
- research
- automation
- llm-training
- pi-autoresearch
sources:
- '[[sources/autoresearch]]'
source_url: https://github.com/karpathy/autoresearch
created: 2026-07-01 00:20:00+00:00
updated: 2026-07-01 00:20:00+00:00
summary: 'Karpathy''s original autoresearch repo: an AI agent that autonomously modifies LLM training code, runs 5-minute experiments, and keeps/discards based on validation bits-per-byte — the canonical impl...'
affinity: {}
promotion_status: misc
stub: false
provenance:
  extracted: 0.85
  inferred: 0.13
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-01
tier: supporting
---

# autoresearch — Autonomous pretraining research (Andrej Karpathy)

> Andrej Karpathy, March 2026. MIT license.
> **Stars:** ~10k+ (popular repo)
> **Tech:** Python, PyTorch, NVIDIA GPU (H100 primary target + community forks for MacOS, Windows, AMD)

## Overview

Karpathy's autoresearch is the canonical implementation of the pattern covered in the PostHog blog. It's a deliberately minimal codebase where an AI agent (Claude/Codex) modifies a single file (`train.py`), runs 5-minute training experiments, and keeps or discards changes based on whether `val_bpb` (validation bits-per-byte) improved. The agent is instructed via `program.md` — a lightweight "skill" file that the human edits to guide the agent's research strategy.

The repo is designed for overnight autonomous runs: ~12 experiments/hour, ~100 experiments per night. The human wakes up to a log of results and hopefully a better model.

## Architecture

### Three files that matter

1. **`train.py`** — The single file the agent edits. Contains the full GPT model (12-layer, 768-dim, 6-head), Muon + AdamW optimizer, and training loop. Everything is fair game: architecture, hyperparameters, optimizer, batch size. The agent edits and commits this file each experiment. The model uses Flash Attention 3, RMSNorm, rotary embeddings, sliding window attention ("SSSL" pattern: short-short-short-long), and Value Embeddings (ResFormer-style residuals per head).

2. **`prepare.py`** — Fixed constants and one-time setup. Downloads training data, trains a BPE tokenizer (vocab size 32,768), defines the dataloader and evaluation harness. **Not modified by the agent** — read-only.

3. **`program.md`** — Agent instructions. The human programs this file to guide the agent's research direction. Read by the agent before starting. Covers setup, experimentation, output format, logging, and the experiment loop. Intentionally kept minimal as a baseline.

### Design choices

- **Single file to modify** — keeps scope manageable and diffs reviewable. The agent never touches `prepare.py` or adds dependencies.
- **Fixed 5-minute time budget** — experiments are directly comparable regardless of GPU platform. The tradeoff: results aren't comparable across different hardware.
- **Self-contained** — no distributed training, no complex configs. PyTorch + a few small packages.
- **val_bpb metric** — validation bits-per-byte, lower is better. Vocab-size-independent, so architectural changes are fairly compared.
- **Simplicity criterion** — all else equal, simpler is better. A 0.001 improvement that adds 20 hacky lines? Discard. A 0.001 improvement from deleting code? Keep.

### The experiment loop

```
LOOP FOREVER:
  1. Look at git state
  2. Modify train.py with an experimental idea
  3. git commit
  4. uv run train.py → run.log (5 min)
  5. Read val_bpb from log
  6. If crash, read stack trace, attempt fix
  7. Log to results.tsv (commit, val_bpb, memory, status, description) — NEVER commit this file
  8. If improved → keep (advance branch)
  9. If equal/worse → git reset back
```

### Output format

After each 5-minute run, the script prints: `val_bpb`, `training_seconds`, `total_seconds`, `peak_vram_mb`, `mfu_percent`, `total_tokens_M`, `num_steps`, `num_params_M`, `depth`.

## Concepts

- [[concepts/agent-loop]] — This repo is the canonical implementation of the agent loop pattern: propose → measure → keep/discard, with a fixed evaluation metric (val_bpb) and budget (5 min)
- [[concepts/ralph-coding-technique]] — Both use the same "one file to edit, commit each iteration" pattern; Ralph implements features, autoresearch optimizes training

## Entities

- [[entities/andrej-karpathy]] — Creator of this repo, named and popularized the autoresearch pattern

## Forks

- `miolini/autoresearch-macos` — MacOS
- `trevin-creator/autoresearch-mlx` — MacOS (MLX)
- `jsegov/autoresearch-win-rtx` — Windows
- `andyluo7/autoresearch` — AMD

## Open Questions

- How well does the pattern generalize beyond LLM pretraining to other optimization domains? The PostHog blog shows one adaptation (ClickHouse query optimization), but the tooling is specific to ML training.
- The experiment loop has no guardrails against the agent making itself worse intentionally — it relies entirely on the val_bpb metric and the simplicity criterion. Is this sufficient for long runs?

## Related

- [[misc/web-github-com-karpathy-autoresearch]] — PostHog's application of this pattern to ClickHouse query optimization
- [[misc/web-posthog-com-newsletter-loops]] — The newsletter on engineering loops references the performance autoresearcher pattern by name
