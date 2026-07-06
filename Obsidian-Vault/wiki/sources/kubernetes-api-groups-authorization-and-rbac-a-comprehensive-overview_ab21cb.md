---
summary: This source provides a comprehensive overview of the structure and security mechanisms of the Kubernetes API. It details how the API is logically organized into [[concepts/api-groups]]
tags:
- API Groups
- Core API Group
- Named API Groups
- Resources and Verbs
- kubectl proxy
- Authorization Modes
- Node Authorization
- AlwaysAllow and AlwaysDeny
aliases:
- Kubernetes API Groups Overview
contentHash: 19fa-73d99496
generation_complete: true
title: API Groups in Kubernetes - Summary
category: sources
sources: []
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-02T13:38:25.551698+00:00'
updated: '2026-07-02T13:38:25.551698+00:00'
---
# API Groups in Kubernetes - Summary

## Source
- Original file: 
- Ingested: 2026-06-30

## Core Content
This source provides a comprehensive overview of the structure and security mechanisms of the Kubernetes API. It details how the API is logically organized into [[concepts/api-groups]], distinguishing between the fundamental [[concepts/core-api-group]] (under `/api/v1`) and specialized [[concepts/named-api-groups]] (under `/apis/<group>/<version>`). The text explains that these groups contain specific [[concepts/resources-and-verbs]] that define available objects and actions. For practical access, it describes the use of [[concepts/kubectl-proxy]] for secure, local interaction. The second major section covers security, explaining [[concepts/authorization-modes]] such as [[concepts/node-authorization-in-kubernetes]], RBAC, and Webhook authorization. It notes that Webhook authorization can integrate with external projects like [[entities/open-policy-agent-opa]]. Finally, it warns against using testing modes like [[concepts/alwaysallow-and-alwaysdeny]] in production.

## Key Entities
- [[entities/open-policy-agent-opa]]

## Key Concepts
- [[concepts/api-groups]]
- [[concepts/core-api-group]]
- [[concepts/named-api-groups]]
- [[concepts/resources-and-verbs]]
- [[concepts/kubectl-proxy]]
- [[concepts/authorization-modes]]
- [[concepts/node-authorization-in-kubernetes]]
- [[concepts/alwaysallow-and-alwaysdeny]]

## Main Points
- The Kubernetes API is divided into a Core API Group and multiple Named API Groups for logical organization and versioning.
- API interactions are defined by specific resources (e.g., pods, deployments) and the verbs (actions) permitted on them, such as `get`, `list`, `create`, and `delete`.
- `kubectl proxy` is a recommended method for securely exploring the Kubernetes API from a local machine.
- Cluster authorization is controlled by a configurable chain of authorization modes, with RBAC being a primary mechanism for fine-grained access control.
- For testing, `AlwaysAllow` and `AlwaysDeny` modes exist but are strongly discouraged for production environments due to security risks.