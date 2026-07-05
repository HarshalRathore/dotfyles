---
title: "AIEF2025 - Dream Machine: Scaling to 1M Users in 4 Days — Keegan McCallum, Luma AI"
category: references
tags: [aief2025, luma-ai, gpu-scaling, inference-serving, fair-scheduling, model-versioning, distributed-inference]
summary: Keegan McCallum's talk on scaling Dream Machine from 500 to ~9,000 GPUs in 4 days, custom PyTorch serving, SLA-based fair scheduling, and model versioning.
sources:
  - "[[sources/watchv=ey4o9m6aswi]]"
provenance:
  extracted: 0.95
  inferred: 0.03
  ambiguous: 0.02
base_confidence: 0.95
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: "[[luma-ai]]"
    type: related_to
  - target: "[[keegan-mccallum]]"
    type: related_to
  - target: "[[inference-serving]]"
    type: related_to
  - target: "[[fair-scheduling]]"
    type: related_to
---

## Talk Summary

Keegan McCallum from Luma AI presented on the infrastructure challenges and solutions behind scaling Dream Machine — Luma's video generation model — from launch to 1 million users in 4 days (June 2024). This matches ChatGPT's historic growth trajectory, with Luma processing ~500,000 videos in the first 12 hours.

## Key Narrative: The Launch Crisis

The talk opens with the launch-day crisis on June 11, 2024:
- Luma allocated ~500 H100 GPUs for launch — "woefully unprepared"
- Requests poured in faster than expected, creating a queue of ~100,000 requests
- Within 6 hours, the team manually SSH'd into every GPU from every provider, reaching ~5,000 GPUs
- Queues drained to ~300 by 2 PM
- Luma's CEO tweeted "come on, come on in, it'll be faster now" — causing a 10x traffic spike
- Queues immediately surged again; the training cluster (~4,000 more H100s) was repurposed but "barely made a dent"

## Architecture: From Triton to Custom PyTorch

**Initial stack**: Tightly coupled containers using Triton Inference Server. Problems:
- Brittle — CPU processes didn't detect Triton failures
- Not built for multi-node, multi-GPU video model inference
- Poor support for non-NVIDIA chipsets (AMD, Grok)
- Difficult for researchers to develop against

**Rebuilt stack**: Decoupled CPU/GPU architecture on vanilla PyTorch:
- CPU workers queue multimedia inputs in Redis-backed distributed queues
- GPU workers pull from queues independently — never blocked on I/O
- SeaweedFS for distributed storage
- Tailscale for cross-provider connectivity
- Any GPU anywhere with Redis/storage access can join the pool

## Scheduling: SLA-Based Fair Scheduling

The core scheduling problem: multiple user tiers (API, Enterprise, Unlimited, Plus, Light) with different priority levels in a pull-based scheduler. Naive priority scheduling causes work starvation — lower-tier users waited 7-9 hours.

**Solution**: SLA-based aging mechanism:
1. Product team defines SLAs per tier (API: ~2 min, Light: ~10 min)
2. Jobs age in the queue; at 50% of SLA threshold, priority increases
3. Jobs ranked by percentage of SLA consumed (not absolute priority)
4. An API job at 50% of SLA ranks equally with a Light job at 50% of SLA
5. Produces "intuitive fair scheduling behaviors"

Implemented by engineer Sorish in "a couple hours" after the system was designed.

## Model Management: Versioning and Hot Rollout

**Model repo pattern**: Each model has a folder in object storage with immutable versioned subfolders (v1.0, v1.1, etc.), each containing the full Python environment, dependencies, and checkpoints. A YAML file at the root points to the active version.

**Hot rollout**: When the YAML pointer is updated, workers switch versions on-the-fly without restarting. This enables fleet-wide deployment across thousands of H100s and AMD GPUs simultaneously.

**Rollback**: Switching the YAML pointer back restores the previous version — "very rarely are there issues that you can't really solve by just rolling back."

## Hardware Strategy

- **Primary**: NVIDIA H100 GPUs
- **Exploring**: AMD GPUs, Grok chips (via partnership with Humane)
- **Strategy**: Target vanilla PyTorch for hardware agnosticism; optimize performance over time
- **Excel team**: ~10 engineers optimizing low-level PyTorch operations using Triton compiler, working with chipset providers

## Key Quotes

> "The least enjoyable part of working at Luma is managing these queues."
> "Scaling to 1 million users in 4 days was pretty nuts."
> "It makes [researchers] very upset" (auto-scaling on the training cluster)

## Entities Mentioned

- **Keegan McCallum** — Speaker, ML engineer at Luma AI
- **Sorish** — Luma engineer who implemented SLA-based scheduling
- **Vasu** — Luma engineer, also affected by queue management
- **Cron** — Luma engineer who manages the public API
- **Luma CEO** — "Self-appointed chaos monkey" who amplified launch traffic via tweet

## Related Pages

- [[luma-ai]] — Company overview
- [[keegan-mccallum]] — Speaker profile
- [[inference-serving]] — Serving architecture patterns
- [[fair-scheduling]] — SLA-based scheduling system
- [[model-versioning]] — Model repo pattern and hot rollout
- [[distributed-inference]] — Multi-node GPU inference
- [[triton-inference-server]] — NVIDIA's inference server (initially used, then replaced)

## Q&A Highlights

**Hardware optimization strategy**: Chipset providers (NVIDIA, AMD, Grok) ensure PyTorch compatibility at baseline versions, doing much of the initial compatibility work. Models typically work on new chipsets immediately but run "a bit more slowly." Performance optimization happens over time through Luma's Excel team (~10 engineers) using tools like the Triton compiler, working directly with chipset providers.

**Cloud provider infrastructure**: Luma works with cloud providers who supply working Kubernetes clusters at minimum. Node provisioning (VMs vs bare metal) varies by provider — Amazon provides bare metal, while others may provide VMs. Luma does not provision nodes themselves.

**Application architecture**: The Dream Machine application uses an agent-based interaction flow. When users upload video or images, a VLM (vision-language model) captions the media to enhance the overall prompt. True VQA (Visual Question Answering) is not yet implemented but "may or may not be some coming."

**Multi-vendor chipset exploration**: Luma works closely with NVIDIA and AMD, and is exploring other providers. Amazon has its own chips; Grok has chips. A significant partnership with Humane (which works closely with Grok) provides a pathway to evaluate Grok chips for inference workloads.
