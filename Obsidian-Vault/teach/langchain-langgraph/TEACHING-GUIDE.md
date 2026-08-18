# Teaching Guide — LangChain & LangGraph

## 1. Purpose and Mission

Learn LangChain and LangGraph from absolute beginner level to building understandable, reliable Python agents. The learner already knows Python and is required to use these tools, not choosing between alternatives. By the end of the course they should design, build, and deploy agents that ship real work, understanding the tradeoffs between the high-level framework (LangChain) and the low-level orchestration layer (LangGraph).

## 2. Learner Baseline

- New to LangChain and LangGraph — never installed or used them.
- Actively uses Pi coding agent and understands agent harness behavior (model + tools + loop + stopping conditions) at the user level.
- Proficient Python developer (production code, async, type annotations).
- Understands LLM concepts broadly: chat models, system prompts, temperature, tokens.
- Familiar with pip, virtual environments, the Python packaging ecosystem.
- Familiar with read/write/edit/bash-style tools at an operational level.
- Does NOT yet know LangChain/LangGraph framework internals, message schemas, state management, the graph runtime, or how the pieces connect.

## 3. Teaching Voice

Human, direct, engaging, hand-holding. Short paragraphs. Conversational in the style of *Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow* or a strong Medium article. Use:

- Direct address ("you'll notice that...", "here's what's happening")
- Rhetorical questions ("Why would the framework do that?")
- Concrete analogies (mailroom, assembly line, switchboard)
- Pause-and-predict moments ("Before you read the next line, what do you think happens?")
- Little surprises ("Wait — this isn't what you'd expect from a regular Python function.")
- Active recall prompts at the end of each section.

Avoid: essay walls, childish hype, generic corporate prose, unexplained jargon.

## 4. Jargon Rule

Define every new technical term before relying on it. Never assume a beginner knows:

- `provider`, `API key` — model providers, authentication
- `system prompt` — the instruction that sets the model's behavior
- `schema` — the shape of data (what fields, what types)
- `message` (HumanMessage, AIMessage, SystemMessage, ToolMessage)
- `state` — the shared data structure the graph reads and writes
- `node` — a function that does one unit of work in a LangGraph graph
- `edge` — a connection that routes between nodes
- `checkpoint` — a saved snapshot of state at a point in execution
- `tool call` — the model requesting a function to be run
- `harness` — everything around the model loop (create_agent, middleware)
- `runtime` — the execution engine (LangGraph)

Reuse the glossary consistently across chapters. The reference glossary at `reference/langchain-langgraph-glossary.html` and `https://3e997043.ht-ml.app/` is the canonical source.


**Terminology note — "state" vs "node":** In the automaton diagram the words *state* and *node* are used interchangeably. The agent is a finite-state machine; each node IS a state of that machine. The diagram labels them "model", "tools", and "__end__" — those are both the nodes in the graph and the states of the automaton. This is intentional pedagogical overloading: beginners map the formal CS concept ("state machine") directly onto the LangGraph concept ("graph node"). Do not correct this usage in conversation; the learner saying "state/node" interchangeably means the automaton model clicked.

## 5. Lesson Design

- One tightly scoped tangible win per chapter.
- Knowledge first, then retrieval/practice.
- Quiz options equal word count (no obvious giveaways by length).
- Native keyboard controls where applicable.
- Visible and screen-reader feedback (`aria-live`/status regions).
- Official primary source links for every new concept.
- Link backward to previous chapters and forward to the next.
- End with a follow-up question or review prompt.
- **Never present a "planned" future lesson as if it's completed material.**

## 6. Review Loop

After the learner finishes a chapter:

1. They explain what they understood in their own words (next session).
2. The teacher confirms correct points, notes partial or incorrect understanding, and repairs misunderstandings before progressing.
3. Only then does the course move to the next chapter.

This is captured via learning records in `learning-records/`.

## 7. Visual Direction

- Mobile-first HTML.
- True AMOLED black `#000` background.
- Near-white text (`#f0f0f0` or similar).
- Restrained premium champagne/gold accent (`#d4a547`) over black.
- Thin hairlines, generous whitespace, editorial-style panels.
- No gradients, no clutter.
- Responsive, readable layout with full accessibility.
- Supplied design reference was `~/Downloads/DESIGN-vercel.md`, translated into a darker premium AMOLED-native treatment.
- The palette is intentionally different from the light Geist theme used during initial setup — the AMOLED direction is the current and permanent choice.
- **Theme implementation rule:** Every new lesson and reference page must inline the current `assets/course.css` without changing its selector or token declarations. Before publishing, verify computed `body` background `#000`, near-white body text, and gold accent `#d4a547`. The Vercel reference guides restraint, typography, spacing, and hairlines; it does not replace the permanent AMOLED/gold palette.

## 8. Source Policy

- All claims come from official docs or source links.
- Distinguish documented behavior from inference.
- For Pi: use its GitHub repo, README, license, and docs. Do not claim implementation details that aren't publicly documented.
- For LangChain/LangGraph: use `docs.langchain.com` and `reference.langchain.com`. Old `python.langchain.com` and `langchain-ai.github.io/langgraph/` URLs redirect — always use the current canonical domain.
- Do not claim Claude Code implementation details without direct source.
- Pi is the familiar bridge for the learner and is open-source/inspectable, but source availability does not mean the learner understands its internals. Don't conflate "we can read the code" with "we know how it works."

