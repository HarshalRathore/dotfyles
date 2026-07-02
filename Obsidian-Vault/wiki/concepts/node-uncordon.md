---
title: "node uncordon"
sources:
  - "cluster-maintenance-draining-&-os-upgrades_98d707"
tags:
  - deployment
aliases:
  - kubectl uncordon
---
# node uncordon

## Definition
Node uncordon is a Kubernetes operation that reverses the cordon state of a node, marking it as schedulable again for receiving new workloads.

## Key Characteristics
- Reverses the effect of the `cordon` command on a Kubernetes node.
- Sets the node's status to `Schedulable=true`.
- Does not automatically reschedule existing pods that were evicted or drained from the node.
- Is a core command (`kubectl uncordon`) used in cluster management workflows.

## Applications
- Performing post-maintenance node reintegration after tasks like OS upgrades or hardware repairs.
- Re-enabling a node for scheduling in a cluster after it was cordoned for troubleshooting or workload migration.
- Part of the standard node lifecycle management process, often following a drain and maintenance cycle.

## Related Concepts
- [[concepts/node-cordon]]
- [[concepts/node-drain]]

## Related Entities
- [[entities/kubectl]]

## Mentions in Source
- "kubectl uncordon <node> — Reverses cordon—marks node Schedulable again." — cluster-maintenance-draining-&-os-upgrades_98d707
- "Note: existing pods won't automatically return; new scheduling or replacements will." — cluster-maintenance-draining-&-os-upgrades_98d707