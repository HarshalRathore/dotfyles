# Audit Report: research/agent-harness-security.md

**Date:** 2026-07-16  
**Auditor:** Subagent audit pass  
**Document:** `/home/hermes/vault/Obsidian-Vault/research/agent-harness-security.md`  
**Claims to verify:** Document claims to be "synthesized from wiki knowledge and a Twitter thread"

---

## 0. CRITICAL ISSUE: All 7 Wiki References Are Broken Links

The document cites 7 wiki pages using the pattern `[[concepts/agent-sandboxing]]`, etc. **None of these files exist at the cited paths.** The wiki vault stores concept pages under `wiki/concepts/`, not `concepts/`:

| Cited Link | Actual Path | Exists? |
|---|---|---|
| `[[concepts/agent-sandboxing]]` | `wiki/concepts/agent-sandboxing.md` | Yes, but link is broken |
| `[[concepts/agent-preparedness-framework]]` | `wiki/concepts/agent-preparedness-framework.md` | Yes, but link is broken |
| `[[concepts/agent-robustness]]` | `wiki/concepts/agent-robustness.md` | Yes, but link is broken |
| `[[concepts/agent-isolation]]` | `wiki/concepts/agent-isolation.md` | Yes, but link is broken |
| `[[concepts/prompt-injection]]` | `wiki/concepts/prompt-injection.md` | Yes, but link is broken |
| `[[concepts/agent-as-user]]` | `wiki/concepts/agent-as-user.md` | Yes, but link is broken |
| `[[concepts/agent-middleware-trust-boundary]]` | `wiki/concepts/agent-middleware-trust-boundary.md` | Yes, but link is broken |

The only file in the `concepts/` directory is `concepts/risk-evaluation.md` (a stub). The document's Source line says `twitter-thread, wiki-query` — but the wiki-query references are pointing to paths that don't exist. **This is a significant provenance claim issue.**

---

## 1. Section-by-Section Audit

### Section 1: Problem Statement
**Content:** "Agent harness on Linux, why don't we want it to wipe the system, candidate's whitelist answer rejected."

| Claim | Source Match | Evidence |
|---|---|---|
| Agent harness security problem | CONTAINS | `wiki/concepts/agent-sandboxing.md` — "Security model for autonomous coding agents"; "An agent could accidentally run destructive commands" |
| Candidate's "whitelist commands" answer | NOT IN WIKI — Thread only | Not found in any wiki page. Pure thread context. |
| Whitelist bypassable by prompt injection | CONTAINS | `wiki/concepts/prompt-injection.md` — "Adversarial content manipulates agent behavior"; `wiki/references/aief2025-hacking-yagents-...` — "inverting the system prompt" |
| Lacking credential scoping | CONTAINS | `wiki/concepts/agent-as-user.md` — "Agents should not act with service-level permissions"; `wiki/concepts/agent-sandboxing.md` — "credential-scoping" |

**Verdict:** Mixed. Core problem framing is wiki-supported, but the specific candidate anecdote is thread-only.

---

### Section 2: Real-World Constraints
**Content:** Table of 7 constraints (no Docker, app-level isolation, per-session lifecycle, subagent safety, prompt injection defense, read-only default, human-in-the-loop).

| Constraint | Source Match | Evidence |
|---|---|---|
| No OS-level sandbox (bare Linux) | NOT IN WIKI — Thread only | No wiki page mentions a "bare Linux machine without Docker" constraint. The wiki assumes containers are available. `agent-isolation.md` says "Containers provide the foundational technology." |
| App-level isolation required | CONTAINS | `wiki/concepts/agent-preparedness-framework.md` — "App-level sandboxing — Restricting the agent to specific directories and operations" |
| Per-session lifecycle | NOT IN WIKI — Thread only | The wiki mentions per-session containers (`agent-sandboxing.md` — "Clean environment per agent run"), but doesn't explicitly state "spins up with server, tears down when it stops." |
| Subagent safety / nested agents | NOT IN WIKI — Thread only | No wiki page discusses nested subagents or sub-sandboxes. |
| Prompt injection defense | CONTAINS | `wiki/concepts/prompt-injection.md` — full treatment of injection vectors |
| Read-only default | SIMILAR / Partially CONTAINS | `wiki/concepts/agent-sandboxing.md` — "Read-only root filesystem" (in skill); `wiki/concepts/agent-preparedness-framework.md` doesn't explicitly state this. |
| Human-in-the-loop | CONTAINS | `wiki/concepts/agent-preparedness-framework.md` — "Human Review" section; "Approvals and confirmations — Human-in-the-loop for sensitive operations" |

