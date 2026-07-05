---
title: "Forward-Leaning Agent"
tags:
  - agent
  - ai
  - design
  - personality
  - behavior
sources:
  - "[[sources/watchv=cimvknx-cni]]"
summary: "An agent characteristic: curious, excitable, and focused — takes initiative and makes suggestions without needing explicit prompting, but stays within bounds and knows when to defer to humans."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.60
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Forward-Leaning Agent

A forward-leaning agent is an [[concepts/character-coach-approach|agent character]] characteristic — curious, excitable, and focused — that takes initiative within its domain without overstepping bounds. Articulated by [[entities/craig-wattrus|Craig Wattrus]] of [[entities/flatfile|Flatfile]] after experimenting with model behavior and identifying the emergent quality he wanted in AI coworkers.

## The Characteristic

Wattrus describes the forward-leaning agent as: "an agent that's curious and it's excitable but it likes getting shit done and it's very focused — so not going crazy." The key tension: the agent independently explores and takes action, but stays within the boundaries of its assignment. ^[extracted]

## Examples of Forward-Leaning Behavior

Wattrus demonstrated this characteristic through prototypes: ^[extracted]

### Emergent Data Merging
A user dropped a JSON file and a CSV file into an environment. Without being asked, the agent identified that the data looked similar, combined them into one file, wrote a report explaining what it did, flagged duplicates it found, and suggested next steps. The user never prompted any of this — the agent recognized an opportunity and acted on it. ^[extracted]

### Knowledge-Based Suggestions
After analyzing customer call transcripts and documentation, the agent surfaced suggestions — but also identified issues it could not fix. It explicitly told the user: "I can't fix this, but I know how to fix it" — directing the human to go to HR and generate missing employee IDs. The agent helped the human do their job even when it couldn't do the job itself. ^[extracted]

## What It Is Not

- Not a runaway agent that goes too far — "we've all seen the LLMs kind of go too far when you give it a task and that doesn't feel good" ^[extracted]
- Not passive or reactive — it doesn't wait for instructions before acting within its domain
- Not autonomously revolutionary — it makes suggestions and takes initiative but defers to human judgment

## Design Implications

Designing a forward-leaning agent requires careful calibration: ^[inferred]

1. **Clear domain boundaries** — the agent needs to know the scope it can operate in
2. **Initiative within scope** — within that scope, the agent should proactively look for opportunities
3. **Self-awareness of limits** — the agent should know when to escalate to a human
4. **Transparency** — the agent shows its work (combined files, wrote report, flagged duplicates)
5. **Reversibility** — "I took a snapshot, you can roll back" — the agent's actions are undoable

## Relationship to Other Concepts

- [[concepts/character-coach-approach]] — Forward-leaning is a specific character outcome of the character coach approach
- [[concepts/agent-loop]] — Forward-leaning agents may initiate work without an explicit human-triggered loop
- [[concepts/ai-coworker-form-factors]] — Forward-leaning behavior is most natural in in-line and invisible form factors
- [[concepts/closed-loop-agent-improvement]] — Forward-leaning agents can trigger their own improvement loops
- [[concepts/emergent-behavior]] — Forward-leaning characteristics enable emergent problem-solving ^[inferred]

## Open Questions

- How do you evaluate a forward-leaning agent? What metrics capture appropriate initiative vs overstepping?
- How do you calibrate the boundary between proactive and intrusive for different user types?
- Does forward-leaning behavior emerge naturally from well-designed agents, or must it be explicitly engineered?

## Sources

- [[references/aief2025-form-factors-ai-coworkers-craig-wattrus-flatfile]] — Talk at AI Engineer World's Fair 2025
