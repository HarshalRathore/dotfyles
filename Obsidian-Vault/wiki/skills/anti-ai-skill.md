---
title: Anti-AI Skill
category: skills
tags: [claude-code, ai-detection, ai-writing, skill]
aliases: [anti-ai, /anti-ai]
sources:
  - "https://x.com/i/status/2080171634103840976"
  - "https://www.dropbox.com/t/fORTSF4grrSCzrMN"
summary: "Ruben Hassid's Claude Code 'anti-ai' skill: rewrites AI text to pass Pangram-style detectors (mode router, discourse fracture); shipped as a password-protected Dropbox zip."
provenance:
  extracted: 0.72
  inferred: 0.18
  ambiguous: 0.10
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: "2026-08-14"
tier: supporting
created: "2026-08-14T00:00:00Z"
updated: "2026-08-14T00:00:00Z"
relationships:
  - target: "[[concepts/ai-writing-tells]]"
    type: implements
  - target: "[[references/how-to-bypass-ai-detectors]]"
    type: derived_from
  - target: "[[entities/ruben-hassid]]"
    type: related_to
---

# Anti-AI Skill

**Anti-AI** is a custom Claude Code skill by [[entities/ruben-hassid|Ruben Hassid]] that rewrites AI-generated text "so it passes as human — to human readers AND to statistical AI detectors (Pangram etc.)". Described from screenshots and the article's account; the skill itself is distributed as a password-protected Dropbox zip. ^[extracted]

## Mechanics (as documented in the source)

- **STEP 0 mode router (mandatory):** if the user mentions a detector (Pangram, GPTZero, Turnitin, "AI detection", "pass as human", "not flagged") — or doesn't say and the text is personal/social/newsletter — use **DETECTOR mode** (default); if the user supplies a rough draft in their own words, use DETECTOR mode with the **interleave protocol** (the reliable variant, "the robust path for anything over ~160 words"). ^[extracted]
- **Discourse fracture** — empirically validated recipes for breaking AI's uniform discourse rhythm (the structural layer of [[concepts/ai-writing-tells]]). ^[extracted]
- **"Write worse"** — the skill's strangest instruction: "dwell, repeat, fixate, leave arguments unmade", with a 12-point self-verify checklist with hard counts; a polished "human-sounding" rewrite is defined as a *failure* in detector mode. ^[extracted]
- Evidence appendix: 4/4 hand passes + 1/1 fresh-session pass + A/B tests, dated, plus a companion tells reference. ^[extracted]

## Observed results (from the article's screenshots)

- A 144-word stream-of-consciousness rewrite (Sephora loyalty points, lowercase, run-ons: "twelve hundred!!", "since when??", "maam") → Pangram: **100% Human Written, Confidence High**. ^[extracted]
- The 100-word "Ruben comes from the Hebrew" rewrite → Pangram: still "AI Generated 100%" but with **Confidence Low** — until a single em dash → colon edit flipped it to **100% Human Written**. ^[extracted]
- Development cost: $34.44 of Claude Code credits over ~3 hours. ^[extracted]

## Distribution

Password-protected Dropbox transfer (https://www.dropbox.com/t/fORTSF4grrSCzrMN, password `RUBEN-HOWTOAI`, "Ruben Hassid sent 1 item", expires 2027-04-11). Install via Claude's Skills → Add → Upload a skill. ^[extracted] The archive's exact contents were not inspected during ingest (password-gated, anonymous page shows no filename). ^[ambiguous]

## Ethics note (recorded, not adjudicated)

The skill exists to make text pass statistical detectors — the deception dimension [[entities/chris-best|Chris Best]] calls "Claudefishing". The article's own framing is that detectors are unreliable ([[concepts/ai-slop|detection limits]]) and that the skill targets statistical tools, while its style guidance overlaps heavily with plain good writing advice. This page documents the technique neutrally as published. ^[inferred]

## Related

- [[references/how-to-bypass-ai-detectors]] — the article that documents it
- [[concepts/ai-writing-tells]] — the catalog the skill operationalizes
- [[concepts/ai-slop]] — the slop war context
- [[entities/pangram]] — the detector it was tested against
