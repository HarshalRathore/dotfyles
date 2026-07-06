---
title: Decorator-Based Tool Creation
category: concepts
tags:
- ai-agents
- tools
- python
- decorator-pattern
- agent-frameworks
sources:
- https://www.youtube.com/watch?v=q3nreeadkmc
summary: Pattern of converting any Python function into an agent tool using a decorator (e.g., @tools.tool), eliminating boilerplate and making custom tool creation as simple as adding an annotation.
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
base_confidence: 0.42
lifecycle: draft
lifecycle_changed: '2026-07-06'
tier: supporting
created: '2026-07-04'
updated: '2026-07-04'
---

# Decorator-Based Tool Creation

Converting any Python function into an agent tool by decorating it with a simple annotation (e.g., `@tools.tool`), eliminating boilerplate and making custom tool creation as simple as adding an annotation. ^[extracted]

## Pattern

```python
from strands.tools import tools

@tools.tool
def retrieve_from_quadrant(query):
    # ... implementation ...
    return result
```

The decorated function `retrieve_from_quadrant` then becomes available as a tool when creating an agent. No wrapper classes, no registration steps, no schema definitions. ^[extracted]

## Advantages

- **Zero boilerplate:** A single decorator replaces what would otherwise be a class or registration function
- **Type safety:** Python's type hints provide automatic schema inference
- **Familiar pattern:** Python developers already use decorators extensively
- **Composable:** Decorated tools can be combined, passed to agents, or used standalone

## Relationship to MCP

[[entities/suman-debnath|Suman Debnath]] demonstrated the same decorator pattern for MCP tools using `@mcp.tool` in FastMCP. The decorator pattern is a consistent interface across both Strands' native tools and MCP tool servers. ^[extracted]

## Related

- [[concepts/built-in-agent-tools]] — Built-in agent tools
- [[concepts/minimal-scaffolding-ai-agents]] — Minimal scaffolding philosophy
- [[concepts/mcp-as-agent-tools]] — MCP as agent tool layer
- [[entities/strands-agents]] — Strands Agents SDK
- [[references/aief2025-introducing-strands-agents-open-source-ai-agents-sdk-suman-debnath-aws]] — AIEF2025 talk
