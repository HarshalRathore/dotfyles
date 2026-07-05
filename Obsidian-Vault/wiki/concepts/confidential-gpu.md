---
title: "Confidential GPU"
tags:
  - concept
  - hardware
  - security
  - gpu
  - confidential-computing
  - tpm
aliases:
  - Confidential GPU Computing
  - Confidential H100
  - GPU Memory Encryption
sources:
  - "[[sources/watchv=ccswz5bjlo8]]"
summary: "Hardware trust technology where GPU memory is encrypted (H100/H200), preventing physical memory access attacks — paired with TPMs/vTPMs for attestation and key management."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Confidential GPU

Confidential GPU refers to the combination of hardware security technologies that enable trusted execution on GPUs — specifically memory encryption (available on NVIDIA H100 and H200 GPUs) and TPM-based attestation. These technologies bring [[concepts/private-cloud-compute|Private Cloud Compute]]-style guarantees to the non-Apple ecosystem. ^[extracted]

## GPU Memory Encryption

H100 and H200 GPUs support memory encryption, meaning the GPU's RAM is encrypted at the hardware level. If someone physically accesses the GPU and attempts to read its memory directly, the data is unintelligible. ^[extracted]

## TPMs and vTPMs

Trusted Platform Modules (TPMs) are dedicated hardware chips (available on most Intel and AMD processors) that: ^[extracted]
- Securely store private keys that can never be extracted from the hardware
- Provide [[concepts/remote-attestation|remote attestation]] capabilities by generating signed claims about the system state
- In cloud environments, virtual TPMs (vTPMs) provide the same functionality

The TPM is the non-Apple equivalent of Apple's Secure Enclave. ^[inferred]

## Confidential VMs

Cloud providers now offer confidential VMs with confidential GPUs. These provide a full trusted execution environment where the entire compute stack (CPU, memory, GPU) is encrypted and attestable. ^[extracted]

## Related

- [[concepts/private-cloud-compute|Private Cloud Compute]]
- [[concepts/remote-attestation|Remote Attestation]]
- [[concepts/verifiable-transparency|Verifiable Transparency]]
- [[concepts/enforceable-guarantees|Enforceable Guarantees]]
- [[concepts/trust-root|Trust Root]]

## Sources

- <https://www.youtube.com/watch?v=CCsWZ5bJlO8>
