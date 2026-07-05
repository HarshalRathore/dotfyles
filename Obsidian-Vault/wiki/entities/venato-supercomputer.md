---
title: Venato Supercomputer
category: entities
tags: [supercomputer, hpc, nvidia, hpe, grace-hopper, los-alamos, ai-research, aief2025]
summary: 2,500+ node supercomputer at LANL built with NVIDIA and HPE, running Grace Hopper superchips for AI research and hosting OpenAI models on classified networks.
sources:
  - "AIEF2025 - Applied AI and Agentic Science at a National Laboratory — Mark Machotton, Los Alamos National Laboratory - https://www.youtube.com/watch?v=cFxWPP1ik6A"
  - "[[sources/watchv=tnsgx36ly0q]]"
provenance: {extracted: 1.0, inferred: 0.0, ambiguous: 0.0}
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04T12:00:00Z
updated: 2026-07-04T12:00:00Z
relationships:
  - target: "[[entities/los-alamos-national-laboratory]]"
    type: operated_by
  - target: "[[entities/nvidia]]"
    type: hardware_supplier
  - target: "[[entities/hpe]]"
    type: hardware_supplier
---

Venato is a supercomputer at [[entities/los-alamos-national-laboratory|Los Alamos National Laboratory]] comprising over 2,500 nodes of NVIDIA Grace Hopper superchips. Built through a partnership with [[entities/nvidia|NVIDIA]] and [[entities/hpe|HPE]], Venato was designed to push the boundaries of AI research at a national laboratory.

The system's key capability is bringing frontier commercial models — including [[entities/openai|OpenAI]]'s models — onto LANL's classified networks. This enables the laboratory to run AI agents against mission-specific data that cannot leave classified environments, combining frontier model capabilities with the deep mathematical and scientific tools (50-60 years of nuclear stockpile stewardship knowledge) embedded in LANL's HPC infrastructure.

Venato enables the "agentic era" of science by executing AI-generated code directly on HPC assets, running thermodynamic and hydrodynamic simulations rather than just returning text output.
