---
type: concept
title: "kubectl rollout status"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/rolling-updates-&-rollbacks_f484ef]]"
tags:
  - deployment
aliases:
  - rollout status
  - kubectl rollout
---
# kubectl rollout status

## Definition
The `kubectl rollout status` command is a Kubernetes command-line utility that monitors and reports the real-time status of a deployment rollout. It provides feedback on whether a deployment update is progressing, has completed successfully, or has encountered a failure.

## Key Characteristics
- **Real-time Monitoring:** It provides live feedback on the state of the rollout process.
- **Detailed Feedback:** Reports metrics such as the number of replicas updated, available, and ready.
- **Progress Detection:** Clearly indicates if the rollout is in progress, completed, or has stalled.
- **Early Issue Detection:** Helps operators identify and respond to deployment problems quickly.
- **Non-disruptive:** It only queries the status and does not alter the state of the deployment.

## Applications
- **Deployment Verification:** Used immediately after applying a deployment update (`kubectl apply` or `kubectl set image`) to verify the rollout is proceeding correctly.
- **Troubleshooting:** Essential for diagnosing failed or stuck deployments by identifying which part of the rollout process is problematic.
- **Automation Scripts:** Integrated into CI/CD pipelines or deployment scripts to gate further actions on successful rollout completion.
- **Operational Monitoring:** Used by cluster operators as part of routine checks to ensure system stability during updates.

## Related Concepts
- [[concepts/rollback]]
- [[concepts/revision-history]]

## Related Entities
- [[entities/kubectl]]
- [[entities/kubernetes]]

## Mentions in Source
- kubectl rollout status <deployment> → Check status of the rollout. — rolling-updates-&-rollbacks_f484ef
- Check rollout status: kubectl rollout status <deployment> — rolling-updates-&-rollbacks_f484ef