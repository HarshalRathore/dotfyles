# Course Development Notes — LangChain & LangGraph

## 2026-07-17 — Course Initialization

- Created workspace at `teach/langchain-langgraph/`, parallel to the existing `teach/agent-harnesses/` course.
- Research compiled into `research/langchain-langgraph-official.md` — all facts sourced from `docs.langchain.com`.
- All 10 primary documentation URLs verified returning HTTP 200.
- Design language: Vercel Geist ink-on-white, using Geist Sans/Mono from CDN. Shared CSS in `assets/course.css`.
- Chapter 1 lesson (0001-orientation.html) and glossary reference HTML created.
- Course covers 12 chapters spanning beginner to production patterns.

### Design Decisions
- Shared CSS via `assets/course.css` rather than inlining in each lesson (contrary to existing agent-harnesses pattern). This was specified by requirements.
- Dark theme in agent-harnesses; light Geist theme in this course. Different aesthetic intentionally.
- Full course index rather than partial — 12 chapters give the learner a clear roadmap.
- Glossary as separate HTML so it can be linked from every lesson without duplication.
- Learning record created capturing baseline: "Python developer, first time with LangChain/LangGraph."

### Pending for Chapter 2
- Install instructions with virtual environment setup
- First `create_agent` example with a real model (OpenAI or Ollama)
- Tool definition with `@tool` decorator

## 2026-07-18 — Chapter 2 Published

