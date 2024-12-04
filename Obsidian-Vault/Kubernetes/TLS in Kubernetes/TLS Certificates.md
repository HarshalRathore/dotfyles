## How TLS works?
#### 1. **The Purpose of TLS Certificates**

- TLS certificates ensure **secure communication** between clients and servers, preventing unauthorized access to sensitive data (e.g., banking details).
- Without encryption, data transmitted over the internet is vulnerable to interception (e.g., by hackers).

#### 2. **Encryption Types in TLS**

- **Symmetric Encryption**:
    - Uses the **same key** for both encryption and decryption.
    - Vulnerable if the key is intercepted by a hacker.
- **Asymmetric Encryption**:
    - Utilizes a **key pair**: a public key (shared openly) and a private key (kept confidential).
    - Data encrypted with the public key can only be decrypted using the corresponding private key.

#### 3. **Asymmetric Encryption in TLS Handshakes**

- **How It Works**:
    1. The server generates a public-private key pair.
    2. The server shares its **public key** with the client.
    3. The client encrypts its **symmetric key** with the server's public key and sends it back.
    4. The server decrypts the symmetric key using its private key.
- From then on, communication uses the symmetric key for efficient encryption.

#### 4. **Certificates and Preventing Man-in-the-Middle Attacks**

- Even with encryption, attackers can impersonate a server (man-in-the-middle attack).
- **TLS Certificates** are used to validate the server's identity.
- Certificates ensure that the client is communicating with the intended server and not an imposter.

#### 5. **Certificate Authorities (CAs) and Trust**

- **CAs** are trusted third-party entities that verify domain ownership and issue certificates.
- A certificate contains:
    - The server’s **public key**.
    - The **domain name**.
    - The CA's **digital signature**.
- Browsers verify:
    1. If the certificate matches the domain.
    2. If the CA is trusted (from a preloaded list).
- **Self-Signed Certificates**:
    - Not issued by a trusted CA.
    - Trigger browser warnings due to the lack of trust.

#### 6. **Public Key Infrastructure (PKI)**

- PKI involves:
    1. Generating a private key.
    2. Creating a **Certificate Signing Request (CSR)** containing the public key.
    3. Submitting the CSR to a CA for signing.
    4. Receiving a signed certificate.
- PKI encompasses the entire process of certificate creation, validation, and management.