---
title: "How to bypass AI detectors (Ruben Hassid, X Article)"
category: references
tags: [ai-detection, ai-slop, ai-writing, pangram, substack]
sources:
  - "https://x.com/i/status/2080171634103840976"
source_url: "https://x.com/i/status/2080171634103840976"
created: "2026-08-14T00:00:00Z"
updated: "2026-08-14T00:00:00Z"
summary: "Ruben Hassid's 2026-07-23 X Article: Substack+Pangram detection, a $34 Claude Code anti-ai skill, an em-dash→colon bypass, and a full AI-writing tells catalog."
stub: false
provenance:
  extracted: 0.82
  inferred: 0.12
  ambiguous: 0.06
base_confidence: 0.60
lifecycle: draft
lifecycle_changed: "2026-08-14"
tier: supporting
relationships:
  - target: "[[concepts/ai-writing-tells]]"
    type: extends
  - target: "[[concepts/ai-slop]]"
    type: extends
  - target: "[[skills/anti-ai-skill]]"
    type: derived_from
---

# How to bypass AI detectors (Ruben Hassid, X Article)

> [!tldr] Substack is at war against AI: its CEO wired a Pangram scan into the app. Ruben Hassid spent 3 hours and $34 of Claude Code credits building an "anti-ai" skill against it, mostly failed — then found that replacing one em dash with a colon flipped Pangram's verdict from 100% AI to 100% human. His conclusion: detection is pattern-matching, and "detecting AI is a bit of a scam" — but lazy AI writing is still trivially recognizable. ^[extracted]

## Overview

X Article by [[entities/ruben-hassid|Ruben Hassid]] (@rubenhassid), July 23, 2026; ~725K views, 648 bookmarks at capture. Part I tests Substack's [[entities/pangram|Pangram]] detector; Part II is a catalog of AI-writing tells; Part III is a live demo of his AI-assisted newsletter workflow. ^[extracted]

## Part I — How Substack's AI detector works

- Substack uses **Pangram** for AI detection ([[entities/chris-best|Chris Best]]: "We built the ability to do a @pangram scan into the @Substack app, because we're sick of slop and we don't want substack to turn into LinkedIn"). ^[extracted]
- The author tried to game Pangram with a custom Claude Code skill ([[skills/anti-ai-skill]]) for 3 hours, spending **$34** of Claude Code credits. Early results: mixed — some passes, some fails. ^[extracted]
- **The breakthrough was punctuation-level:** removing an em dash and replacing it with a colon changed the verdict on the same 100-word text from "AI Generated — 100%, Confidence Low" to "Human Written — 100%". Conclusion: "detecting AI is a bit of a scam"; "we can't (100%) predict AI with bots". ^[extracted]
- [[entities/andrej-karpathy|Andrej Karpathy]] (co-creator of ChatGPT), quoted via screenshot: *"All 'detectors' of AI imo don't really work, can be defeated in various ways, and are in principle doomed to fail."* ^[extracted]
- **Why detectors are brittle:** they are pattern-matching machines over "AI text" vs "human text" distributions that overlap heavily; humans write robotic text and AI writes natural text. **Short text gives a detector almost nothing** — a one-liner's human/AI distributions are basically a circle (demoed with a ChatGPT one-liner). **Style prompting changes the distribution entirely**: prompting "answer by adhering to ADS-STE100 Simplified Technical English" makes any AI sound like IKEA instructions — great for guidelines, and it sidesteps detection. ^[extracted]
- Context: a 2025 study (uncited) estimated **53.7% of long-form LinkedIn posts (100+ words) were AI-generated**; the author's own LinkedIn comment section is "just AI slop". ^[extracted] ^[ambiguous]

## Part II — How to forever not sound like an AI

