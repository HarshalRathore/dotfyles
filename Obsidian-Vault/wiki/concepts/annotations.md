---
type: concept
title: Annotations
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/labels-&-selectors_7e0f44]]'
tags:
- deployment
aliases:
- Annotations
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Annotations
---
# Annotations

## Definition
Annotations are key-value pairs used to attach non-identifying metadata to Kubernetes objects, providing supplementary information that does not affect resource selection or identification.

## Key Characteristics
- They are metadata entries in the form of key-value pairs
- They do not affect object selection or identification (unlike labels)
- They are ideal for storing non-critical, informational data
- They can be added during object creation or updated later
- They support integration with external tools and documentation
- They are typically used for administrative, descriptive, or operational notes


## Applications
- Storing build version information (e.g., `buildVersion: "1.0.0"`)
- Recording maintainer contact details (e.g., `maintainer: "team@example.com"`)
- Providing integration data for external monitoring or logging systems
- Documenting deployment history or change notes
- Storing tool-specific configuration for automation scripts
- Adding descriptive information for human reference


## Related Concepts
- [[concepts/labels]]
- [[concepts/selectors]]

## Related Entities
- [[entities/kubernetes]]
- [[entities/kubectl]]

## Mentions in Source
- "Annotations are key-value pairs used to attach non-identifying metadata to Kubernetes objects. They are not used for selection but provide additional information." — [[concepts/labels]]
- "Annotations can be added during object creation or updated later using `kubectl annotate`." — [[concepts/labels]]