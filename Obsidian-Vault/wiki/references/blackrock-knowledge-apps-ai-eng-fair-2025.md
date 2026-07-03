---
title: "How BlackRock Builds Custom Knowledge Apps at Scale — Vaibhav Page & Infant Vasanth, BlackRock"
tags:
  - reference
  - talk
  - ai-engineer-worlds-fair
  - enterprise
  - knowledge-apps
  - regulated-industry
aliases:
  - BlackRock AI Apps Framework
  - BlackRock Sandbox App Factory
sources:
  - "https://www.youtube.com/watch?v=08mH36_NVos"
summary: "AI Engineer World's Fair 2025 talk covering BlackRock's sandbox + app factory framework for building custom AI knowledge applications at scale in the highly regulated financial services domain."
provenance:
  extracted: 0.90
  inferred: 0.10
  ambiguous: 0.00
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# How BlackRock Builds Custom Knowledge Apps at Scale

> **Talk:** How BlackRock Builds Custom Knowledge Apps at Scale
> **Speakers:** [[entities/vaibhav-page|Vaibhav Page]] (Principal Engineer) and [[entities/infant-vasanth|Infant Vasanth]] (Director of Engineering)
> **Organization:** [[entities/blackrock|BlackRock]]
> **Event:** AI Engineer World's Fair 2025
> **Source:** [YouTube](https://www.youtube.com/watch?v=08mH36_NVos)

## Summary

[[entities/blackrock|BlackRock]], the world's largest asset manager, built a sandbox + app factory framework to compress the time to build custom AI knowledge applications from 3-8 months down to a couple of days. The talk covers the four categories of AI apps BlackRock builds (document extraction, workflow automation, Q&A, and agentic systems), the specific challenges of building AI apps in a regulated financial environment (prompt engineering at scale, LLM strategy selection, deployment complexity, cost controls), and the architecture of their internal framework that lets domain experts build end-to-end extraction and transformation pipelines without deep engineering support. ^[extracted]

## Key Takeaways

1. **Sandbox + App Factory architecture** — a playground where domain experts iteratively build extraction templates, run extractions, compare results, and define transformation workflows, then pass the definition to a cloud-native operator that deploys a complete app ^[extracted]
2. **Human-in-the-loop is non-negotiable in regulated environments** — "we all are really tempted, let's go all agentic with this, but in the financial space with compliance, with regulations, you kind of need those four eyes check" ^[extracted]
3. **Prompt engineering is a first-class engineering discipline** — prompts for financial instruments quickly grow from simple sentences to multi-paragraph descriptions. Teams need versioning, comparison, eval datasets, and systematic iteration tools ^[extracted]
4. **LLM strategy selection depends on document characteristics** — a simple corporate bond can be extracted with in-context prompting on a small document, but a 10,000-page prospectus requires chunking strategies, chain-of-thought, or multi-model approaches ^[extracted]
5. **Deployment complexity is significant in AI** — different use cases require different infrastructure (GPU inference clusters for batch analysis, burstable clusters for operational workflows), and cost controls add another dimension ^[extracted]
6. **ROI evaluation is critical** — "you have to really evaluate what your ROI is and is it going to be more expensive actually spinning up an AI app versus just having an off-the-shelf product" ^[extracted]

## Key Topics

### The Four App Categories

BlackRock's AI applications fall into four buckets:

1. **Document extraction** — extracting entities and structured data from documents
2. **Complex workflow/automation** — defining multi-step processes that integrate with downstream systems
3. **Q&A systems** — chat interfaces for querying information
4. **Agentic systems** — autonomous multi-step reasoning (noted as still challenging for complex domain-heavy use cases) ^[extracted]

### The Use Case: New Issue Operations

The investment operations team responsible for setting up securities during market events (IPOs, stock splits) needed a tool to:

- Ingest prospectus or term sheet documents
- Push them through an extraction pipeline
- Consult domain experts (business teams, equity teams, ETF teams)
- Produce structured output
- Integrate with downstream applications

Before the framework, this process took 3-8 months per app. ^[extracted]

### Key Challenges

Three categories of challenge:

1. **Prompt engineering at scale** — prompts start simple but grow to multi-paragraph descriptions of complex financial instruments. Teams need versioning, comparison, evaluation datasets, and systematic iteration tools
2. **LLM strategy selection** — what strategy to use (chunking, chain-of-thought, in-context prompting) depends on the document (simple bond vs 10,000-page prospectus). Teams need to mix and match strategies with prompts rapidly
3. **Deployment and operations** — distribution, access control, cluster selection (GPU inference vs burstable), cost controls. The goal is to make app deployment as close to a CI/CD pipeline as possible ^[extracted]

### The Sandbox + App Factory Architecture

**Sandbox** — a playground where operators (domain experts) can:

- Build and refine extraction templates (field name, data type, source (extracted/derived), required flag, field dependencies, validations)
- Run extraction on sets of documents
- Compare and contrast extraction results
- Define QC checks, validations, and constraints on fields
- Configure inter-field dependencies (e.g., if a bond is callable, call date and call price are required)
- Build transformation and execution workflows via a low-code/no-code framework

**App Factory** — a cloud-native operator that:

- Takes a definition from the sandbox (extraction templates, transformers, executors, workflow pipeline)
- Spits out a complete, deployed custom application
- Exposes the app to end users who don't need to configure templates or worry about downstream integration ^[extracted]

### Infrastructure Considerations

- GPU-based inference clusters — for batch jobs like analyzing 500 research reports overnight
- Burstable clusters — for operational workflows like the new issue setup
- Cost controls must be defined per app
- Security across stack layers: infra, platform, application, and user levels ^[extracted]

## Pages Created from This Source

- [[concepts/enterprise-ai-app-factory|Enterprise AI App Factory]]
- [[concepts/human-in-the-loop-regulated-ai|Human-in-the-Loop in Regulated AI]]
- [[concepts/domain-expert-prompt-engineering|Domain Expert Prompt Engineering]]
- [[entities/vaibhav-page|Vaibhav Page]]
- [[entities/infant-vasanth|Infant Vasanth]]
- [[entities/blackrock|BlackRock]]

## Sources

- [YouTube: How BlackRock Builds Custom Knowledge Apps at Scale](https://www.youtube.com/watch?v=08mH36_NVos)
