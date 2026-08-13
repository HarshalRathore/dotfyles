---
title: "Eval Engineering: The Gate That Lets Agents Merge Without You"
category: references
tags:
  - agent-evaluation
  - llm-judge
  - merge-gate
  - production-guardrails
  - eval-engineering
sources:
  - "https://nitter.tiekoetter.com/i/article/2083540339147567268"
  - "https://x.com/i/status/2083932817738666010"
source_url: "https://nitter.tiekoetter.com/i/article/2083540339147567268"
created: "2026-08-03T00:00:00Z"
updated: "2026-08-03T00:00:00Z"
summary: "Hanako's six-step course on building an evaluation gate that lets agents merge without human review: judge bias, verdict-driven control, path grading, log-derived tests, judge pinning, and blast-radius lanes."
stub: false
provenance:
  extracted: 0.80
  inferred: 0.12
  ambiguous: 0.08
base_confidence: 0.57
lifecycle: draft
lifecycle_changed: "2026-08-03"
tier: supporting
relationships:
  - target: "[[concepts/eval-gate]]"
    type: derived_from
  - target: "[[concepts/agent-evaluations]]"
    type: extends
  - target: "[[concepts/llm-as-judge-problems]]"
    type: extends
  - target: "[[concepts/agent-loop]]"
    type: related_to
  - target: "[[entities/hanakoxbt|Hanako]]"
    type: derived_from
---

# Eval Engineering: The Gate That Lets Agents Merge Without You

> [!tldr] A six-step course by [[entities/hanakoxbt|Hanako]] on building the evaluation gate that lets an agent's finished change merge without a human reading it — because a gate read the evidence and had a rule for it, not because anyone decided to trust the model. ^[extracted]

The end state: an agent finishes a change, opens it, and it goes in without a human reading it. The reason most teams lack this gate is not courage — the evidence the gate would need to read does not exist yet in most systems. ^[extracted]

## Step 1 — The score you are reading is partly about your judge

Automated evaluation started from Zheng et al. (UC Berkeley, 2023): GPT-4 agreed with human raters over 80% of the time, roughly human-human agreement. Follow-up work found judges respond to things other than the content: ^[extracted]

- **Self-family bias** — in one 2026 benchmark, GPT-5.2 and Gemini 3.1 Pro handed 75–84% win rates to their own model families, while Claude Opus 4.7 under-rated its own family at 10.6–41.2%. ^[ambiguous] (self-reported benchmark; not independently verified)
- **Judge spread** — measured bias across judges on ArenaHard spans −38% to +90%; identical outputs scored 93.3% under one judge and 39.5% under another. ^[ambiguous]
- **Verbosity bias** — judges reward length whether or not the extra words carry information. ^[extracted]

Three rules cover most of it: judge from a different model family than the generator; for high-stakes work use a panel of judges from different vendors (averaging breaks correlated errors); anything objectively checkable goes to code, not to a judge. "A gate fed by a biased judge is worse than no gate. It launders a guess into a number and then acts on it." ^[extracted]

## Step 2 — A verdict that does not change the run is a report

Most teams stop one step short: they get a number, put it on a dashboard, and the dashboard changes nobody's behavior. The 2026 shift is running evals *inside* the agent — pre-production evaluations promoted into production guardrails, where the score controls what the agent may do next: which tools it can reach, whether a handoff is accepted, whether the run escalates to a person. The difference between a thermometer and a thermostat. ^[extracted]

Each verdict maps to a structural action on the run in progress: low grounding rejects the handoff; a schema failure blocks the edge; a suspected fabrication quarantines that branch instead of letting it merge into the main thread; verified completion is the only thing allowed to end the run. An agent that stops calling tools has ended its *turn* — not the task — and only an external check knows the difference. ^[extracted]

## Step 3 — Grade the path, not just the answer

Grading only the final response lets an agent reach a correct answer through a broken sequence for a month without notice. Three evaluation levels, all required: ^[extracted]

1. **End-to-end** — did the task succeed?
2. **Trajectory** — was the path sound? Loops, redundant calls, and wasted steps surface here.
3. **Component** — which retriever, tool, or sub-agent broke? The only level that tells you where to fix something.

