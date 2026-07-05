---
title: "Remote Attestation"
tags:
  - concept
  - security
  - trust
  - cryptography
  - attestation
sources:
  - "[[sources/watchv=ccswz5bjlo8]]"
summary: "Protocol where a client verifies what software a remote server is running before trusting it with data — the server presents signed claims tied to a public key, and can only decrypt the client's data as long as those claims remain true."
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.55
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Remote Attestation

Remote attestation is a protocol that lets a client verify what software and hardware a remote server is running before entrusting it with data. It converts a "black box" remote server into a "translucent" one — the client can see what's happening inside before sending data. ^[extracted]

## How It Works

The client asks the server "what are you running?" The server replies with two things: a set of **signed claims** and a **public key**. ^[extracted]

The signed claims describe the server's identity and state:
- Running on genuine hardware
- Running a genuine GPU
- Running a specific set of software
- Using a particular bootloader
- Using a particular version of Linux (or OS)

The client checks these claims against its own trust policy (e.g., "I only trust Linux kernel 6.x and above" or "I only trust Apple-signed binaries"). If the claims satisfy the policy, the client encrypts data using the public key — and critically, this public key is **cryptographically bound to the claims**. The server can only decrypt as long as it is still running the exact software described in the attested claims. ^[extracted]

## Relationship to TPMs

On non-Apple hardware, remote attestation is tied to [[concepts/confidential-gpu|TPM]] (Trusted Platform Module) chips. TPMs provide the hardware root of trust that generates the signed claims. In cloud environments, vTPMs (virtual TPMs) provide equivalent functionality. Standards for remote attestation beyond TPM are still emerging. ^[extracted]

## In Apple's PCC

Remote attestation is the core of [[concepts/private-cloud-compute|Apple's PCC]]: the iPhone requests an attestation package, verifies the claims, and only then sends encrypted data. If the attestation changes mid-session, the AI engine can no longer decrypt the data. ^[extracted]

## Related

- [[concepts/private-cloud-compute|Private Cloud Compute]]
- [[concepts/verifiable-transparency|Verifiable Transparency]]
- [[concepts/confidential-gpu|Confidential GPU]]
- [[concepts/trust|Trust]]
- [[concepts/enforceable-guarantees|Enforceable Guarantees]]
- [[concepts/encryption|Encryption]]

## Sources

- <https://www.youtube.com/watch?v=CCsWZ5bJlO8>
