---
title: "Enterprise AI App Factory"
tags:
  - ai
  - architecture
  - enterprise
  - app-development
  - sandbox
  - regulated-industry
sources:
  - "AI Engineer World's Fair 2025 talk — How BlackRock Builds Custom Knowledge Apps at Scale — Vaibhav Page & Infant Vasanth, BlackRock - https://www.youtube.com/watch?v=08mH36_NVos"
summary: "A two-layer architecture (sandbox + factory) for rapidly building custom AI knowledge applications in enterprise settings by empowering domain experts to iterate on extraction logic, then automatically deploying as production apps."
provenance:
  extracted: 0.85
  inferred: 0.15
  ambiguous: 0.00
base_confidence: 0.65
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Enterprise AI App Factory

The Enterprise AI App Factory is a two-layer architecture pattern pioneered by [[entities/blackrock|BlackRock]] to compress the time to build custom AI knowledge applications from months to days. It separates the iterative, domain-expert-driven work of defining extraction and transformation logic (the sandbox) from the operational concerns of deploying and running the resulting application (the factory).

## Architecture

### Layer 1: The Sandbox (Playground)

The sandbox is a tool that lets domain experts (operators who know the business domain but are not engineers) rapidly build and refine the AI components of an application:

- **Extraction templates** — define fields to extract, their data types, source (extracted from document vs derived via transformation), required/optional flag, validations, and QC checks
- **Inter-field dependencies** — configure conditional relationships between fields (e.g., if a bond is callable, then call date and call price are required). This is a key capability beyond simple prompt-based extraction
- **Document management** — ingest, tag by business category, label, and embed documents for extraction runs
- **Extraction execution and comparison** — run extractions across document sets and compare results to evaluate prompt quality
- **Low-code/no-code transformation and execution workflows** — define how extracted data flows through transformation steps into downstream systems, replacing manual CSV/JSON download + hand-transformation patterns

The sandbox federates the bottlenecks of AI app development — prompt iteration, LLM strategy selection, extraction plan definition, and transformation logic building — directly into the hands of the people who understand the domain. ^[extracted]

### Layer 2: The App Factory (Deployment)

The app factory is a cloud-native operator that takes a definition assembled in the sandbox (extraction templates, transformers, executors, workflow pipeline) and automatically deploys a complete, custom application:

- No manual deployment or infrastructure management for the domain expert
- The resulting app presents a clean interface where end users upload documents, run extraction, and get the full pipeline result without needing to configure templates or understand downstream integration
- Infrastructure considerations (GPU vs burstable clusters, access control, cost controls) are handled at the platform level, not per-app ^[inferred]

## Why This Pattern Matters

Enterprise AI apps in regulated domains face challenges that generic chatbot or extraction tools don't address:

- **Domain complexity** — financial instruments have dozens of inter-dependent fields with complex validation rules. Simple prompt-based extraction fails because it lacks field dependency modeling
- **Iteration speed** — prompts and strategies must be iterated rapidly with domain experts. The sandbox makes this self-service rather than requiring engineering cycles
- **End-to-end integration** — extraction results need to flow into downstream systems. Many tools produce good extraction output but leave the integration as a manual step
- **Cost and infrastructure management** — different use cases need different compute (GPU clusters for batch analysis, burstable for operational workflows). The factory abstracts this complexity ^[inferred]

## Relationship to Other Patterns

This pattern is complementary to [[concepts/agentic-architecture|agentic architecture]] — both aim to compose AI operations into workflows, but the app factory focuses on providing a self-service experience for non-engineer domain experts, whereas agentic architectures typically target developer-built orchestration layers. ^[inferred]

The sandbox shares goals with [[concepts/domain-expert-prompt-engineering|domain expert prompt engineering]] — both aim to put prompt and strategy iteration into the hands of subject matter experts rather than requiring engineering support for every change.

## Known Limitations

- The talk notes that agentic systems were tried for the complex domain use case and "doesn't quite work right now because of the complexity and the domain knowledge that's imbued in the human head" — suggesting the sandbox pattern is most effective for structured extraction and workflow automation, not fully autonomous agents ^[extracted]
- Human-in-the-loop remains critical: "design for human in the loop first if you are in a highly regulated environment" ^[extracted]

## Sources

- [[references/blackrock-knowledge-apps-ai-eng-fair-2025|How BlackRock Builds Custom Knowledge Apps at Scale — AI Engineer World's Fair 2025]]
