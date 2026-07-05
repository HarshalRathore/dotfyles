---
summary: "CLI tool and Chrome Side Panel for extracting clean text from URLs, files, and media, then summarizing via any LLM provider. Free, open source, MIT licensed."
title: "summarize"
type: entity
created: 2026-07-02
updated: 2026-07-02
tags:
  - tool
  - cli
  - llm
  - open-source
  - summarization
aliases:
  - summarize CLI
  - "@steipete/summarize"
  - summarize.sh
sources:
  - "[[sources/summarize]]"
  - "[[sources/summarize-sh-website]]"
base_confidence: 0.75
lifecycle: draft
lifecycle_changed: 2026-07-02
tier: supporting
visibility: public
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
relationships:
  - target: "[[entities/peter-steinberger]]"
    type: created_by
---

# summarize

summarize is a fast CLI and Chrome Side Panel by [[entities/peter-steinberger|Peter Steinberger (@steipete)]] for clean extraction and sharp summaries of web pages, files, YouTube videos, and podcasts. It runs a real pipeline — Readability for articles, `markitdown` for files, transcript fetchers and Whisper for media, Firecrawl fallback when sites fight back — then hands the result to whichever LLM provider you've wired up. MIT licensed, 6.3k stars, actively maintained.

## How it works

1. **Point it at something** — a URL, local file (PDF, image, audio, video), YouTube link, podcast, or stdin
2. **Extraction** — the pipeline extracts clean text: Readability (articles), markitdown (files), transcript fetchers/Whisper (media), Firecrawl fallback
3. **Summarization** — sends extracted text to your chosen LLM provider
4. **Output** — streamed Markdown to terminal, plain text for pipes, or JSON envelope with metrics

## Features

- **Provider-agnostic LLM** — xAI, OpenAI, Google, Anthropic, NVIDIA, OpenRouter, GitHub Copilot, Ollama (local), plus local CLI providers (Claude Code, Codex, Gemini, OpenClaw, etc.)
- **Media-aware** — YouTube and podcast pages prefer published transcripts, then `yt-dlp` + Whisper, then optional ONNX models (Parakeet/Canary)
- **Slides for video** — `--slides` extracts scene-change keyframes, renders inline (Kitty/iTerm) or saves to disk
- **Streaming output** — ANSI Markdown for terminals, plain text for pipes, JSON envelope for scripts
- **`--extract` mode** — skip the LLM, print cleaned content only (useful in pipes)
- **Chrome Side Panel** — pairs with local daemon for streaming summaries from the active tab
- **Firefox Sidebar** — via the same extension built for Chrome
- **Caching** — optional content cache (512 MB default) to avoid re-extracting unchanged pages
- **Config file** — `~/.summarize/config.json` for defaults (model, output length, cache settings)

## Install

| Method | Command |
|---|---|
| npm (global) | `npm i -g @steipete/summarize` |
| Homebrew | `brew install summarize` |
| npx (no install) | `npx -y @steipete/summarize "https://..."` |
| Library | `npm i @steipete/summarize-core` |

Requires Node 24+.

## Optional media dependencies

| Tool | Purpose | Linux install |
|---|---|---|
| `ffmpeg` | Faster extraction, broader codecs | `sudo apt install ffmpeg` |
| `yt-dlp` | YouTube slide extraction, remote media | `sudo apt install yt-dlp` |
| `tesseract` | OCR for `--slides-ocr` | `sudo apt install tesseract-ocr` |
| `whisper.cpp` | Local audio transcription | Build from source or binary |

## Basic usage

```
# Web page (default model, streamed Markdown)
summarize "https://example.com/article"

# YouTube — captions first, yt-dlp + Whisper as fallback
summarize "https://youtu.be/I845O57ZSy4"

# Local file (PDF, image, audio, video)
summarize ./report.pdf --model openai/gpt-5-mini

# Extract only (no LLM call) — pipe-friendly
summarize "https://example.com" --extract --format md | wc -w

# Clipboard / stdin
pbpaste | summarize -

# JSON envelope with detailed metrics
summarize "https://example.com" --json --metrics detailed

# Video slides (keyframe extraction)
summarize "https://youtu.be/I845O57ZSy4" --slides
```

## Configuration

Save defaults in `~/.summarize/config.json`:

```json
{
  "model": "auto",
  "output": { "length": "long", "language": "auto" },
  "models": { "free": ["openai/gpt-oss-120b:free", "z-ai/glm-4.6:free"] },
  "cache": { "enabled": true, "maxMb": 512 }
}
```

## Free usage path

The tool itself is free and MIT licensed. To use it without paying:
- **OpenRouter free tier** — set `OPENROUTER_API_KEY`, run `summarize refresh-free`, set model=free
- **Ollama (local)** — run entirely local, no API key needed, zero cost
- **Gemini Nano (Chrome)** — direct mode in the Chrome extension uses on-device Gemini Nano

## Free & open source

summarize is **free, open source (MIT)**, and provider-agnostic. LLM API keys are optional — use Ollama for fully local operation or OpenRouter free tier for zero-cost cloud inference. Cloud transcription providers (Groq, AssemblyAI, FAL) have their own free tiers.

## Architecture

```
URL / file / YouTube / podcast / stdin
              ↓
  Pipeline router (Readability / markitdown / Firecrawl / transcript fetcher / Whisper)
              ↓
         Clean text
              ↓
  LLM provider (auto / local / cloud / configured)
              ↓
  Streamed Markdown / plain text / JSON envelope
```

## Project

- **Website:** [summarize.sh](https://summarize.sh/)
- **Source:** [github.com/steipete/summarize](https://github.com/steipete/summarize) — 6.3k stars, MIT license
- **Chrome extension:** [Chrome Web Store](https://chromewebstore.google.com/detail/summarize/cejgnmmhbbpdmjnfppjdfkocebngehfg)
- **Daemon:** Optional local daemon (`summarize daemon install`) for CLI model fallbacks, shared caches, native ffmpeg, OCR. Autostarts via systemd (Linux), launchd (macOS), Scheduled Task (Windows).

## Sources

- [summarize.sh](https://summarize.sh/) — official website and docs
- [GitHub — steipete/summarize](https://github.com/steipete/summarize) — source code, README, MIT license
