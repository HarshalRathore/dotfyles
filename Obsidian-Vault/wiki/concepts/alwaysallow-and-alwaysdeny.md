---
type: concept
title: "AlwaysAllow and AlwaysDeny"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb]]"
tags:
  - security
aliases:
  - AlwaysDeny mode
---
# AlwaysAllow and AlwaysDeny

## Definition
AlwaysAllow and AlwaysDeny are two simple authorization modes in Kubernetes that control access to the API server. They represent the two extremes of request authorization: one permits all requests unconditionally, while the other denies all requests unconditionally.

## Key Characteristics
- **Simple Policy Models:** Implement the most basic authorization policies without complex rule evaluation.
- **Development/Testing Focus:** Primarily intended for local development clusters, testing, and debugging, not for production security.
- **Security Implications:** 
    - **AlwaysAllow:** Creates a significant security risk by bypassing all authentication and authorization checks, potentially granting unauthorized access.
    - **AlwaysDeny:** Prevents all access, including from administrators, which can render the cluster unmanageable.
- **Lack of Granularity:** Neither mode offers fine-grained control over who can do what with specific resources.


## Applications
- **Local Development:** Quickly setting up a personal or single-node cluster where security is not a concern, allowing developers to focus on application logic.
- **Testing Scenarios:** Temporarily enabling `AlwaysAllow` to simplify integration tests that need unrestricted API access, though care must be taken to reset the configuration afterward.
- **Debugging & Diagnostics:** Using `AlwaysDeny` to isolate issues by confirming whether problems are caused by a permissions block.
- **Learning & Demonstration:** Serving as a clear, conceptual starting point for understanding the broader Kubernetes [[concepts/authorization-modes]] framework.


## Related Concepts
- [[concepts/authorization-modes]]
- [[concepts/rbac]]
- [[concepts/abac]]

## Related Entities
- [[entities/kubernetes]]


## Mentions in Source
- AlwaysAllow: Permits all requests without any checks. — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb
- AlwaysDeny: Denies all requests, regardless of credentials. — kubernetes-api-groups-authorization-and-rbac-a-comprehensive-overview_ab21cb