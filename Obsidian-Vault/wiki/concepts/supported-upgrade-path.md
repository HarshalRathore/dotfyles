---
title: "Supported Upgrade Path"
sources:
  - "[[sources/cluster-maintenance-draining-&-os-upgrades_98d707]]"
tags:
  - deployment
aliases:
  - K8s Upgrade Path
---
# Supported Upgrade Path

## Definition
The supported upgrade path in Kubernetes defines the official, sequential sequence of version upgrades that must be followed to ensure a safe and compatible cluster update process. It mandates that users upgrade through each minor version without skipping any releases, and only the three most recent minor versions of Kubernetes are supported at any given time.

## Key Characteristics
- **Sequential Upgrade Mandate:** Upgrades must be performed incrementally through each minor version (e.g., from 1.10 to 1.11 to 1.12).
- **Three-Version Support Window:** Only the latest three minor releases of Kubernetes are officially supported.
- **Compatibility Focus:** This policy is designed to ensure API compatibility and reduce the risk of encountering breaking changes.
- **Clear Upgrade Path:** Provides a clear and predictable procedure for cluster administrators to follow during maintenance.

## Applications
- **Cluster Maintenance Planning:** Used by DevOps and platform engineers to plan and schedule Kubernetes cluster upgrades, ensuring they follow the official sequence.
- **Risk Mitigation:** Helps prevent cluster instability and downtime by adhering to a tested and supported upgrade trajectory.
- **Compliance & Support:** Ensures the cluster remains within a supported version range, allowing access to official patches, fixes, and community support.

## Related Concepts
- [[concepts/semantic-versioning]]
- [[concepts/version-skew-policy]]

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "Kubernetes supports **only the latest three minor releases** at any time." — cluster-maintenance-draining-&-os-upgrades_98d707
- "**Never skip** minors: 1.10 → 1.11 → 1.12 → …" — cluster-maintenance-draining-&-os-upgrades_98d707