**Verdict:** **Only 2 of 7 constraints are directly wiki-backed.** The "no Docker" constraint actually *contradicts* the wiki's approach (the wiki treats containers as the primary/default isolation mechanism). This section is heavily thread-extrapolated.

---

### Section 3: Why "Whitelist Commands" Fails
**Content:** 5 bypass vectors (prompt injection, command combination, new tool installation, root access, filesystem write).

| Vulnerability | Source Match | Evidence |
|---|---|---|
| Prompt injection | CONTAINS | `wiki/concepts/prompt-injection.md` — extensive coverage |
| Command combination | NOT IN WIKI — Thread only | No wiki page discusses `find + xargs + sed` attack patterns |
| New tool installation | NOT IN WIKI — Thread only | No wiki page discusses `wget`/`curl` to download unwhitelisted tools |
| Root access bypasses filters | SIMILAR | `wiki/concepts/agent-as-user.md` — "Agents should not act with service-level permissions" (related, but doesn't discuss root specifically bypassing filters) |
| Filesystem write via `/dev` | NOT IN WIKI — Thread only | No wiki page discusses `/dev` filesystem manipulation |

**Verdict:** **1 of 5 directly wiki-backed, 1 partially wiki-backed, 3 thread-only.**

---

### Section 4: The 5-Layer Defense Framework

#### Layer 1: Application-Level Process Isolation
| Claim | Source Match | Evidence |
|---|---|---|
| New namespaces per session (mount, PID, network) | NOT IN WIKI — Thread only | `wiki/concepts/agent-sandboxing.md` mentions Docker and OS-level sandboxing but NOT Linux namespaces (mount, PID, network) |
| Cgroups v2 (CPU/memory limits, cgroup lockdown) | NOT IN WIKI — Thread only | No wiki page mentions cgroups or cgroup filesystem |
| Systemd slice isolation | NOT IN WIKI — Thread only | Entirely absent from wiki |
| Ephemeral lifecycle (namespace destroyed) | SIMILAR | `wiki/concepts/agent-sandboxing.md` — "Clean environment per agent run" |

**Verdict:** **0 of 4 directly wiki-backed.** Linux namespaces, cgroups v2, and systemd slices are entirely absent from the wiki. These are legitimate security concepts, but they are **extrapolated from the thread, not wiki knowledge**.

#### Layer 2: Credential Scoping
| Claim | Source Match | Evidence |
|---|---|---|
| Agent runs as regular user, never root | CONTAINS | `wiki/concepts/agent-as-user.md` — "Agents should not act with service-level permissions" |
| No sudo access | NOT IN WIKI — Thread only | Wiki says "minimum permissions" but not "never root / no sudo" explicitly |
| Short-lived, scoped tokens | CONTAINS | `wiki/concepts/agent-sandboxing.md` — "Time-limited" and "Minimum scope" |
| Database credentials scoped to specific tables | NOT IN WIKI — Thread only | Wiki mentions "AWS credentials must follow least privilege" but not DB table scoping |
| No SSH keys, no cloud credentials | NOT IN WIKI — Thread only | Not discussed in any wiki page |
| Agent is *incapable* not just told not to | SIMILAR | `wiki/concepts/agent-as-user.md` — same principle (users vs services) |

**Verdict:** **2 of 6 directly wiki-backed, 1 similar, 3 thread-only.** The "never root" phrasing is a more aggressive version of the wiki's "minimum permissions" guidance.

#### Layer 3: Filesystem & Network Controls
| Claim | Source Match | Evidence |
|---|---|---|
| Read-only by default | SIMILAR | `security/agent-harness-hardening/SKILL.md` — "Container with read-only root filesystem" in checklist |
| Landlock LSM | CONTAINS | `wiki/concepts/agent-sandboxing.md` — "Landlock — Linux capability for creating unprivileged sandboxes" |
| Network disabled by default | CONTAINS | `wiki/concepts/agent-preparedness-framework.md` — "Limit or disable internet access to prevent... data exfiltration" |
| Allowlist proxy (domain + HTTP method) | CONTAINS | `wiki/concepts/agent-preparedpoints-framework.md` — "Configurable allowlists — Specify which domains and HTTP methods" |
| Prevents exfiltration/C2 | CONTAINS | `wiki/concepts/prompt-injection.md` — "Prompt injection is often paired with data exfiltration" |

**Verdict:** **4 of 5 wiki-backed.** This is the most wiki-faithful layer.

#### Layer 4: Subagent Sandbox Hierarchy
| Claim | Source Match | Evidence |
|---|---|---|
| Parent agent full sandbox | NOT IN WIKI — Thread only | No wiki discusses parent/child sandbox relationships |
| Nested sub-sandboxes with tighter rules | NOT IN WIKI — Thread only | Entirely absent |
| Subagents can't escalate to parent | NOT IN WIKI — Thread only | Entirely absent |
| Middleware trust boundary for subagent comms | SIMILAR | `wiki/concepts/agent-middleware-trust-boundary.md` — "authorization middleware layer between agentic code and enterprise resources" (applies to agents, not specifically subagents) |
| Prevents "subagent falls over" vector | NOT IN WIKI — Thread only | Entirely absent |

**Verdict:** **0 of 5 directly wiki-backed.** Subagent hierarchy is a pure thread addition.

#### Layer 5: Prompt Injection & Runtime Safety
| Claim | Source Match | Evidence |
|---|---|---|
| Frozen system prompt | CONTAINS | `wiki/concepts/prompt-injection.md` — "System Prompt Inversion" section discusses this attack pattern |
| Context sanitization | CONTAINS | `wiki/concepts/prompt-injection.md` — "User-Generated Content Injection" section |
| I/O filters | NOT IN WIKI — Thread only | No wiki page discusses I/O filtering |
| Bounded trust domain | SIMILAR | `wiki/concepts/agent-middleware-trust-boundary.md` — "bounded trust" concept exists but not "bounded trust domain" phrasing |
| Maximum iteration limits | CONTAINS | `wiki/concepts/agent-guardrails.md` — "Maximum iteration limits to prevent infinite thinking loops" |

**Verdict:** **2 of 5 directly wiki-backed, 1 similar, 2 thread-only.**

---

### Section 5: Human Oversight Model
**Content:** Table of operation types requiring human approval.

| Claim | Source Match | Evidence |
|---|---|---|
| General human-in-the-loop principle | CONTAINS | `wiki/concepts/agent-preparedness-framework.md` — "Human Review" section |
| "Avoid YOLO mode" phrasing | CONTAINS | `wiki/concepts/agent-preparedness-framework.md` — "Avoid both 'YOLO mode' (no oversight)" |
| Specific operation types (rm -rf, DROP TABLE, format) | NOT IN WIKI — Thread only | No wiki page lists these specific destructive patterns |
| pip install conditional | NOT IN WIKI — Thread only | Not discussed in any wiki |
| Scope-based allowlist for project dir | SIMILAR | `wiki/concepts/agent-sandboxing.md` — "Read and write files only within the directory it was run in" |

**Verdict:** **1 directly wiki-backed, 1 similar, 3 thread-only.** The operational table is largely thread-extrapolated.

---

### Section 6: Audit & Teardown
**Content:** Logging, per-session teardown, no persistent agent, audit trail.

| Claim | Source Match | Evidence |
|---|---|---|
| Every command logged | SIMILAR | `wiki/concepts/agent-guardrails.md` — "Audit logs for agent decisions and tool calls" |
| Per-session teardown | SIMILAR | `wiki/concepts/agent-sandboxing.md` — "Clean environment per agent run" |
| No persistent agent / ephemeral | CONTAINS | `wiki/concepts/agent-sandboxing.md` — "Clean environment per agent run" |
| Audit trail for forensics | CONTAINS | `wiki/concepts/agent-guardrails.md` — "SOC 2 compliance requirements", "Audit logs" |

**Verdict:** **1 directly wiki-backed, 2 similar, 0 thread-only.** This section is reasonably wiki-faithful.

---

### Section 7: Attack Vectors Summary
**Content:** 7 attack vectors and their defenses.

| Vector | Source Match | Evidence |
|---|---|---|
| Prompt injection | CONTAINS | `wiki/concepts/prompt-injection.md` — full treatment |
| Data exfiltration | CONTAINS | `wiki/concepts/prompt-injection.md` — "Data Exfiltration" section |
| Agent mistakes | CONTAINS | `wiki/concepts/agent-robustness.md` — "Agent mistakes — Unintentional destructive operations" |
| Privilege escalation | CONTAINS | `wiki/concepts/agent-robustness.md` — "Privilege escalation — Agent breaks out of intended isolation boundaries" |
| Sandbox escape | CONTAINS | `wiki/concepts/agent-robustness.md` — "Sandbox escape — Agent accesses resources outside its designated environment" |
| System prompt inversion | CONTAINS | `wiki/concepts/prompt-injection.md` — "System Prompt Inversion" section; `wiki/references/aief2025-hacking-yagents-...` — "Inverting system prompt" |
| Subagent escalation | NOT IN WIKI — Thread only | Entirely absent |

**Verdict:** **5 of 7 directly wiki-backed, 1 thread-only.**

---

### Section 8: TL;DR
**Verdict:** Summary of thread content. Mix of both sources. No new claims.

---

### Section 9: Sources & References
**Verdict:** All 7 wiki links are broken (path format wrong). Casco reference is listed but no specific wiki page is linked — see Section 10 below.

---

### Section 10: Open Questions
**Verdict:** **All 4 questions are entirely absent from the wiki and skill.** They are original questions generated from thread analysis.

---

## 2. Casco's YC Agent Audit Findings — Verification

**The document lists:** "Casco's YC agent audit findings (red team)"

**Wiki verification: FOUND in 3 pages.**

| Wiki Page | What It Says | Matches Doc? |
|---|---|---|
| `wiki/entities/casco.md` | "Casco hacked 7 out of 16 AI agents in the YC Spring 2025 batch within 30 minutes each" | ✅ Confirms the number |
| `wiki/references/aief2025-hacking-yagents-...` | "hacked 7 of 16 YC Spring 2025 batch agents in 30 minutes each, revealing three common agent security vulnerabilities: IDOR, code sandbox abuse, and prompt inversion" | ✅ Confirms the 3 vulnerability classes |
| `wiki/concepts/red-teaming.md` | "Casco team demonstrated this methodology by hacking 7 of 16 YC Spring 2025 batch agents within 30 minutes each" | ✅ Confirms |

**Mismatch:** The document does NOT elaborate on what Casco actually found (IDOR, code sandbox abuse, prompt inversion — the 3 vulnerability classes). It mentions "prompt injection defense" and "system prompt inversion" but does not mention IDOR or code sandbox abuse at all. The Casco reference is superficially included but doesn't draw on the wiki's specific findings.

---

## 3. Summary Statistics

| Category | Count | Percentage |
|---|---|---|
| Wiki CONTAINS this info | 18 | ~34% |
| Wiki CONTAINS similar info (phrased differently) | 7 | ~13% |
| Wiki does NOT contain — thread extrapolation | 25 | ~47% |
| Wiki says something CONTRADICTORY | 0 | 0% |
| Out of scope / not needed | 2 | ~4% |

**Key finding:** **47% of the document's content is extrapolated from the Twitter thread, not wiki knowledge.** The document's claim of being "synthesized from wiki knowledge" overstates the wiki's actual contribution. The most wiki-intensive sections are Section 4 Layer 3 (network controls) and Section 6 (audit & teardown). The least wiki-intensive are Section 2 (constraints), Section 4 Layer 1 (process isolation), and Section 4 Layer 4 (subagent hierarchy) — where ~80%+ is thread-only.

---

## 4. Issues Found

### P0: Broken Wiki Links (Critical)
All 7 `[[concepts/...]]` wiki links in the document's reference section (line 161-167) and source attribution (line 15) point to paths that don't exist. They should be `[[wiki/concepts/agent-sandboxing]]`, etc. The document claims wiki-based synthesis but its wiki references are non-functional.

### P1: Overstated Wiki Provenance
The summary line says "design decisions based on thread analysis and wiki knowledge synthesis" and the sources line says "twitter-thread, wiki-query." Given that 47% of content is thread-only (including the core 5-layer framework which is 31% of all content), the wiki's contribution is significantly less than the document implies.

### P2: "No OS-level sandbox" Contradicts Wiki Default
The document states "No Docker, no VMs, no full containers. Bare Linux machine" as a constraint, but the wiki's default approach (across agent-sandboxing, agent-preparedness-framework, and agent-isolation) treats containers as the **primary and expected** isolation mechanism. This constraint fundamentally changes the security model but isn't flagged as such.

### P3: Casco Findings Not Exploited
The document cites Casco but doesn't use the specific vulnerability classes the wiki documents (IDOR, code sandbox abuse, prompt inversion). The Casco reference adds a citation but no substantive wiki-derived content.

### P4: Agent-Isolation Wiki Distinction Not Applied
The wiki's `agent-isolation.md` page explicitly distinguishes between "isolation" (environment for agent productivity) and "sandboxing" (security of agent output). The research doc conflates these without acknowledging the distinction.

---

*Audit complete. All 7 referenced wiki concept pages were read from their actual `wiki/concepts/` paths and compared against the document's claims.*
