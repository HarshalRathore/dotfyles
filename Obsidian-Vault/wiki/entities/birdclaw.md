---
summary: Local-first Twitter/X archive and operator console. Stores tweets, DMs, likes, and bookmarks in local SQLite with a CLI and web UI. Fully offline-capable via archive import.
title: birdclaw
type: entity
created: 2026-07-02
updated: 2026-07-02
tags:
- tool
- twitter
- open-source
- sqlite
- privacy
sources:
- '[[entities/birdclaw]]'
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-02
tier: supporting
visibility: public
provenance:
  extracted: 0.75
  inferred: 0.25
  ambiguous: 0.0
aliases:
- BirdClaw
- birdclaw tool
category: entities
---

# birdclaw

birdclaw is a local-first Twitter/X archive and operator console by [[entities/peter-steinberger|Peter Steinberger (@steipete)]]. It stores all your Twitter data in local SQLite, provides a CLI and web UI for reading, searching, replying, and triaging content. MIT licensed, 1.5k stars, actively maintained.

## How it works

birdclaw operates in three modes, all **free** with no X.com subscription required:

1. **Archive import** — Download your X archive from `x.com/settings/download_your_data`, import it. No credentials needed, fully offline.
2. **Live sync via `bird`** — Uses browser session cookies from a logged-in X.com session (Safari/Chrome/Firefox). Free, just a normal X account.
3. **Live sync via `xurl`** — Uses the official X API via a free-tier X Developer account. No paid subscription needed.

### Transport tools

- **`bird`** (by same author) — Cookie-based reads/writes for surfaces where the official API is rate-limited. Reads `auth_token`/`ct0` from browser profiles.
- **`xurl`** (by X Dev Platform) — Official X API OAuth2 client. Needs a registered X Developer app (free tier).

## Features

- Local SQLite database (`~/.birdclaw/birdclaw.sqlite`) with FTS5 full-text search
- Archive import for tweets, likes, followers/following, profiles, and DMs
- Web UI (React + TanStack Start, localhost:3000): Home, Mentions, Likes, Bookmarks, DMs, Inbox, Blocks
- CLI: search, compose replies, DM, manage blocks/mutes, export JSON for agents
- Multi-account support in a single shared database
- Media cache with originals from CDN or archive extraction
- Git-friendly text backups with yearly tweet shards
- AI-ranked inbox (optional, via OpenAI API key)
- Blocklist/mutelist maintenance with batch import
- System / light / dark theme

## No X.com subscription required

birdclaw itself is **free and open source** (MIT). For live sync:
- `bird` transport needs only a regular logged-in X.com account
- `xurl` transport needs a free X Developer account
- Archive-only mode needs no credentials at all

The only optional paid component is OpenAI API key for AI inbox ranking.

## Architecture

```
archive zip / xurl / bird
         ↓
  transport adapters
         ↓
normalized domain mappers
         ↓
 canonical write pipeline
         ↓
SQLite + FTS5 + media cache
         ↓
CLI / web UI / agent JSON API
```

- Language: TypeScript (strict)
- Runtime: Node.js 25.8.1+
- Database: SQLite with `node:sqlite`
- UI: React + TanStack Start
- Effect TS for I/O-heavy internals

## Storage

Default root: `~/.birdclaw/`
- `birdclaw.sqlite` — canonical local database
- `media/` — original media and avatar cache
- `config.json` — user configuration
- `backup/` — optional Git-backed text shards

## Requirements

- Node.js 25.8.1+ or Node 26.x
- macOS recommended for archive autodiscovery (Spotlight), Linux works for everything else
- Optional: `xurl`, `bird`, `OPENAI_API_KEY`

## Sources

- [birdclaw GitHub](https://github.com/steipete/birdclaw) — README, docs, MIT license
