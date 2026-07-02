---
type: concept
title: "Man-in-the-Middle Attack"
created:
  - 2026-06-30
updated:
  - 2026-06-30
sources:
  - "tls-certificates_c8ca8c"
tags:
  - security
aliases:
  - Eavesdropping
---
# Man-in-the-Middle Attack

## Definition
A Man-in-the-Middle (MITM) attack is a security threat where an attacker secretly intercepts and potentially alters communication between two parties who believe they are communicating directly.

## Key Characteristics
- **Interception**: The attacker positions themselves between two communicating entities (e.g., a client and a server).
- **Potential Alteration**: The attacker can not only eavesdrop on the communication but also inject, modify, or block data.
- **Bypass of Basic Encryption**: Even with encryption, an MITM attack is possible if the attacker can successfully impersonate a legitimate server, fooling the client into establishing an encrypted session with the attacker.
- **Relies on Impersonation**: The attack often succeeds by leveraging weaknesses in authentication mechanisms, such as compromised Certificate Authorities, invalid certificate validation, or social engineering.
- **Threat to Confidentiality and Integrity**: It directly compromises the confidentiality (eavesdropping) and integrity (data alteration) of communications.

## Applications
MITM attacks are a critical concern in any scenario requiring secure, authenticated communication over untrusted networks. Key application areas include:
- **Insecure Wi-Fi Networks**: Attackers on public Wi-Fi can position themselves between users and the internet.
- **Compromised Certificate Authorities (CAs)**: A malicious or compromised CA can issue fraudulent certificates, enabling MITM attacks on encrypted (HTTPS/TLS) traffic.
- **Public Key Infrastructure (PKI) Vulnerabilities**: Flaws in how clients validate server certificates (e.g., not checking the hostname) can allow impersonation.
- **Session Hijacking**: After intercepting authentication credentials, an attacker can impersonate a valid session.
- **DNS Spoofing**: Redirecting a user's DNS request to a malicious server controlled by the attacker.
- **SSL Stripping**: Downgrading a secure HTTPS connection to an insecure HTTP connection, removing encryption to intercept data.

## Related Concepts
- [[concepts/tls-certificates]]
- [[concepts/asymmetric-encryption]]
- [[concepts/symmetric-encryption]]
- [[concepts/tls-handshake]]
- [[concepts/certificate-generation]]

## Related Entities
- [[concepts/certificate-authority-ca]]
- [[entities/kubernetes]]

## Mentions in Source
- "Even with encryption, attackers can impersonate a server (man-in-the-middle attack)." — tls-certificates_c8ca8c
- "Certificates ensure that the client is communicating with the intended server and not an impostor." — tls-certificates_c8ca8c