---
title: Benoit Schillings
category: entities
tags: [person, Google-DeepMind, VP-Research, researcher]
aliases: [benoit schillings, Benoit Schillings DeepMind]
relationships:
  - target: '[[entities/google-deepmind|Google DeepMind]]'
    type: works_at
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: VP of Research at Google DeepMind, presented at WF2026.
provenance:
  extracted: 0.90
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-07-06
tier: supporting
created: 2026-07-06T00:00:00Z
updated: 2026-07-06T00:00:00Z
---

# Benoit Schillings

**Benoit Schillings** is VP of Research at **Google DeepMind** who presented at the AI Engineer World's Fair 2026. His team at DeepMind develops the technology needed to make Gemini performant between one month and one year out, covering code generation, reasoning evolution, topology research (new network architectures), and fundamental reinforcement learning science. ^[extracted]

## Code Security and Correctness

Schillings argued that with 80% of new GitHub code now machine-generated, the software industry must fundamentally rethink its processes. The central challenge is no longer writing code — that is essentially free — but ensuring that the explosion of generated code produces reliable systems. ^[extracted]

> We need to think at least as much about code security and the implication of a piece of code than on the code writing itself.

His team is working on teaching models to **write correct things from the start** rather than detecting vulnerabilities post-hoc and suggesting fixes. This is "very, very hard to do because it is very context dependent." ^[extracted]

## Inductive Architecture and Deductive Thinking

Schillings identified **inductive architecture** as a key unsolved capability. Models today are "still not very good at transferring knowledge, of taking knowledge from one domain and applying it to another one, or taking two concepts and finding the intersection of those contexts" — essential for deductive thinking. To build complex software systems using ML, the field needs to "teach models how to do correct planning in front of a problem — how to look at a very complex problem and decide what is the right decomposition." ^[extracted]

## Self-Play as the Path Forward

Schillings presented self-play as the key to transcending the limits of human-coded training data, drawing a direct line to AlphaZero: "AlphaZero became a superhuman Go and chess player without any human knowledge. We are now at that stage where frontier models for code are able to do the same — create their own challenge, judge the validity of the answer, and even, to some extent, judge the architecture." He analogized this to isolating a brilliant engineer with pizza for two years and challenging them to self-improve through self-verifiable challenges. ^[extracted]

## The Three Eras of Software

Schillings outlined three eras: ^[extracted]
1. **Machine-limited** (assembly language, extracting every ounce of performance)
2. **Human-brain-limited** (modular design, libraries, abstraction — constrained by the ~7-9 token human context limit)
3. **AI frontier** (code writing is no longer the bottleneck; the bottlenecks are design adequacy, system reliability at macroscopic scale, and specifying what you actually want)

## Code Compression Benchmark

He proposed a new benchmark for open-ended problem-solving: "Take a piece of 10 megabytes of source code and tell the model to write the best lossless compressor. The loss function is the size of the compressed file plus the size of the source code." This is a never-ending problem that would force models to create genuinely novel algorithms. ^[extracted]

## AI in Science and Chemistry

Schillings highlighted chemistry as a domain where AI's impact will be transformative. "As humans we do not understand chemistry — or we understand a very, very small sliver of chemistry. Once you have more than 20 atoms in your molecule, we don't know what that thing is going to do." He projected that assembling 10,000-atom structures begins to resemble life, and models can now find relationships elusive to human researchers. This connects to his broader thesis: "Humans are incredibly biased in what we feel is the correct solution — we're the result of an evolutionary training that helped us survive in the jungle, not doing quantum computing." ^[extracted]

## Related

- [[entities/google-deepmind|Google DeepMind]] — the company
- [[entities/shane|Shane]] — colleague on the Omni team
- [[concepts/perception-agents|Perception Agents]] — computer-use agents relevant to DeepMind's vision research
- [[concepts/ai-chemistry|AI Chemistry]] — AI-driven chemical discovery beyond the 20-atom threshold

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI

