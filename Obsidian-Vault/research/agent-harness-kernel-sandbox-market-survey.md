---
title: Agent Harness Kernel-Sandbox — Market Survey
aliases: ["agent-kernel-sandbox-survey", "bare-metal-agent-sandbox-tools"]
tags:
  - research
  - agent
  - security
  - sandbox
  - linux
  - survey
lifecycle: draft
created: 2026-07-16
updated: 2026-07-16
summary: Market survey for existing tools that implement kernel-level sandboxing (namespaces, cgroups, Landlock, seccomp) for AI agent harness security on bare Linux without containers.
source: manual
---

# Agent Harness Kernel-Sandbox — Market Survey

**Research date:** 2026-07-16  
**Trigger:** Design decision to pursue Option A (kernel-level sandboxing) for agent harness security.  
**Status:** Ready for auto-research

---

## 1. Problem Statement

We need an AI agent harness that runs on bare Linux (no Docker, no VMs, no containers) and must prevent the agent from destroying the system. Our chosen approach: kernel-level sandboxing using Linux primitives only.

The agent should be able to run commands normally, but the kernel must enforce all security boundaries so that prompt injection cannot bypass restrictions.

## 2. What "Option A" Actually Is

Kernel-level sandboxing for an agent process, composed of:

| Primitive | Purpose | What it blocks |
|---|---|---|
| **User namespace + unprivileged user** | No root, no sudo | Privilege escalation |
| **PID namespace** | Isolated process tree | Visibility/interference with host processes |
| **Mount namespace** | Custom /proc, /dev | Filesystem exposure |
| **Landlock LSM** | Unprivileged filesystem restriction | Access outside allowed paths |
| **seccomp** | Syscall-level filtering | mount, reboot, ptrace, kexec_load, etc. |
| **cgroups v2** | CPU/memory limits | Resource exhaustion |
| **Network namespace** | Network isolation (optional) | Data exfiltration, C2 |

**Key distinction from Docker:** Docker packages all of this into a user-friendly interface with image layers and volume management. We need the same primitives but as a harness service, not as container management.

## 3. Research Question

**Do existing tools in the market implement kernel-level sandboxing (using Linux namespaces, cgroups, Landlock, seccomp) specifically for securing AI agent command execution on bare Linux?**

### Search Criteria

A tool qualifies as a **relevant existing tool** if it meets ALL of:

1. ✅ Uses Linux kernel primitives (namespaces, cgroups, seccomp, Landlock) for sandboxing
2. ✅ Designed for AI agent or autonomous code execution
3. ✅ Runs on bare Linux (no Docker dependency)
4. ✅ Provides a programmable interface for executing agent commands

### Not Qualifying

- ❌ Tools that only use command whitelisting (AppArmor profiles, simple allowlists)
- ❌ Tools that require Docker/podman
- ❌ Tools that only sandbox web browsers (Firejail, Sandfox)
- ❌ Tools that only sandbox Python code (griffe, safe-python-exec)
- ❌ Pure research papers without released tools

## 4. Candidates to Investigate

We should investigate these categories and potential tools:

### Category A: Agent Execution Sandboxes
- Any agent framework with built-in sandboxing
- Autonomous coding agent security tools
- AI agent command execution frameworks

### Category B: Linux Security Frameworks
- **Landlock** — the LSM itself (is there an agent harness wrapper?)
- **Firejail** — user-space sandbox (does it support agent workloads?)
- **Systemd sandboxing** — Systemd's built-in security features (`ProtectSystem`, `PrivateTmp`, `NoNewPrivileges`)
- **Bubblewrap** — unprivileged namespace toolkit
- **runc** — container runtime (can it be used bare-metal without Docker?)
- **Gvisor** — application kernel (is it usable as agent sandbox?)

### Category C: Agent Frameworks with Security Features
- **AutoGPT / BabyAGI** — any sandboxing?
- **CrewAI / LangChain** — any execution sandboxing?
- **Semantic Kernel** — any sandbox?
- **Google's Gemini CLI** — any sandboxing?
- **OpenAI's Code Interpreter** — how do they sandbox?
- **Anthropic's Claude Code** — any sandbox?

### Category D: Niche / Emerging Tools
- Any YC startup focused on agent security
- Any open-source agent harness with kernel sandboxing
- Any academic research with released tools

## 5. What We'll Report

For each candidate tool found:

1. **Tool name** and repo/website
2. **Kernel primitives used** (which of the 7 in Section 2)
3. **Docker dependency** — does it require containers?
4. **Agent-specific** — is this built for AI agents or general use?
5. **License** — open source? commercial?
6. **Maturity** — active? abandoned? prototype?
7. **Relevance score** — how well does it fit our needs? (0-10)
8. **Gaps** — what it's missing that we'd need

## 6. Open Questions to Research

- [ ] Is there any open-source agent harness that uses Landlock specifically?
- [ ] Does any agent framework already solve the "bare-metal agent sandbox" problem?
- [ ] Are there any YC startups or recent launches in this space?
- [ ] What does the academic literature say about agent sandboxing without containers?
- [ ] Are there any commercial agent security platforms that offer this?
- [ ] Can Systemd's sandboxing features be used as a drop-in agent harness security layer?

## 7. Success Criteria

We consider this research successful when we can answer:

1. **Yes/No:** Does a suitable existing tool exist?
2. **If yes:** What is the best candidate and what gaps remain?
3. **If no:** What are the most promising partial solutions we can combine?
4. **If unknown:** Who are the active players in this space and what are they building?

---

*Research ready. Awaiting auto-research execution.*
