---
title: "CISO Approval"
category: concepts
tags:
  - ciso
  - security
  - compliance
  - enterprise
  - regulated-industries
  - architecture
summary: The enterprise security review process that AI and platform tools must pass before deployment in regulated organizations. The architecture itself — not just the AI models — must satisfy CISO requirements.
sources:
  - "AIEF2025 - Building agent fleet architectures your CISO doesn't hate — Lou Bichard, Gitpod - https://www.youtube.com/watch?v=d9rsC6_VLoA"
provenance:
  extracted: 0.75
  inferred: 0.25
  ambiguous: 0.00
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
  - target: [[concepts/agent-fleet-architecture|Agent Fleet Architecture]]
    type: prerequisite-for
  - target: [[concepts/data-sovereignty|Data Sovereignty]]
    type: requires
  - target: [[concepts/secure-dev-environment|Secure Dev Environment]]
    type: required-for
  - target: [[concepts/mcp-compliance-ciso-governance|MCP Compliance & CISO Governance]]
    type: related_to
---

# CISO Approval

**CISO approval** is the enterprise security review process that any tool, platform, or AI system must pass before deployment in regulated organizations. The phrase "your CISO doesn't hate" from Lou Bichard's AIEF2025 talk captures the central tension of enterprise AI: the architecture must be both powerful and compliant.

## What CISOs Care About

For regulated industries (banks, pharmaceuticals, healthcare), CISOs evaluate:

- **Data residency**: Where does data live? Does it leave the organization?
- **Access controls**: Who can access the data and systems?
- **Auditability**: Can the system's actions be logged and reviewed?
- **Reliability**: What happens when it fails? Is there downtime risk?
- **Vendor risk**: What is the vendor's security posture and financial stability?

## The Architecture Problem

CISO approval is not primarily about the AI models — it's about the **architecture** that deploys and operates them. The same AI model can be CISO-approved in one architecture (customer-owned infrastructure, managed substrate) and rejected in another (multi-tenant SaaS).

## Related Pages

- [[concepts/agent-fleet-architecture|Agent Fleet Architecture]] — The architecture pattern designed for CISO approval
- [[concepts/data-sovereignty|Data Sovereignty]] — A key CISO requirement
- [[concepts/secure-dev-environment|Secure Dev Environment]] — Built for CISO-approved deployments
- [[concepts/mcp-compliance-ciso-governance|MCP Compliance & CISO Governance]]
