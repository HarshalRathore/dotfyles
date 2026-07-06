---
title: Han Xiao
category: entities
tags: [person, test-time-compute, retrieval, reranking, frozen-embedder]
aliases: [han xiao]
relationships:
  - target: '[[concepts/test-time-compute-spectrum]]'
    type: discussed
sources:
  - https://www.youtube.com/watch?v=4sX_He5c4sI
summary: Presented the test-time compute spectrum and frozen embedder reranking at WF2026.
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

# Han Xiao

**Han Xiao** presented the **test-time compute spectrum** at the AI Engineer World's Fair 2026, describing how frozen embedder reranking programs achieve 83% win rate on held-out data. ^[extracted]

## Test-Time Compute Spectrum

Han Xiao's talk covered the spectrum of test-time compute strategies, from simple cosine distance (one vector per document and query) to the CO-BERT latent interaction model (the most distilled approach). The key finding was that discovered reranking programs — simple, cheap mathematical operations on existing query and document vectors — consistently outperformed both naive baselines and more complex approaches. Some programs nudge the query toward a document it already prefers; others pick a few directions in the latent space and rescore along them. ^[extracted]

The best discovered program achieves an 83% win rate on held-out data with zero single-task degradation, while requiring only 1.5× the compute of the cosine baseline. ^[extracted]

## Agent-to-Agent (A2A) Protocol

In a related session covering production agent architecture, the **Agent-to-Agent (A2A) protocol** — Google's open protocol for inter-agent communication — was discussed as a key design pattern. The protocol uses an **agent card** (name, description, capabilities) as a structured contract that front-end and back-end systems both consume and produce, enabling rigorous alignment across agent boundaries. ^[extracted]

Key aspects of the A2A protocol in practice: ^[extracted]
- Defines a structured schema for agent routes — standardizing how agents discover and communicate with each other
- Uses agent cards with metadata (capabilities, extensions) as the contract between systems
- Supports extensions like A2UI for richer agent interactions
- Enables clean separation between agent orchestration and individual agent implementation

Teams using A2A found that "having this kind of rigorous protocol, this rigorous spec really helped drive our development and drive alignment — all we had to do was align with this spec and we knew that this was the contract that our front end and back end would both consume and produce." ^[extracted]

## Related

- [[concepts/test-time-compute-spectrum|Test-Time Compute Spectrum]] — the concept Han Xiao presented
- [[concepts/agent-arena|Agent Arena]] — the evaluation platform relevant to benchmarking test-time compute methods
- [[concepts/vo3|VO3]] — joint audio-visual generation, another Jina AI contribution

## Sources

- AI Engineer World's Fair 2026: https://www.youtube.com/watch?v=4sX_He5c4sI
