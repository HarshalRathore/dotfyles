---
type: concept
title: Validating Phase
created:
- 2026-06-30
updated:
- 2026-06-30
sources:
- '[[sources/admission-controllers_7667fc]]'
tags:
- scheduling
aliases:
- Validating Admission Phase
- K8s Validating Phase
category: concepts
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
summary: Validating Phase
---
# Validating Phase

## Definition
The Validating Phase is the second stage in the Kubernetes admission control pipeline, occurring after the Mutating Phase. It runs validation controllers (including webhooks, policies, and built-in validators) to check if a resource object meets specified criteria and rules. This phase cannot modify objects; its sole function is to accept or reject them based on compliance with configured policies, thereby enforcing cluster integrity and governance standards.

## Key Characteristics
- Performs read-only validation checks on resource objects.
- Operates on the mutated objects produced by the preceding Mutating Phase.
- Uses components like ValidatingAdmissionWebhook, ValidatingAdmissionPolicy, and built-in controllers (e.g., NamespaceLifecycle, ResourceQuota, PodSecurity).
- Has the authority to reject requests, preventing non-compliant or invalid resources from being persisted in the cluster.
- Is a critical enforcement point for security policies, resource quotas, and compliance standards.

## Applications
- Enforcing resource quota limits to prevent cluster over-provisioning.
- Applying security policies such as pod security standards to restrict container permissions.
- Validating custom resource schemas to ensure correctness.
- Implementing admission control rules for multi-tenant clusters.
- Ensuring compliance with organizational or regulatory requirements for deployed workloads.

## Related Concepts
- [[concepts/mutating-phase]]
- ValidatingAdmissionWebhook
- [[concepts/admission-controller]]

## Related Entities

## Mentions in Source
- 2. **Validating Phase** — [[concepts/admission-controller]]
- Runs **ValidatingAdmissionWebhook**, **ValidatingAdmissionPolicy**, and built-in validating controllers (e.g., **NamespaceLifecycle**, **ResourceQuota**, **PodSecurity**, **NodeRestriction**). Only checks and rejects—cannot change objects. — [[concepts/admission-controller]]