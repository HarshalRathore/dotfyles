---
title: "Domain Expert Prompt Engineering"
tags:
  - ai
  - prompt-engineering
  - enterprise
  - llm
  - regulated-industry
  - domain-experts
  - extraction
sources:
  - "AI Engineer World's Fair 2025 talk — How BlackRock Builds Custom Knowledge Apps at Scale — Vaibhav Page & Infant Vasanth, BlackRock - https://www.youtube.com/watch?v=08mH36_NVos"
summary: "The practice of giving domain experts (non-engineers who understand the business) self-service tools to build, iterate, and evaluate LLM prompts and extraction strategies without requiring engineering support for every change."
provenance:
  extracted: 0.80
  inferred: 0.20
  ambiguous: 0.00
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Domain Expert Prompt Engineering

Domain expert prompt engineering is the practice of putting prompt creation, iteration, comparison, and evaluation tools directly into the hands of subject matter experts who understand the business domain but are not software engineers. It is motivated by the observation that in complex domains (financial services, legal, healthcare), prompt engineering rapidly becomes too intricate for engineers to own alone — the domain knowledge needed to describe extraction fields, validate outputs, and handle edge cases lives in the heads of business experts.

## The Problem

As [[entities/blackrock|BlackRock]]'s Vaibhav Page describes: "in our simplest case, like started with a couple of sentences, before you knew it, you're trying to describe this financial instrument and it's like three paragraphs long." ^[extracted]

The compounding challenges:

- **Prompt bloat** — simple extraction prompts grow to multi-paragraph descriptions as field complexity increases, requiring structured management
- **Versioning and comparison** — teams need to version prompts, compare across versions, and evaluate which performs better on real documents
- **LLM strategy mixing** — the same prompt may need different strategies (in-context, chunking, chain-of-thought) depending on document characteristics (size, complexity, type)
- **Eval data requirements** — systematic evaluation requires labeled datasets, which domain experts are best positioned to create and validate

## The Pattern

BlackRock's solution was to build the [[concepts/enterprise-ai-app-factory|sandbox]], a self-service environment where operators (domain experts) can:

1. **Define extraction templates** — specify field names, data types, source (extracted vs derived), required/optional flags, validations, and QC checks
2. **Configure inter-field dependencies** — model conditional relationships between fields (e.g., if bond is callable → call date and call price are required)
3. **Run extractions across document sets** — test prompts against real documents and review results
4. **Compare extraction outputs** — side-by-side comparison of different prompts or strategies on the same document set
5. **Iterate rapidly** — modify prompts, add validations, adjust dependencies, and re-run without engineering support

## Key Requirements

Effective domain expert prompt engineering requires:

- **UI tools, not code** — domain experts need visual interfaces for template configuration, not programming languages ^[inferred]
- **The right abstractions** — field name, data type, source, validations, dependencies are natural concepts for operators working with structured extraction; these map well to a UI form but poorly to raw prompt editing ^[inferred]
- **Human-in-the-loop as default** — in regulated environments, extraction review ([[concepts/human-in-the-loop-regulated-ai|HITL]]) is built into the workflow, not optional
- **Deployment without engineering** — once the extraction template is validated, it should be deployable as part of an application without engineers needing to touch the prompt in production ^[inferred]

## The ROI Question

A critical insight from the talk: "you have to really evaluate what your ROI is and is it going to be more expensive actually spinning up an AI app versus just having an off-the-shelf product that does it quicker and faster." ^[extracted] Domain expert prompt engineering is valuable when the domain complexity justifies custom extraction, but not every use case benefits — some problems are better solved by existing products.

## Relationship to Other Concepts

- [[concepts/unstructured-data-extraction|Unstructured Data Extraction]] — prompt engineering is the mechanism that makes LLM-based extraction work for complex documents
- [[concepts/evaluation-first-development|Evaluation-First Development]] — prompt iteration requires systematic evaluation, linking prompt engineering to evaluation practices
- [[concepts/checklist-based-evaluation|Checklist-Based Evaluation]] — domain experts can define QC checks and validations that serve as evaluation criteria for extraction quality
- [[concepts/enterprise-ai-app-factory|Enterprise AI App Factory]] — the sandbox is the concrete tool that makes domain expert prompt engineering possible at scale

## Open Questions

- What's the right prompt abstraction level for domain experts? Field-level configuration may work for extraction but fails for free-form generation tasks
- How do you version and rollback prompt templates in production while maintaining audit trail for regulated environments?
- What happens when the domain expert leaves — is the prompt knowledge transferable to other experts?

## Sources

- [[references/blackrock-knowledge-apps-ai-eng-fair-2025|How BlackRock Builds Custom Knowledge Apps at Scale — AI Engineer World's Fair 2025]]
