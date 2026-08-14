---
title: AI Writing Tells
category: concepts
tags: [ai-writing, ai-detection, writing-style, style-guide]
sources:
  - "https://x.com/i/status/2080171634103840976"
summary: "Catalog of linguistic patterns that mark AI-generated text: lexicon tiers, constructions, punctuation tells, and the human markers that remove them."
provenance:
  extracted: 0.75
  inferred: 0.15
  ambiguous: 0.10
base_confidence: 0.50
lifecycle: draft
lifecycle_changed: "2026-08-14"
tier: supporting
created: "2026-08-14T00:00:00Z"
updated: "2026-08-14T00:00:00Z"
relationships:
  - target: "[[concepts/ai-slop]]"
    type: related_to
  - target: "[[references/how-to-bypass-ai-detectors]]"
    type: derived_from
---

# AI Writing Tells

**AI writing tells** are the recognizable patterns of lazily-prompted AI text. Distilled from Ruben Hassid's X Article ([[references/how-to-bypass-ai-detectors]]) plus screenshots embedded there. Tells cluster in five layers: lexicon, constructions, punctuation/formatting, structure/rhythm, content/voice. ^[extracted]

## Lexicon — Tier 1 words (never use)

- **Verbs:** delve, leverage, underscore, harness, foster, navigate (figurative), utilize, facilitate, streamline, bolster, illuminate, showcase, embark, elevate, empower, unleash, unlock (figurative), uncover, optimize, garner, resonate, revolutionize, shed light on, synthesize, elucidate, transcend, reimagine, intertwine, entwine, grapple with, espouse, exemplify, underpin. ^[extracted]
- **Nouns:** tapestry, landscape (figurative), realm, ecosystem (figurative), paradigm, synergy, testament, beacon, journey (figurative), interplay, intricacies, symphony (figurative), kaleidoscope, tempest, whimsy, quest (figurative), roadmap (figurative), endeavor, myriad, plethora, advancements, trajectory (figurative). ^[extracted]
- **Adjectives/adverbs:** pivotal, crucial, seamless(ly), robust, vibrant, intricate, meticulous(ly), nuanced, cutting-edge, transformative, game-changing, groundbreaking, unparalleled, invaluable, multifaceted, commendable, indelible, poignant, profound(ly), relentless(ly), tireless(ly), unwavering, unyielding, timeless, ever-evolving, fast-paced. ^[extracted]
- **Stock phrases:** "in today's fast-paced world", "it's important to note", "plays a pivotal role in", "stands as a testament to", "navigate the complexities of", "in conclusion", "at its core", "a key takeaway", "paving the way for", "valuable insights", "when it comes to", "not only… but also", "here's the thing", "I hope this email finds you well", "dive into", "let's explore/unpack/break down", sentence-initial "furthermore/moreover/additionally". ^[extracted]
- **Narrative clichés:** "couldn't help but feel", "heart pounding", "a sense of X washed over", "found solace in", "little did I know", "a stark reminder", "a cautionary tale", "what lay ahead", "stumbled upon", "nestled", "bustling", "captivating". ^[extracted]

## Lexicon — Tier 2 (allowed alone)

comprehensive, significant(ly), essential, critical, key (adj.), dynamic, innovative, powerful, notable, vital, vast, rich/deep (figurative), explore, enhance, ensure, foster, highlight, reveal, engage, insights, perspective, framework, approach, strategy, challenges, opportunities, potential, impact(ful), quietly (as in "quiet confidence"), genuinely, truly, remarkably, arguably, generally speaking, typically, thought-provoking, resilience, perseverance, high-quality, sustainable. ^[extracted]

## Constructions (the 15-tell table)

Negative parallelism ("It's not just X — it's Y"), rule of three ("fast, reliable, and scalable" stacked), rhetorical Q&A ("The result? Devastating."), copula dodge ("serves as a bridge" instead of "is"), participial tail ("…, highlighting the importance of…"), false range ("everything from strategy to execution"), hedge stack ("it's important to note that, arguably…"), vague authority ("Experts argue…"), false suspense ("Here's the kicker."), analogy reflex ("think of it as a highway for your data"), invented concept labels ("the supervision paradox" — coinage posing as established), inspirational pivot ("what this means for humanity"), grandiosity ("a pivotal moment"), anaphora abuse ("We build. We ship. We iterate."), dead metaphor flogging (one metaphor reused five times). ^[extracted]