- **Workslop** — the word for AI slop inside work: when a teammate's AI-generated draft becomes your job to decode, guess, rewrite, or return. ^[extracted]
- Full catalog of tells and fixes: see [[concepts/ai-writing-tells]]. Highlights: em dashes (AI: 20+/piece, humans: 2–3, target ≤1), low burstiness (uniform 15–20-word sentences), fractal summaries, bold-first bullets, emoji bullets, "delve/tapestry/landscape" lexicon, uniform positivity (measured: certainty +111–152%, positive emotion +69–133% vs human), both-sidesing, register scrubbing, leaked scaffolding ("Certainly! Here's…"), utm_source=chatgpt.com URLs, hallucinated citations. ^[extracted]
- **What NOT to do when fixing:** don't swap every word (readers can tell), don't scatter random typos (errors must read as casualness, not carelessness), don't scrub personality (a flat tell-free text is still AI-shaped), don't invent facts, don't shrink every long sentence — humans write long sentences, just not only 18-word ones. ^[extracted]
- **Human markers to add:** contractions; a number with texture ($43, 11 months, 4:30am, v2); a named thing; a parenthetical aside with attitude; one "I think/honestly/to be fair"; a sentence starting with And/But/Because; one single-sentence paragraph; a mild complaint or unresolved edge; an irrelevant-but-true anecdote detail; a dropped Oxford comma in casual registers; uneven list items; plain "is" instead of "serves as". ^[extracted]

## Part III — How he writes with AI, live

Weekly newsletter sent to **849,273** readers; a Circle community (how-to-ai.guide) hosts monthly live writing sessions where readers watch the newsletter get written start-to-finish with AI, prompts and skills kept permanently. ^[extracted]

## Embedded media (image contexts, vision-analyzed)

| # | Image | Context |
|---|---|---|
| 1 | HN2JA-PbcAATe9E | Cover art: wooden-textured chimp in overalls smoking, leaning on a CRT TV showing a loading asterisk — surreal metaphor for artificiality/randomness vs AI pattern. No text |
| 2 | amplify_video_thumb (video) | Video thumbnail: Claude Code Skills settings UI (skill "47" selected) — "simplest video on how to install it" |
| 3 | HN2E6SAasAQkWgz | Pangram verdict UI: "Chihuahua is Mexico's largest" (123 words) → AI Generated 100%, Confidence High, Pangram 3.3.2, per-segment highlight |
| 4 | HN2EfmKaQAAzIQx | Chris Best tweet: "We built the ability to do a @pangram scan into the @Substack app…" |
| 5 | HN2EmqzasAIeou4 | Chris Best tweet coining "Claudefishing" (6 replies, 118 likes, 8.5K views) |
| 6 | HN2ExMEasAIst_d | Pangram input UI: Text/Upload tabs, 1 credit/1000 words, "Check for AI" button (orange arrow annotation), plagiarism toggle |
| 7 | HN2F1xKbIAAVQWQ | Claude chat: "Write 107 words about the origin of the name 'Ruben'" — baseline AI text (Opus 4.8 High) |
| 8 | HN2F6JIasAA15F8 | Pangram text-check page with the 101-word Ruben text pasted, "Check for AI" enabled |
| 9 | HN2F9NgboAAReI9 | Pangram result: Ruben text → "AI Generated", 100%, Confidence High, flagged sentences pink-highlighted |
| 10 | HN2FA3gasAMnsfh.png | Split screen: left = Claude chat describing the skill ("12-point self-verify checklist", "Write worse: dwell, repeat, fixate, leave arguments unmade", $34.44 spent, Fable 5); right = Pangram result on the Sephora-loyalty-points text (lowercase stream-of-consciousness, 144 words) → **100% Human Written, Confidence High** |
| 11 | HN2FGSWasAQmeIF | Claude home: "Afternoon, Ruben" — pinned items "Anti-AI writing skill", "Undetectable AI writing techniques" |
| 12 | HN2FJ4aasAIcvSZ | Claude Skills UI: "Add" → "Upload a skill" highlighted; skill list includes anti-ai (7/22/26) |
| 13 | HN2FNvoasAI0ap6 | Skill modal for "anti-ai": "Rewrite AI-generated text so it passes as human — to human readers AND statistical AI detectors (Pangram etc.)"; SKILL.md STEP 0 mode router (DETECTOR mode default; interleave protocol) |
| 14 | HN2G2QTaMAAc1mC.png | Swap table "Tell / Example (AI) / Fix": 15 constructions — negative parallelism, rule of three, rhetorical Q&A, copula dodge, participial tail, false range, hedge stack, vague authority, false suspense, analogy reflex, invented concept labels, inspirational pivot, grandiosity, anaphora abuse, dead metaphor flogging |
| 15 | HN2GASLasAM5woD | Claude chat: "/anti-ai rewrite your text" → "Contemplating — Loading anti-ai skill" |
| 16 | HN2GDSKasAQyDQH | Pangram result: Ruben text WITH em dash ("the spelling drifted — Reuben"), orange circle on it → AI Generated 100%, **Confidence Low** |
| 17 | HN2GGQcasAI2IFo | Pangram result, same em-dash text ("almost everywhere else" circled) → AI Generated 100%, Confidence Low |
| 18 | HN2GJyqasAASCEM | Pangram result after em dash → colon ("the spelling drifted: Reuben"), "drifted" circled → **Human Written 100%** — the bypass demo |
| 19 | HN2GNUBaQAAG1rH | Karpathy tweet: "You will never be able to detect the use of AI in homework. Full stop… doomed to fail." |
| 20 | HN2GQEhbIAAW5Ju.png | ChatGPT one-liner demo: "in one very concise line, who is Ruben Hassid?" → "Ruben Hassid: AI educator and author of How to AI" — short text defeats detection |
| 21 | HN2GTvRbYAAY5ar | Claude: normal frisbee tutorial (em dashes, friendly tone) — baseline AI style |
| 22 | HN2GXOFbYAAiscm | Claude: same frisbee prompt + ADS-STE100 Simplified Technical English constraint → imperative numbered steps, IKEA-instruction style — style prompting defeats detection |
| 23 | HN2GmNlb0AAKnly | Screenshot of an external article "PART 1: The lexicon: words AI can't stop using" (CONTENTS: lexicon, constructions, punctuation, detection, prevalence…) citing Kristen Lowe's "AI idiolect" theory and Reinhart et al. (PNAS) — "tapestry" in 23% of GPT-4o outputs; "camaraderie"/"palpable" at 100–170x human rates. Author of that article unconfirmed ^[ambiguous] |
| 24 | HN2Gp4ib0AA15iD | Chris Best tweet (19h, 56 replies, 115 reposts, 974 likes, 152K views): pangram scan announcement with "we don't want substack to turn into LinkedIn" highlighted |
| 25 | HN2GwvyaoAAfGzg.png | 4-panel comic: "Make this sound smart." → "Can you review this?" → "Does this sound smart?" → "APPROVED / Looks good" — AI-review-of-AI loop satire |
| 26 | HN2HAhHaQAAW3yh.png | Swap table "Flagged / Say instead": leverage→use, delve→look at, pivotal→big, seamless→smooth, robust→solid, navigate→deal with, harness→use, optimize→tune, tapestry→mix, testament to→proof of, journey→process, myriad→a lot of, in conclusion→(delete)… |