Three metrics to start: **faithfulness** (grounded in what tools actually returned, not what the model filled in when a tool came back empty), **tool parameter accuracy** (right tool, right arguments), and **task completion** (judged against a real signal, not the agent's own claim). Faithfulness is the one that hides — an agent that writes cleanly and invents an exchange rate scores well on every quality metric until a customer acts on it. For the gate, trajectory matters more than the final answer: a change that arrived through a clean path is different risk from an identical diff after forty steps of thrashing. ^[extracted]

## Step 4 — Your best tests are already in your logs

Tests invented at a desk protect you from failures you already imagined; the expensive ones sit in your traces with timestamps. Pull a small set of complete runs where working and broken behavior sit next to each other: a request that finished cleanly (baseline), one the user rephrased or corrected (a free label), a run where a tool returned empty or was called twice with identical arguments, a run where something external timed out. Write each in four lines: what the agent did, what worked and what didn't, whether the cause was your agent or a dependency, and which capability the eval should protect. ^[extracted]

Attribution is where people lose a week: the same lookup twice with identical arguments is a *loop in your agent*; a rate limit is somebody else's problem and only becomes your eval if your agent was supposed to recover from it. Two honesty rules: the trace tells you what your agent did, never what it should have done, so the answer key comes from tests, records, policy, or a person; and test the verifier before trusting it — feed it one clearly correct result and one plausible wrong one; if either goes the wrong way, the rubric is broken, not the agent. "Every failure converted this way is something the gate cannot be surprised by twice." ^[extracted]

## Step 5 — Pin the judge or lose the month

Judges are software with versions. A silently upgrading judge makes every score before and after incomparable — the suite keeps producing numbers that stopped meaning the same thing weeks ago. Pin the version and log it with every score. Write the rubric as one line in the form *pass if the independently observable outcome happened*, and never reward the shape of an answer (no points for length, keyword presence, citation count, or similarity to a reference) — optimize hard enough against a judge and the agent learns to look right instead of be right: Goodhart's law with a model in the loop. ^[extracted]

On self-review: Huang et al. (DeepMind, ICLR 2024) showed intrinsic self-correction — a model reviewing and revising its own work without external grounding — does not reliably help and often makes things worse. The grounding has to come from outside the model. ^[extracted]

Suite sizing: 2026 working guidance is at least 500 cases before trusting an aggregate number, and a run short enough that nobody plans around it — a suite longer than a coffee break becomes a quarterly ritual. ^[extracted]

## Step 6 — Open the gate on blast radius, not on confidence

Confidence is the weakest variable in the merge decision; the strong one is what happens if the change is wrong. Sort work by how expensive the mistake is to undo and gate each lane differently: ^[extracted]

| Lane | Examples | Policy |
|---|---|---|
| Reversible + contained | copy change, test, isolated function with coverage | opens first; one bad merge costs a revert |
| Reversible but wide | shared utility, schema addition, anything a dozen callers touch | gate on deterministic checks plus a clean trajectory |
| Hard to reverse | migrations, deletions, writes to production data, money movement | never opens, regardless of score |

Inside an open lane the gate reads evidence, not opinions, in order: deterministic results first (tests, types, schema, sandbox execution — no model involved), then the eval trajectory for this agent version, then history (how often this agent's work on this surface has been rolled back), and the model's own assessment last — it is the only input the model can influence. ^[extracted]

Turn it on carefully: shadow mode first (gate scores every change, merges none) until real traffic exists to compare against; track how often gate and human reviewer disagree and keep it closed while that number is meaningfully above zero. A suite can go entirely green while the product it guards falls apart, because tests converge on the tests rather than the spec — green is evidence, not proof. The honest framing: not trust in the agent, but "a constraint tight enough that trust stops being the question." ^[extracted]

## Three Lines of Discipline

1. Measure the path, not only the answer it landed on.
2. A verdict that does not change what runs next is a report.
3. Any failure you do not turn into a permanent test, you will meet again. ^[extracted]

## Entities

- [[entities/hanakoxbt|Hanako]] — author (agent-internals writing on X)
- [[entities/google|Google]] — cited model families (Gemini 3.1 Pro) ^[inferred]
- [[entities/anthropic|Anthropic]] — cited Claude Opus 4.7 judge behavior
- [[entities/google-deepmind|Google DeepMind]] — Huang et al. self-correction study

## Open Questions

- How does the gate's history signal (rollback frequency) get computed without a mature rollback-tracking system? ^[inferred]
- Can the 500-case minimum be met by small teams without production traffic? ^[inferred]

## Related

- [[concepts/eval-gate]] — the gate as a concept: verdict-driven control and blast-radius lanes
- [[concepts/agent-evaluations]] — evaluation as the improvement signal
- [[concepts/llm-as-judge-problems]] — quantitative judge-bias evidence
- [[concepts/llm-as-judge-evaluation]] — the LLM-as-judge paradigm
- [[concepts/agent-loop]] — the loop the gate controls
- [[misc/web-x-com-i-status-2083932817738666010|Hanako's course-recommendation tweet]] — the post that links this article
