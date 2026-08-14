---
title: Pangram
category: entities
tags: [ai-detection, ai-slop, substack, saas]
sources:
  - "https://x.com/i/status/2080171634103840976"
summary: "AI text detection service (Pangram Labs) integrated into Substack; per-1000-words credits, verdict + confidence UI, v3.3.2 seen in screenshots."
provenance:
  extracted: 0.75
  inferred: 0.15
  ambiguous: 0.10
base_confidence: 0.60
lifecycle: draft
lifecycle_changed: "2026-08-14"
tier: supporting
created: "2026-08-14T00:00:00Z"
updated: "2026-08-14T00:00:00Z"
relationships:
  - target: "[[entities/substack]]"
    type: related_to
---

# Pangram

**Pangram** (pangram.com) is an AI text detection service. In July 2026 Substack announced a Pangram scan built into the Substack app. ^[extracted]

Interface facts captured from the article's screenshots (Pangram 3.3.2):
- Verdict UI: "AI Generated" / "Human Written" with a percentage gauge, a confidence label (High/Low), per-segment highlighting, and supporting-evidence tabs. ^[extracted]
- Pricing: **1 credit per 1000 words** on the Individual plan, with "Check for AI" and optional "Check for plagiarism" (1 credit) toggles; $10 credit promos. ^[extracted]
- Minimum input: "Enter at least 50 words or drop a file to check for AI". ^[extracted]

Ruben Hassid's testing ([[references/how-to-bypass-ai-detectors]]) found the verdict sensitive to tiny edits — an em dash → colon change flipped a 100% "AI Generated" (Confidence Low) result to 100% "Human Written". ^[extracted] He describes a 3-hour, $34 Claude Code attempt to game it as mostly failing before that discovery — i.e. strong detection, but brittle to punctuation-level features.

## Related

- [[entities/substack]] — integration partner
- [[concepts/ai-writing-tells]] — the tell catalog its detection approximates
- [[skills/anti-ai-skill]] — the skill built to test against it
