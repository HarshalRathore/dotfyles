---
type: concept
title: "Memory Suffixes"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "[[sources/resource-requests-&-limits_4bd978]]"
tags:
  - scaling
aliases:
  - Binary vs Decimal Suffixes
  - Kubernetes Memory Suffixes
---
# Memory Suffixes

## Definition
Memory suffixes in Kubernetes refer to the notation system used for specifying memory requests and limits. This system includes both binary units (such as Ki, Mi, Gi) based on powers of 2 and decimal units (such as k, M, G) based on powers of 10. Understanding the distinction between these two systems is essential for accurate resource configuration and preventing scheduling issues in Kubernetes clusters.

## Key Characteristics
- **Binary suffixes (base-2):** Ki (kibibyte) = 2^10 bytes, Mi (mebibyte) = 2^20 bytes, Gi (gibibyte) = 2^30 bytes, Ti (tebibyte) = 2^40 bytes
- **Decimal suffixes (base-10):** k (kilobyte) = 10^3 bytes, M (megabyte) = 10^6 bytes, G (gigabyte) = 10^9 bytes, T (terabyte) = 10^12 bytes
- **Size difference:** 1 Gi = 1,024 Mi while 1 G = 1,000 M, meaning binary units are larger than their decimal counterparts at the same scale
- **Example:** 256Mi equals 256 Mebibytes (256 × 2^20 bytes ≈ 268 MB), which differs from 256M (256 Megabytes = 256 × 10^6 bytes)
- **Default unit:** When no suffix is specified, Kubernetes treats the value as bytes
- **Case sensitivity:** Uppercase K is not valid; lowercase k is used for kilobytes in decimal notation

## Applications
- **Pod resource requests:** Specifying minimum memory guarantees for containers using `resources.requests.memory` in pod/container specs
- **Pod resource limits:** Setting maximum memory caps for containers using `resources.limits.memory` to prevent memory exhaustion
- **ResourceQuota enforcement:** Defining namespace-level memory quotas using appropriate suffix notation
- **Cluster capacity planning:** Accurately calculating node memory requirements when sizing workloads
- **Avoiding scheduling failures:** Ensuring pod memory requests do not exceed node capacity due to unit miscalculation

## Related Concepts
- [[concepts/resourcequota]]
- [[concepts/resource-requests]]
- [[concepts/resource-limits]]
- Memory Management

## Related Entities
- [[entities/kubernetes]]

## Mentions in Source
- "`256Mi` = 256 Mebibytes (2²⁰ bytes)" — resource-requests-&-limits_4bd978
- "**Gi** vs **G**: Gi = 1,024 Mi; G = 1,000 MB" — resource-requests-&-limits_4bd978