---
title: Decoupled Architecture
category: concepts
tags:
- architecture
- gpu-inference
- cpu-workers
- queue-based
- distributed-systems
- event-driven
- runtime-decoupling
- design-time-decoupling
summary: A serving architecture where CPU workers and GPU workers operate as independent, queue-mediated layers — preventing GPU blocking on I/O and enabling heterogeneous compute placement. Also covers the...
sources:
- 'https://www.youtube.com/watch?v=ey4o9m6aswi'
- 'https://www.youtube.com/watch?v=kj9ezytws1y'
provenance:
  extracted: 0.75
  inferred: 0.2
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/inference-serving]]'
  type: related_to
- target: '[[concepts/distributed-inference]]'
  type: extends
- target: '[[concepts/back-pressure]]'
  type: related_to
- target: '[[concepts/work-starvation]]'
  type: related_to
- target: '[[concepts/events-wrong-abstraction-thesis]]'
  type: related_to
---

A decoupled CPU/GPU architecture separates request preprocessing (CPU-bound) from model inference (GPU-bound) into independent worker pools connected by distributed queues. This is a critical pattern for ML serving at scale.

## Architecture

```
[Client] → [CPU Workers] → [Distributed Queue (Redis)] → [GPU Workers] → [Response]
                                    ↑
                            [SeaweedFS / Object Storage]
```

**CPU Workers**: Handle input preprocessing — video/image encoding, prompt parsing, VLM captioning, data validation. These are I/O and CPU-bound tasks that should never block expensive GPU resources.

**Distributed Queue**: A shared queue (Luma uses Redis) that decouples the two layers. CPU workers push preprocessed work into the queue; GPU workers pull from it. This enables:
- Independent scaling of CPU and GPU layers
- Buffering of multimedia inputs so GPUs don't idle waiting for preprocessing
- Cross-cluster work distribution (any GPU cluster can pull from the same queue)

**GPU Workers**: Execute model inference on preprocessed work. Because they're decoupled from input handling, GPUs can focus entirely on computation.

## Benefits

1. **GPU utilization**: GPUs are never blocked on I/O or preprocessing. They always have work ready in the queue.
2. **Heterogeneous placement**: GPU workers can run anywhere with network connectivity to Redis and distributed storage (Luma uses Tailscale for this).
3. **Independent scaling**: CPU and GPU layers scale independently based on their respective bottlenecks.
4. **Multi-cluster distribution**: Multiple GPU clusters pull from the same global queue, enabling resource pooling.

## Challenges

The decoupled architecture introduces new problems:
- **Back pressure**: CPU workers may pull more work than a particular GPU cluster can handle, creating imbalanced queues
- **Work starvation**: Priority-based scheduling can starve lower-priority jobs
- **Queue management complexity**: Managing multiple queues across clusters is described by Luma engineers as "the least enjoyable part of working at Luma"

These challenges require additional systems (dispatch limitations, SLA-based scheduling) built on top of the decoupled foundation.

## Runtime vs Design-Time Decoupling

A critical distinction in event-driven architectures: EDA is loosely coupled at runtime but tightly coupled at design time. ^[extracted]

**Runtime loose coupling** means that if one service goes down, other services can keep running — events are queued and processed later. This is what most teams point to when they claim EDA is "loosely coupled." ^[extracted]

**Design-time tight coupling** means that every service that consumes an event is implicitly dependent on its format. If the event schema changes, every downstream consumer must be updated — including consumers three hops away that nobody knew were consuming the event. ^[extracted]

This distinction matters because runtime loose coupling creates an illusion of safety that masks design-time coupling. Teams avoid iterating on their event schemas because they fear breaking downstream systems they didn't know existed. ^[extracted]

## Relationship to Existing Concepts

- **[[concepts/events-wrong-abstraction-thesis|Events are the Wrong Abstraction Thesis]]** — This thesis argues that EDA's design-time coupling is the core problem, not its runtime loose coupling. ^[inferred]
- **[[concepts/durable-execution|Durable Execution]]** — Durable execution achieves true decoupling by abstracting away the event layer entirely. ^[inferred]