## Punctuation & formatting

- **Em dashes** — the most famous tell: AI 20+ per piece vs humans 2–3; target ≤1. A single em dash → colon edit flipped Pangram's verdict in the source test. ^[extracted]
- Bold-first bullets ("**Security:** …"), emoji bullets (✅ 🧠 🔹), Title Case/colon-split headings ("The Power of X: Why Y Works"), Oxford comma 100% of the time (dropping it reads human in casual registers), markdown residue (**, ##, [text](url) in plain-text contexts). ^[extracted]

## Structure, rhythm, content, voice

- Low burstiness (uniform 15–20-word sentences, rectangular paragraphs); fractal summaries (preview/recap at every level); signposted conclusions ("In conclusion… + uplift"); pep-talk endings ("As we move forward…"); prompt echo ("This essay will explore…"); listicle-in-a-trenchcoat ("The first reason is…"); uniform staccato ("X is A. X is B. X is C."). ^[extracted]
- No concrete imagery in the first sentences; proper-noun avoidance ("a client" → name it; invented names cluster on Emily/Sarah); uniform positivity (measured: certainty +111–152%, positive emotion +69–133% vs human); both-sidesing every claim; suspiciously tidy anecdotes; register scrubbing (no contractions, no slang). ^[extracted]
- Leaked scaffolding ("Certainly! Here's…", "I hope this helps", "let me know if…"), self-reference ("as an AI language model", knowledge-cutoff notes), placeholder text ("[insert example]"), utm_source=chatgpt.com in URLs, hallucinated-looking citations, "Best regards" outside email. ^[extracted]
- Careful with: performative helpfulness ("I hope this clarifies things!"), one-point dilution, curly quotes in plain-text contexts, semicolons where a period would do, Emily/Sarah default names. ^[extracted]

## Human markers (the good list)

Contractions; a number with texture ($43, 11 months, 4:30am, v2); a named thing (brand, tool, street, person); a parenthetical aside with attitude; one "I think"/"honestly"/"to be fair"; a sentence starting with And/But/Because; one single-sentence paragraph; a mild complaint or unresolved edge; an irrelevant-but-true anecdote detail; a dropped Oxford comma (casual registers); a question the reader was actually asking; uneven list items; plain "is" where AI would write "serves as". ^[extracted]

## What NOT to do when fixing

Don't swap every word with weird ones; don't scatter random typos (errors must read as casualness, not carelessness, and only where the register tolerates them); don't scrub personality (a flat, tell-free text is still AI-shaped); don't invent real-sounding facts/stats/quotes; don't shrink every long sentence — humans write long sentences, they just don't write only 18-word ones. ^[extracted]

## Swap tables (flagged → say instead)

leverage/utilize→use; delve into→look at, dig into; pivotal/crucial→big, key; seamless→smooth, painless; robust→solid, sturdy; navigate (complexities)→deal with, handle; foster→build, grow, help; facilitate→help, run; streamline→simplify; underscore/highlight→show; showcase→show; harness→use, put to work; optimize→tune, tighten; empower→let, give X the ability to; landscape/realm/space→field, market, or name the field; tapestry/interplay→mix, back-and-forth; testament to→proof of, "you can tell because"; journey→process, "the last six months"; myriad/plethora→a lot of, dozens of; transformative/game-changing→state what actually changed, with a number; comprehensive→full, complete; furthermore/moreover→also, and, plus; in conclusion/in summary→delete, end on the last concrete point; valuable insights→what I learned; deeper understanding→name the specific thing; "it's important to note"→delete. ^[extracted]

## Corroborating data (embedded screenshots)

- Reinhart et al. (PNAS), cited in an embedded external article: "tapestry" in 23% of GPT-4o outputs; "camaraderie"/"palpable" at 100–170× human rates; Kristen Lowe's "AI idiolect" theory: models pick words optimized to avoid being wrong — vague, non-visual, self-important language; predicts specific words rotate out but the vagueness pattern persists. ^[ambiguous]

## Related

- [[concepts/ai-slop]] — why tells matter (the platform war over slop)
- [[references/how-to-bypass-ai-detectors]] — source article
- [[skills/anti-ai-skill]] — an implementation that operationalizes these tells
- [[entities/pangram]] — a detector these tells are tuned against
