---
title: Hot Cache
updated: 2026-07-03T09:30:00Z
- Ingested Charles Frye's "How Fast Are LLM Inference Engines Anyway?" (AI Engineer World's Fair 2025) — Modal's Developer Advocate presents the LLM Almanac benchmark comparing vLLM, SGLang, and TensorRT-LLM across 10+ models on H100s. Key finding: prefill-dominated workloads achieve ~4x higher throughput than decode-dominated; context is cheaper than reasoning. Frye's 2023 prediction that open models would catch up when capabilities saturate has been validated. Created 1 entity (charles-frye), 1 concept (prefill-decode-throughput-tradeoff), 1 reference. Updated 5 pages (modal, vllm, sglang, inference-performance-evaluation, enterprise-inference-infrastructure).
## Recent Activity
- Ingested Chris Kelly's "Vibes Won't Cut It" (AI Engineer World's Fair 2025) — production critique of AI coding hype; code review as primary skill.
- Ingested Michael Grinich's "CIAM for AI: Authn/Authz for Agents" (AI Engineer World's Fair 2025) — WorkOS CEO on four identity architecture patterns for agents (persona shadowing, delegation chains, capability tokens, escalation to humans), emerging standards (OAuth 2.1+MCP, UMA, GNAP, OIDC-A, Verifiable Credentials), middleware trust boundary pattern, and the agent traffic inversion prediction. Created 1 entity (michael-grinich), 6 concepts (agent-identity, persona-shadowing, delegation-chains, capability-based-tokens, agent-middleware-trust-boundary, agent-traffic-inversion), 1 reference. Updated 2 entities (workos, cloudflare).
- Ingested Jmo's "The Unofficial Guide to Apple's Private Cloud Compute" (AI Engineer World's Fair 2025 CONFSEC track) — deep-dive into Apple's PCC architecture.
- Ingested Clay Bavor's "Rise of the AI Architect" (AI Engineer World's Fair 2025).
- Ingested Josh Purtell's "Stateful Environments for Vertical Agents" (AI Engineer World's Fair 2025).

## Active Threads
- **Agent identity and auth** — new thread: four architecture patterns for agent identity (persona shadowing, delegation chains, capability tokens, middleware boundary), emerging protocols (OAuth 2.1+MCP, UMA, GNAP, OIDC-A, Verifiable Credentials), and the traffic inversion prediction (95% human→95% agent). Open questions: how to adapt human-consent protocols for machine auth, how to implement dynamic scope negotiation in production.
- **AI pricing frameworks** — first business/pricing concepts in the wiki. Pricing-as-friction provides a unifying framing device; the three principles give a toolkit for evaluating AI product pricing decisions. Agent cost predictability is an open design problem with early solutions emerging.

## Key Takeaways
- Agent identity is a fundamentally new problem: agents are neither humans (browser-based auth) nor machines (certificate-based auth) — they need a hybrid identity paradigm
- The middleware trust boundary pattern (treat agents as untrusted, put auth middleware between agent code and resources) is the dominant emerging architecture
- Grinich predicts 95% of application traffic will be agent-to-agent, inverting today's 95% human ratio
- Pricing is friction — it signals value and validates willingness-to-pay, but surprise billing is the worst kind of friction for AI agents
- AI-native pricing requires thinking about margin *structure* (what drives costs) rather than literal margins, because costs change rapidly
- AI companies should simulate pricing changes across customer cohorts before rolling them out
- Predictions: price wars, convergence to effectively unlimited plans, outcome-based pricing becoming more real, real-time spend management sophistication
## Flagged Contradictions
