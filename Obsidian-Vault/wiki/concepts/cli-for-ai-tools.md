---
title: CLI for AI Tools
category: concepts
tags:
- cli
- developer-experience
- model-management
- local-ai
sources:
- 'AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls'
summary: Command-line interfaces as the primary developer tool for discovering, running, and evaluating AI models on-device — offering model browsing, interactive inference, and performance metrics in a ter...
provenance:
  extracted: 0.7
  inferred: 0.25
  ambiguous: 0.05
base_confidence: 0.6
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/local-model-management|Local Model Management]]'
  type: interfaces_with
- target: '[[concepts/developer-experience|Developer Experience]]'
  type: improves
---

# CLI for AI Tools

**CLI for AI tools** refers to the use of command-line interfaces as the primary developer interaction surface for managing, running, and evaluating AI models — particularly in on-device and local AI contexts. ^[extracted]

## The Foundry Local CLI Pattern

[[entities/foundry-local|Foundry Local]] demonstrates a clean CLI pattern for AI model management: ^[extracted]

- **`foundry model list`** — browse available models and their hardware-optimized variants
- **`foundry cache list`** — view locally installed/cached models
- **`foundry model run <model>`** — launch interactive inference session
- **`foundry model run <model> --verbose`** — run with performance metrics (tokens/sec, latency)

Installation is platform-native: Winget on Windows, Homebrew on macOS. ^[extracted]

## Why CLI for AI?

The CLI pattern works well for AI tooling because: ^[inferred]

1. **Model exploration is iterative** — developers run models, compare outputs, check metrics, and switch models frequently
2. **Metrics are text-based** — tokens/second, latency, memory usage are naturally displayed in terminal output
3. **Integration with development workflows** — CLI tools compose with pipes, scripts, and automation
4. **Cross-platform consistency** — same commands work on Windows, macOS, Linux

## Installation Distribution

AI tools are distributed through platform package managers: ^[extracted]

- **Windows:** Winget (Windows Package Manager)
- **macOS:** Homebrew
- **Linux:** apt, snap, or direct binaries

This mirrors how developers install other development tools, reducing friction. ^[inferred]

## Related

- [[concepts/local-model-management|Local Model Management]] — the domain the CLI serves
- [[concepts/developer-experience|Developer Experience]] — CLI as a DX pattern
- [[entities/foundry-local|Foundry Local]] — example of CLI-based AI tooling

## Sources

- AIEF2025 - Foundry Local: Cutting-Edge AI experiences on device with ONNX Runtime/Olive — Emma Ning, Microsoft - https://www.youtube.com/watch?v=l614N5W60ls