- Learner feedback from Chapter 1: understood mental model, familiar with Claude Code-style harnesses, asked about LangChain/LangGraph overlap with Claude Code.
- Research findings from official Anthropic docs: conceptual overlap is established; implementation-level reuse is NOT publicly documented. Do not claim "Claude Code uses LangChain/LangGraph." Recorded in learning record.
- Added restrained gold/champagne accent (#d4a547) to the premium AMOLED palette across shared CSS and all pages.
- Chapter 2 lesson (0002-first-langchain-agent.html) created covering: conversational opener, Claude Code comparison with researched answer, venv install, create_agent API shape, @tool decorator, safe no-network lookup tool, hidden loop breakdown, quiz + read-aloud exercise, "what this doesn't do yet" section.
- Chapter 2 quick reference (chapter-2-agent-quick-reference.html) created.
- Published both artifacts via ht-ml.app.
- Course index, Chapter 1 navigation, and shared CSS all updated.
- Planned review loop: after each chapter, learner explains model/tool/loop in their own words next session.

## Cross-Session Handoff

**`TEACHING-GUIDE.md`** is the canonical cross-session handoff file. Read it first in any new session before working on chapters. It encodes the teaching voice, learner baseline, design direction, source policy, course map, feedback ledger, and next-session recovery protocol. NOTES.md is for development log entries; the guide is for durable, session-independent context.

## 2026-07-18 — Chapter 3 Published

- Learner asked about loop/trace: wanted to see the agent loop in action, understand the finish condition, and watch intermediate steps.
- Chapter 3 (0003-seeing-the-loop.html) created with: normal finish condition (empty tool_calls on AIMessage), message type definitions, stream() with stream_mode="updates", annotated trace output, flow diagram, predict-the-next-line exercise, updates-vs-values warning, thinking tokens caveat, other exits summary, and bridge to Chapter 4.
- Chapter 3 quick reference (chapter-3-loop-trace.html) created with message table, stream API, trace structure, and key terms.
- Course roadmap restructured: new Chapter 3 (Seeing the Loop) inserted between Chapter 2 and the old Chapter 3 (now Chapter 4: Models & Messages). Production Patterns dropped from explicit roadmap to maintain 12 chapters.
- Chapter 2 updated with "Make the Loop Visible" section showing the flow diagram, stream() code, and sample trace output linking to Chapter 3.
- Course index and teaching guide updated with new chapter titles, status, and URLs.
- All pages use the established AMOLED black + gold accent theme.


## 2026-07-18 — Chapter 4 Published

- Learner completed Chapter 3 (Seeing the Loop) and is beginning Chapter 4 (Models & Messages).
- Research performed against official docs. URLs verified from the source contract: `docs.langchain.com/oss/python/langchain/models`, `reference.langchain.com/python/langchain/chat_models/base/init_chat_model`, `docs.langchain.com/oss/python/langchain/messages`, `docs.langchain.com/oss/python/langchain/structured-output`, `reference.langchain.com/python/langchain-core/language_models/chat_models/BaseChatModel/with_structured_output`, `docs.langchain.com/oss/python/concepts/providers-and-models`.
- Chapter 4 lesson (`0004-models-and-messages.html`) and quick reference (`chapter-4-models-and-messages.html`) created and published via ht-ml.app.
- Lesson URL: https://50a64951.ht-ml.app/
- Quick Reference URL: https://56ad0f9a.ht-ml.app/
- Course index, teaching guide, glossary, and resources updated with published status and URLs.
- Glossary updated with all Chapter 4 terms (model interface, init_chat_model, message types, structured output, provider caveats).
- Key caveats documented: `init_chat_model()` dispatches to the correct provider package based on the `provider:model_id` identifier, with credentials commonly supplied through provider environment variables; `ChatOpenAI`/`ChatAnthropic` direct constructors give explicit control; `with_structured_output()` is a method on individual model instances, not a standalone function; structured output support is provider/model capability-dependent (see [structured-output docs](https://docs.langchain.com/oss/python/langchain/structured-output)).
- Chapter 4 learner reflection record captured in `learning-records/0003-chapter-four-reflection.md` before beginning Chapter 5.

## 2026-07-18 — Chapter 4 Theme Correction

- Lecture 4's inlined stylesheet used `::root` instead of `:root`, so the CSS variables did not resolve and the browser fell back to default styling.
- Corrected the selector and republished the lesson at https://50a64951.ht-ml.app/.
- Added a permanent theme implementation rule to `TEACHING-GUIDE.md`: inline the current shared CSS unchanged, then verify computed AMOLED black, near-white text, and `#d4a547` gold before publishing new chapters.

## 2026-07-18 — Chapter 5 Published

- Learner demonstrated the Chapter 4 model/message boundary and the distinction between model-level `with_structured_output()` and agent-level `response_format`.
- Chapter 5's tangible win is a provider-neutral, no-network order assistant: typed `@tool` contracts, `AIMessage.tool_calls` to `ToolMessage` correlation, `ToolRuntime` context injection, and middleware error handling.
- Research performed against official docs: `https://docs.langchain.com/oss/python/langchain/tools`, `https://docs.langchain.com/oss/python/langchain/models#tool-calling`, `https://docs.langchain.com/oss/python/langchain/agents#tools`, `https://reference.langchain.com/python/langchain-core/tools/convert/tool`, `https://reference.langchain.com/python/langchain-core/messages/tool/ToolMessage`, `https://reference.langchain.com/python/langchain/tools/ToolRuntime`, and `https://reference.langchain.com/python/langchain/agents/middleware/tool_retry/ToolRetryMiddleware`.
- Chapter 5 lesson (`lessons/0005-tools-in-depth.html`) and quick reference (`reference/chapter-5-tools-in-depth.html`) created and published via ht-ml.app.
- Lesson URL: https://e9366b4b.ht-ml.app/
- Quick Reference URL: https://aaa51794.ht-ml.app/
- Course index, teaching guide, glossary, and resources updated with Chapter 5's published status, URLs, and terminology.

## 2026-07-18 — Chapter 6 Research

- Official agent docs define the harness as everything around the model loop: model, prompt, tools, and middleware. `create_agent` is the current configurable entrypoint. Sources: [Agents](https://docs.langchain.com/oss/python/langchain/agents), [`create_agent` reference](https://reference.langchain.com/python/langchain/agents/factory/create_agent).
- The beginner-facing `create_agent` controls are `model`, `tools`, `system_prompt`, and `middleware`; `response_format`, `context_schema`, `checkpointer`, and other parameters are available for later expansion.
- Middleware runs inside the compiled LangGraph returned by `create_agent`. Node-style hooks are `before_agent`, `before_model`, `after_model`, and `after_agent`; wrap-style hooks are `wrap_model_call` and `wrap_tool_call`. `before_model` and `after_model` run on every model iteration, not once per invocation. Source: [Middleware overview](https://docs.langchain.com/oss/python/langchain/middleware/overview), [Custom middleware](https://docs.langchain.com/oss/python/langchain/middleware/custom).
- Static prompts use `system_prompt=`. Dynamic prompts and model/tool routing use middleware, with `@dynamic_prompt` as the specialized dynamic-prompt shortcut. Source: [Agents](https://docs.langchain.com/oss/python/langchain/agents), [Custom middleware](https://docs.langchain.com/oss/python/langchain/middleware/custom).
- Provider-neutral built-ins include PII detection, human approval, model/tool call limits, model fallback, tool errors, and model/tool retries. Human-in-the-loop requires a checkpointer and stable thread ID to resume. Source: [Prebuilt middleware](https://docs.langchain.com/oss/python/langchain/middleware/built-in), [Guardrails](https://docs.langchain.com/oss/python/langchain/guardrails).
- Chapter 6 should teach the smallest customization ladder: configure `create_agent` first; add middleware for runtime control; use raw LangGraph only when the workflow topology is no longer a standard agent loop. Avoid deprecated `create_react_agent`, `LLMChain`, and `AgentExecutor` patterns.

## 2026-07-18 — Chapter 6 Published

- Chapter 6's tangible win is a bounded, policy-aware order assistant: a deterministic `before_agent` guardrail, `ModelCallLimitMiddleware`, and `ToolRetryMiddleware` with explicit transient-failure handling.
- The lesson explains the harness boundary: `create_agent` configures model, tools, system prompt, and middleware; middleware adds runtime control around the compiled model-tools loop; raw LangGraph is for workflows whose topology exceeds that standard loop.
- Chapter 6 lesson (`lessons/0006-agent-harnesses.html`) and quick reference (`reference/chapter-6-agent-harnesses.html`) created and published via ht-ml.app.
- Lesson URL: https://db7e5380.ht-ml.app/
- Quick Reference URL: https://85187eed.ht-ml.app/
- Course index, teaching guide, glossary, and resources updated with Chapter 6's published status, URLs, and terminology.