## 9. Course Map and Status

| # | Chapter | Status |
|---|---------|--------|
| 1 | Orientation — mental model, glossary, big picture | **Published** `lessons/0001-orientation.html` &#8594; `https://2769bf05.ht-ml.app/` |
| 2 | Your First LangChain Agent — install, create_agent, @tool, loop breakdown | **Published** `lessons/0002-first-langchain-agent.html` &#8594; `https://e9fea6ef.ht-ml.app/` |
| 3 | Seeing the Loop — messages, tool calls, stream tracing, finish conditions | **Published** `lessons/0003-seeing-the-loop.html` &#8594; `https://f9d1ffa4.ht-ml.app/` |
| 4 | Models & Messages — chat models, message types, structured output | **Published** `lessons/0004-models-and-messages.html` &#8594; `https://50a64951.ht-ml.app/` |
| 5 | Tools in Depth — typed tool contracts, ToolMessage loop, ToolRuntime context, error paths | **Published** `lessons/0005-tools-in-depth.html` &#8594; `https://e9366b4b.ht-ml.app/` · [quick reference](reference/chapter-5-tools-in-depth.html) &#8594; `https://aaa51794.ht-ml.app/` |
| 6 | Agent Harnesses — create_agent controls, middleware hooks, call limits, retries, fallback, guardrails, and when to use LangGraph | **Published** `lessons/0006-agent-harnesses.html` &#8594; `https://db7e5380.ht-ml.app/` · [quick reference](reference/chapter-6-agent-harnesses.html) &#8594; `https://85187eed.ht-ml.app/` |
| 7 | LangGraph Fundamentals — StateGraph, nodes, edges, compile | Planned |
| 8 | State & Reducers — custom state, reducer functions, MessagesState | Planned |
| 9 | Conditional Flow — conditional edges, routing, branching | Planned |
| 10 | Persistence & Threads — checkpointers, thread scoping, time travel | Planned |
| 11 | Long-Term Memory — Store, cross-thread memory, namespaces | Planned |
| 12 | Human-in-the-Loop — interrupts, approval, breakpoints | Planned |

The current bridge agent is **Pi**, not Claude Code. All lessons are built with Pi as the assumed context.

## 10. Current Public Artifacts
| Artifact | URL | Local Path |
|----------|-----|------------|
| Chapter 1 — Orientation | `https://2769bf05.ht-ml.app/` | `lessons/0001-orientation.html` |
| Chapter 2 — Your First Agent | `https://e9fea6ef.ht-ml.app/` | `lessons/0002-first-langchain-agent.html` |
| Chapter 3 — Seeing the Loop | `https://f9d1ffa4.ht-ml.app/` | `lessons/0003-seeing-the-loop.html` |
| Course Index | `https://7848bafa.ht-ml.app/` | `lessons/course-index.html` |
| Reference Glossary | `https://3e997043.ht-ml.app/` | `reference/langchain-langgraph-glossary.html` |
| State Machine Automaton Diagram | `https://1c0af16d.ht-ml.app/` | `reference/state-machine.html` |
| Chapter 2 Quick Reference | `https://37e6d6de.ht-ml.app/` | `reference/chapter-2-agent-quick-reference.html` |
| Chapter 3 Quick Reference | `https://45a785ec.ht-ml.app/` | `reference/chapter-3-loop-trace.html` |
| Chapter 4 — Models & Messages | `https://50a64951.ht-ml.app/` | `lessons/0004-models-and-messages.html` |
| Chapter 4 Quick Reference | `https://56ad0f9a.ht-ml.app/` | `reference/chapter-4-models-and-messages.html` |
2. **Read the latest learning record** in `learning-records/` to see what the learner understood and what needs repair.
3. **Read NOTES.md** for the latest development notes and decisions.
4. **Read COURSE-INDEX.md** to confirm chapter sequence and status.
5. **Read the latest lesson** (the most recently published one) before creating the next.

When the learner says "start Chapter 3" (or any chapter), the agent should:

- Recover context from this guide and the files above.
- Verify source claims against official docs.
- Create the lesson in the correct design direction.
- Publish via ht-ml.app.
- Run focused verification on the published artifact.
- **Do not ask the learner to repeat the style rules, design direction, or teaching preferences.** Everything they've established is recorded here.

## 12. Feedback Ledger

### Learner Feedback (Current)
- **Chapter 1 engagement**: Good, but can become more conversational and attention-holding.
- **Pacing target**: *Hands-On Machine Learning* / Medium-style pacing — direct address, rhetorical questions, short paragraphs, active recall.
- **Design direction**: Good, but keep improving the premium AMOLED-native direction. The dark `#000` base with gold `#d4a547` accents is the right track; continue refining typography, spacing, and the editorial feel.

### Development History
- Initial design was Vercel Geist ink-on-white (2026-07-17).
- Migrated to AMOLED black + gold accents (2026-07-18) based on user preference.
- Shared CSS is at `assets/course.css` — not inlined in lessons.
