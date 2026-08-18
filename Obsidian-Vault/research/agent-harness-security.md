---
title: Agent Harness Security — Multi-Layer Defense Framework
aliases: ["agent-harness-security", "agent-sandbox-design"]
tags:
  - research
  - agent
  - security
  - sandbox
  - design
  - architecture
lifecycle: draft
created: 2026-07-16
updated: 2026-07-16
summary: Research on securing AI agent harnesses that execute commands on Linux systems. Covers the 5-layer defense framework, attack vectors, real-world constraints, and design decisions based on thread analysis and wiki knowledge synthesis.
source: twitter-thread, wiki-query
---

# Agent Harness Security — Multi-Layer Defense Framework

> **Research date:** 2026-07-16  
> **Trigger:** Twitter thread by [@avrldotdev](https://x.com/avrldotdev/status/2077676112457638197) — rejection of a fresher candidate's "whitelist commands" answer for agent harness security design  
> **Status:** Draft — pending review and validation

---

## 1. Problem Statement

We're building an **agent harness** that has access to a Linux box where it'll run & execute commands. How do we make sure the agent doesn't wipe out the system?

The candidate answered: *"Whitelist only certain commands like git, grep, find, sed, mv, etc."*

This answer was rejected because command whitelisting is insufficient — it's defense by policy on a probabilistic model, bypassable by prompt injection, combinable by the agent, and lacking credential scoping.

---

## 2. Real-World Constraints (from Thread)

| Constraint | Description |
|---|---|
| **No OS-level sandbox** | No Docker, no VMs, no full containers. Bare Linux machine. |
| **App-level isolation required** | Safety must be designed *inside the harness* as software architecture |
| **Per-session lifecycle** | Sandbox spins up with server, tears down when it stops |
| **Subagent safety** | Must handle nested agents — either same sandbox or nested sub-sandboxes |
| **Prompt injection defense** | Agent can be tricked into bypassing its own restrictions |
| **Read-only default** | Agent starts with minimal permissions; write access is opt-in |
| **Human-in-the-loop** | Risky operations need human approval unless scale demands delegation |

---

## 3. Why "Whitelist Commands" Fails

| Vulnerability | How it's bypassed |
|---|---|
| **Prompt injection** | Agent gets tricked into running `rm` instead of `git` |
| **Command combination** | `find` + `xargs` + `sed` can delete/modify anything |
| **New tool installation** | `wget` or `curl` can download unwhitelisted tools |
| **Root access** | Root user can bypass any application-level filter |
| **Filesystem write** | Direct file manipulation via `/dev` or other mechanisms |

---

## 4. The 5-Layer Defense Framework

### Layer 1: Application-Level Process Isolation

Since we can't use Docker/VMs (bare Linux constraint), compensate with Linux's built-in isolation:

- **New namespaces per session** — mount, PID, network namespaces so each agent sees an isolated environment
- **Cgroups v2** — CPU/memory limits, cgroup filesystem lockdown
- **Systemd slice isolation** — run each agent in its own slice with resource and access controls
- **Ephemeral lifecycle** — when the harness stops, the sandbox namespace is destroyed — no persistence

### Layer 2: Credential Scoping (Most Important)

> *"Agents should be treated as users, not API servers."*

- Agent runs as a **regular user, never root**
- No `sudo` access ever
- Short-lived, scoped tokens for any service access
- Database credentials scoped to specific tables, not whole databases
- No SSH keys, no cloud provider credentials, no secret env vars

**Result:** Agent is *incapable* of wiping the system, not just told not to.

### Layer 3: Filesystem & Network Controls

- **Read-only by default** — agent filesystem access is read-only unless write is explicitly required
- **Landlock LSM** — unprivileged kernel-level filesystem restriction (no root required)
- **Network disabled by default** — no internet unless required for specific task
- **Allowlist proxy** — if internet needed, route through reverse proxy with domain + HTTP method allowlist
- Prevents data exfiltration and command-and-control from prompt injection

### Layer 4: Subagent Sandbox Hierarchy

Key design decision from the thread — how to handle subagents:

- **Parent agent** gets full-featured sandbox (main session namespace)
- **Each subagent** gets nested, restricted sub-sandbox — tighter Landlock rules, fewer capabilities
- Subagents can't escalate back to parent's privilege level
- Communication between parent and subagent goes through **middleware trust boundary** (not direct shell access)
- This prevents the "subagent falls over" attack vector where compromised subagent bypasses parent restrictions

### Layer 5: Prompt Injection & Runtime Safety

- **Frozen system prompt** — cannot be modified by runtime content
- **Context sanitization** — untrusted content (web pages, GitHub repos) sanitized before entering agent context
- **I/O filters** — harness-level filters catch known injection patterns in both input and output
- **Bounded trust domain** — agent can only affect what harness explicitly permits
- **Maximum iteration limits** — prevents infinite loops and runaway behavior

---

## 5. Human Oversight Model

| Operation Type | Human Required? | Reason |
|---|---|---|
| `rm -rf /var/db/*` | Always | Destructive pattern — automatic block |
| `DROP TABLE`, `DELETE FROM` | Always | Data destruction |
| `format=`, `mkfs` | Always | Filesystem destruction |
| `pip install package` | Conditional | New tool installation — allowlist or approval |
| File modifications in project dir | Conditional | Scope-based allowlist |
| Read-only operations | No | Safe by definition |
| Command combination (find + xargs) | Conditional | Pattern-based detection |

**Balance:** Avoid both "YOLO mode" (no oversight) and "approve every command" (impractical for scale).

---

## 6. Audit & Teardown

- **Every command logged** — with agent ID, prompt context, and timestamp
- **Per-session teardown** — sandbox namespace destroyed when harness stops
- **No persistent agent** — each session is ephemeral, stateless
- **Audit trail** — enables post-incident forensics

---

## 7. Attack Vectors Summary

| Vector | Defense |
|---|---|
| **Prompt injection** | Context sanitization, frozen system prompt, I/O filters |
| **Data exfiltration** | Network allowlist, no direct internet access |
| **Agent mistakes** | Read-only default, human oversight for destructive patterns |
| **Privilege escalation** | Non-root user, no sudo, scoped credentials |
| **Sandbox escape** | Linux namespaces, cgroups, Landlock LSM |
| **System prompt inversion** | Read-only system prompt, bounded trust domain |
| **Subagent escalation** | Nested sandbox hierarchy, middleware trust boundary |

---

## 8. TL;DR Answer

> *"Command whitelisting is defense by policy on a probabilistic model — bypassable by prompt injection, combinable by the agent, and insufficient without credential scoping. Instead: run agent as non-root user with scoped credentials (no sudo), use Linux namespaces and cgroups for per-session process isolation, restrict filesystem via Landlock, disable network or use allowlist proxy, enforce read-by-default write-by-exception, handle subagents with nested restricted sandboxes, defend against prompt injection with context sanitization and frozen system prompts. The agent should be **incapable** of wiping the system, not just told not to."*

---

## 9. Sources & References

- Twitter thread: [@avrldotdev](https://x.com/avrldotdev/status/2077676112457638197)
- Wiki: `[[concepts/agent-sandboxing]]`
- Wiki: `[[concepts/agent-preparedness-framework]]`
- Wiki: `[[concepts/agent-robustness]]`
- Wiki: `[[concepts/agent-isolation]]`
- Wiki: `[[concepts/prompt-injection]]`
- Wiki: `[[concepts/agent-as-user]]`
- Wiki: `[[concepts/agent-middleware-trust-boundary]]`
- Casco's YC agent audit findings (red team)

---

## 10. Open Questions

- [ ] How to handle legitimate write operations at scale without human bottleneck?
- [ ] What's the right granularity for Landlock rules? Per-path or per-pattern?
- [ ] Should subagent sandbox depth be fixed or dynamic?
- [ ] How to detect novel prompt injection patterns vs. known ones?

---

*Document generated: 2026-07-16 10:55 UTC*  
*Author: Holo (via wiki-query + twitter thread analysis)*  
*Next review: 2026-10-16 (quarterly)*
