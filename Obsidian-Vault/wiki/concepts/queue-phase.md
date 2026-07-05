---
type: concept
title: "Queue Phase"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/scheduling_f2b3ef]]"
tags:
  - scheduling
aliases:
  - active queue
  - Pod queue
---
# Queue Phase

## Definition
The Queue Phase is the initial stage in the Kubernetes Scheduling Framework where Pods are sorted and managed before scheduling begins. Pods enter an active queue, sorted by priority via the QueueSort plugin. This phase ensures that Pods are processed in an orderly manner based on their priority, facilitating efficient scheduling cycles. Errors during scheduling can trigger re-queuing through backoff queues.

## Key Characteristics
- It is the first phase in the Kubernetes Scheduling Framework pipeline.
- Pods are managed in two main types of queues: an active queue for immediate processing and backoff queues for Pods that encountered scheduling errors.
- The ordering of Pods within the queue is determined by the pluggable `QueueSort` extension point, which typically sorts Pods based on priority.
- This phase establishes a fair and orderly starting point for the scheduling cycle, ensuring high-priority Pods are considered first.
- It incorporates an error handling mechanism that re-queues failed Pods for subsequent attempts after a backoff period.

## Applications
- **Ordered Scheduling:** Provides a deterministic entry point for the scheduler by processing Pods in a consistent, priority-based order.
- **Priority Enforcement:** Ensures that cluster resources are allocated according to defined Pod priorities, a core feature of cluster resource management.
- **Resilient Scheduling:** Enhances scheduler robustness by allowing Pods to be automatically retried after transient scheduling failures, preventing permanent loss.

## Related Concepts
- 
- [[concepts/extension-points-in-scheduling]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- Pods enter an active queue, sorted by priority via a QueueSort plugin. — scheduling_f2b3ef
- Active and backoff queues manage pending Pods; errors trigger re-queuing via the Error handler. — scheduling_f2b3ef