---
title: "Deployment Strategies"
summary: "> - Deployment Strategies – Two Ways to Upgrade"
sources:
  - "[[sources/init-containers_798910]]"
tags:
  - scaling
aliases:
  - Kubernetes Deployment Strategies
---
## Related Concepts
- [[concepts/rolling-update-strategy]]
- [[concepts/recreate-strategy]]
- [[concepts/rollout]]
- [[concepts/init-container]]
- [[concepts/deployment]]

## Related Entities
- [[entities/kubernetes]]
- Pods

## Mentions in Source
> **Source: rolling-updates-&-rollbacks_f484ef**
> - Deployment Strategies – Two Ways to Upgrade
> - 1️⃣ **Recreate Strategy**
> - 2️⃣ **Rolling Update Strategy** ✅ (Default)
> - 1️⃣ Recreate Strategy: All old Pods are deleted first, then new ones are created.

> **Source: init-containers_798910**
> - a process that waits for an external service or database to be up before the actual application starts
> - until nslookup myservice; do echo waiting for myservice; sleep 2; done;