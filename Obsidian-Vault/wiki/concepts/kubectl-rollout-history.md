---
type: concept
title: "kubectl rollout history"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/rolling-updates-&-rollbacks_f484ef]]"
tags:
  - deployment
aliases:
  - kubectl rollout history command
  - rollout history
---
# kubectl rollout history

## Definition
`kubectl rollout history` is a command-line command used with the Kubernetes command-line tool (`kubectl`) to display the revision history of a specific Deployment. It lists all past revisions that have been deployed, enabling users to track changes and understand the evolution of a deployment over time.

## Key Characteristics
- Provides a chronological list of revisions for a Deployment, typically labeled as REVISION 1, REVISION 2, etc.
- Each revision corresponds to a specific change or update applied to the Deployment.
- Essential for auditing deployment changes and identifying the revision associated with a particular change.
- Serves as a prerequisite for targeted rollback operations, allowing users to specify a revision to revert to.
- Information is retrieved from the Deployment's ReplicaSets and the Kubernetes control plane.

## Applications
- **Change Tracking**: Monitoring the sequence of updates applied to a Deployment over time.
- **Rollback Planning**: Identifying the correct revision number to use when performing a rollback with `kubectl rollout undo`.
- **Troubleshooting**: Investigating which deployment revision might have introduced a bug or issue.
- **Compliance and Auditing**: Maintaining a record of deployment changes for operational or compliance reviews.

## Related Concepts
- [[concepts/revision-history]]
- [[concepts/rollback]]
- [[concepts/deployment]]

## Related Entities

## Mentions in Source
- "kubectl rollout history <deployment> → See revision history." — rolling-updates-&-rollbacks_f484ef
- "View rollout history: kubectl rollout history <deployment>" — rolling-updates-&-rollbacks_f484ef