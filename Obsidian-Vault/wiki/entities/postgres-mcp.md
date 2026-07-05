---
title: "PostgreSQL MCP"
category: entities
tags:
  - entity
  - tool
  - mcp-server
  - database
  - postgresql
  - read-only
sources:
  - "[[sources/watchv=rkvilz06y08]]"
provenance:
  extracted: 0.90
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.80
lifecycle: draft
tier: supporting
created: 2026-07-04
updated: 2026-07-04
---

# PostgreSQL MCP

The PostgreSQL MCP is an [[concepts/model-context-protocol|MCP]] server that connects AI agents to PostgreSQL databases. It was demonstrated by [[entities/jon-peck|Jon Peck]] at AI Engineer World's Fair 2025 as a practical example of MCP integration with [[entities/github-copilot|GitHub Copilot]] Agent Mode. ^[extracted]

## Key Features

- **Read-only mode** — The PostgreSQL MCP operates exclusively in read-only mode, which Jon Peck specifically praises: "it only functions in read only mode which is one of the reasons I like it because it's very safe." ^[extracted]
- **Schema discovery** — The MCP can interrogate the database to discover the schema, identify tables, and understand relationships. ^[extracted]
- **Data extraction** — The MCP can pull data from specific tables and return it to the agent for use in code generation (e.g., creating mock.json files for testing). ^[extracted]
- **Local and remote** — Works with local unauthenticated PostgreSQL instances and remote databases with proper authentication tokens. ^[extracted]

## Usage in Agent Workflows

The typical flow demonstrated:

1. Developer searches for "postgres" on `github.com/modelcontextprotocol/servers`
2. Installs via one-click VS Code integration
3. Configures connection string in VS Code settings (defaults to local unauthenticated)
4. Starts the MCP server from VS Code
5. Asks Copilot Agent Mode to "use the PostgreSQL MCP to pull data and create mock.json"
6. Copilot pauses for permission, user approves
7. MCP handshakes with Copilot: discovers schema, selects tables, pulls data
8. Copilot uses the data to generate test files

## Safety Considerations

The read-only nature of this MCP server is a key safety feature:

- Cannot mutate the database accidentally
- Data is accessible locally within the IDE for the agent to use
- User permission gate still required before any connection ^[extracted]

## Related

- [[concepts/model-context-protocol]] — The MCP protocol
- [[entities/github-copilot]] — GitHub Copilot Agent Mode
- [[concepts/mcp-permission-gate]] — Permission gating for MCP connections
- [[entities/vs-code]] — VS Code MCP integration