## Further reading (outbound links)

- https://www.dropbox.com/t/fORTSF4grrSCzrMN — Dropbox transfer: the anti-ai skill zip (password: RUBEN-HOWTOAI), "Ruben Hassid sent 1 item", expires 2027-04-11. File list not retrievable anonymously ^[ambiguous]
- http://how-to-ai.guide — Circle community for monthly live AI-writing sessions
- http://substack.com/@ruben — author's newsletter
- https://pangram.com — detector UI (Individual plan, 1 credit/1000 words)

## Concepts

- [[concepts/ai-writing-tells]] — the tell catalog this article catalogs
- [[concepts/ai-slop]] — workslop, Claudefishing, the Substack-vs-LinkedIn framing
- [[concepts/agent-loop]] — the iterative skill-testing loop ($34, 3h, A/B passes) used to develop the skill

## Entities

- [[entities/ruben-hassid]] — author
- [[entities/substack]], [[entities/chris-best]], [[entities/pangram]], [[entities/andrej-karpathy]] — principals of the story

## Open Questions

- Does the em-dash→colon result reproduce across Pangram versions? The article shows one instance. ^[ambiguous]
- The 53.7% LinkedIn-AI statistic and the Reinhart et al. PNAS numbers come from uncited/embedded sources. ^[ambiguous]
- Whether Substack's scan gates publication or only labels it — not stated. ^[ambiguous]

## Related

- [[misc/web-x-com-i-status-2080171634103840976]] — the announcing post
- [[skills/anti-ai-skill]] — the skill developed in the article
- [[misc/web-posthog-com-blog-stop-ai-slop|Stop AI slop (PostHog)]] — different sense of "AI slop": product-quality evals, not writer-side tells
