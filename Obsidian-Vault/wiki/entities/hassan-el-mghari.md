---
title: "Hassan El Mghari"
category: entities
tags: [person, developer-relations, open-source, ai-apps, together-ai, aief2025]
summary: Developer Relations lead at Together AI; builds open-source AI apps at a rate of ~1/month for 4 years, with some reaching 1M+ users.
sources: ["AIEF2025 - Using OSS models to build AI apps with millions of users — Hassan El Mghari - https://www.youtube.com/watch?v=gcseUQJ6Gbg"]
provenance: { extracted: 0.85, inferred: 0.15, ambiguous: 0.0 }
base_confidence: 0.9
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[entities/together-ai]]"
    type: works_for
  - target: "[[concepts/viral-side-project-pattern]]"
    type: related_to
---

# Hassan El Mghari

**Hassan El Mghari** is a developer relations lead at [[entities/together-ai|Together AI]] and a prolific builder of open-source AI applications. He has averaged approximately one AI app per month for the past four years, with several reaching millions of users.

## Build Philosophy

Hassan's approach to building AI apps centers on three principles:

1. **Idea generation through listening** — He originally found ideas by browsing Twitter for people asking "can someone build an app to do X," then directly solving those requests. This source-driven ideation led to apps like a glasses-picking tool and a git commit message writer (40,000+ installs).^{[extracted]}

2. **Keeping a running idea list** — He maintains a shortlist of his top five apps to build next, allowing new opportunities (like a breakthrough open-source image model) to interrupt the queue when they arise. This practice addresses the common problem of forgetting good ideas that strike at random times. ^[extracted]

3. **Radical simplicity in architecture** — His typical app follows a four-step pattern: user input → single AI model API call → store result → show to user. He attributes the success of many of his apps to this simplicity, which enables rapid iteration and fast validation. ^[extracted]

## Notable Apps

Hassan has built numerous open-source AI apps, with varying scale:

- **Text-to-app builder** — Generates React apps from natural language prompts; ~5M requests, ~1M apps built, ~1M+ users^{[extracted]}
- **Image generation app** — ~1M+ users, ~48M images generated^{[extracted]}
- **Git commit message writer** — Integrates with `git add` to auto-generate commit messages; ~40,000 installs^{[extracted]}
- **Napkins** — Takes screenshots of hand-drawn web app sketches and builds them; ~40,000 users^{[extracted]}
- **Resume-to-site builder** — Upload a resume, get a personal website^{[extracted]}
- **Glasses picker** — Uses Amazon API with AI to recommend products based on user requirements^{[extracted]}

## Tech Stack

Hassan's standard stack for building AI apps: Together AI (model inference), Next.js + TypeScript (full-stack), Neon (serverless Postgres), Clerk (authentication), Prisma (ORM), shadcn + Tailwind (styling), S3 (image storage), Plausible (web analytics), Helicone (LLM analytics), and Vercel (hosting). He emphasizes that mobile usage is surprisingly high across his apps, making mobile experience critical. ^[extracted]

## Open Source Commitment

Everything Hassan builds is open source, and several projects have attracted community contributors. He encourages others to explore his apps' code in their own time. ^[extracted]
