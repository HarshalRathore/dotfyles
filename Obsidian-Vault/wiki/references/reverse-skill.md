---
title: "reverse-skill — AI Reverse Engineering Skill Router"
category: references
tags: [ai-agents, reverse-engineering, security-tools, skill-routing, open-source, github]
aliases: [reverse-skill project]
sources:
  - "https://x.com/seventhoce56019/status/2068901168940745088"
  - "https://github.com/zhaoxuya520/reverse-skill"
summary: AI-powered reverse engineering skill router pack — a routing matrix that tells AI agents which methodology and tools to use for 20+ security scenarios, instead of guessing commands blindly.
provenance:
  extracted: 0.80
  inferred: 0.15
  ambiguous: 0.05
base_confidence: 0.75
lifecycle: draft
tier: supporting
created: 2026-07-13
updated: 2026-07-13
relationships:
  - target: "[[concepts/agent-tools|Agent Tools]]"
    type: related_to
  - target: "[[concepts/mechanistic-interpretability|Mechanistic Interpretability]]"
    type: related_to
  - target: "[[concepts/red-teaming|Red Teaming]]"
    type: supports
---

# reverse-skill — AI Reverse Engineering Skill Router

**reverse-skill** is an open-source GitHub project by 冬天 (@seventhoce56019 / @apivixtls) that packages reverse engineering and security testing knowledge into an AI-friendly skill router. With 8.1k stars, it has significant traction in the security community.

The project uses MIT license (submodules under GPLv3 / AGPL-3.0).

## Core Idea

The central innovation is a `routing.md` file that acts as a decision tree: when an AI agent encounters a security or reverse engineering task, it reads the routing matrix to determine which methodology and tools to use — instead of guessing commands blindly. ^[extracted]

**Workflow:** User Task → `RULES.md` → Skill Router → Target Skill → Tools / MCP / Scripts → Report + Experience Recording

The system addresses three gaps that AI agents face with security tasks:
1. AI agents don't know whether to use jadx, Frida, or IDA when encountering APK, binary, or JS encryption tasks
2. Tool paths, MCP services, and script entry points are scattered across different machines and hard to migrate
3. The same problems are re-encountered repeatedly, preventing experience reuse

## Supported Scenarios (20+ sub-skills)

| Scenario | Entry Point |
|---|---|
| APK / Android Reverse Engineering | `skills/apk-reverse/` |
| Binary Reverse (exe/dll/so/elf) | `skills/ida-reverse/` / `skills/radare2/` |
| Frontend JS Signatures / Encrypted Params | `skills/js-reverse/` |
| HTTP Packet Capture / Request Replay | anything-analyzer + `skills/js-reverse/` |
| Penetration Testing / Vulnerability Scanning | `skills/pentest-tools/` |
| CTF Competitions | `CTF-Sandbox-Orchestrator/` (40+ sub-skills) |
| Firmware / IoT | `skills/firmware-pentest/` |
| Patch Diff / N-day | `skills/patch-diff-exploit/` |
| Pwn / Exploitation | `skills/pwn-chain/` |
| EDR Bypass | `skills/edr-bypass-re/` |
| LLM / AI Security | `skills/llm-security/` |
| OLLVM Deobfuscation | `skills/reverse-engineering/references/ollvm-deobfuscation.md` |
| Diagrams / Reports | `skills/diagram-generator/` / `skills/docs-generator/` |

## Repository Structure

```
├── README.md                    # Chinese version
├── README_EN.md                 # English version
├── README_AI.md                 # AI Agent configuration guide (MANDATORY for AI)
├── RULES.md                     # Global routing rules
├── skills/
│   ├── SKILL.md                 # Master control entry
│   ├── routing.md               # Routing matrix (scenario → skill)
│   ├── apk-reverse/             # APK reverse engineering
│   ├── js-reverse/              # JS frontend reverse engineering
│   ├── ida-reverse/             # IDA Pro workflow
│   ├── radare2/                 # radare2 analysis
│   ├── reverse-engineering/     # General RE methodology
│   ├── pentest-tools/           # Penetration testing
│   ├── pwn-chain/               # Vulnerability exploitation
│   ├── patch-diff-exploit/      # N-day analysis
│   ├── firmware-pentest/        # Firmware / IoT
│   ├── edr-bypass-re/           # EDR bypass
│   ├── binary-diff/             # Symbol migration
│   ├── browser-automation/      # Browser automation
│   ├── diagram-generator/       # Diagram generation
│   ├── docs-generator/           # Report generation
│   └── llm-security/            # LLM / AI security
├── CTF-Sandbox-Orchestrator/    # CTF sub-skills (40+)
├── docs/                        # Overview and architecture docs
└── kali/                        # Kali helper scripts
```

## Key Files

| File | Purpose |
|---|---|
| `README_AI.md` | AI Agent configuration guide (Agent MUST read) |
| `RULES.md` | Global routing rules |
| `skills/routing.md` | Routing matrix (scenario → Skill) |
| `skills/SKILL.md` | Master control entry |
| `skills/tool-index.md` | Local tool index (auto-generated) |

## Tech Stack

IDA Pro, radare2, Ghidra — with prerequisites including Java/JDK (for jadx, apktool), Node.js 22.12+ (JS toolchain and MCP services), and Python 3.x (Frida and helper scripts).

## Installation

```bash
git clone https://github.com/zhaoxuya520/reverse-skill.git
```

First use: Just have the AI read `README_AI.md`. No other operations needed.

## Discussion

The tweet frames the project as ethically ambiguous: "20+ sub-skills, the barrier to security attack/defense skills gets flattened a bit more by AI. Whether this is good or bad, you decide for yourselves." The author acknowledges that while this empowers defenders who understand these techniques, it also lowers the barrier for attack-side capabilities.

## Open Questions

- How does the routing matrix handle novel attack vectors not covered by the 20+ sub-skills?
- The project mentions self-evolving experience base — how does it learn from new engagements without human curation?
- What safeguards prevent misuse of the skill pack beyond authorized penetration testing?

## Sources

- Tweet by 冬天 (@seventhoce56019): https://x.com/seventhoce56019/status/2068901168940745088
- GitHub repository: https://github.com/zhaoxuya520/reverse-skill
- Project author contact: ww7517437@gmail.com, Telegram: https://t.me/AI_And_Security, X: @apivixtls
