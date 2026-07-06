---
title: VS Code Agent Mode Features
category: concepts
tags:
- vscode
- agent-mode
- github-copilot
- aief2025
- auto-approve
aliases:
- vscode-agent-features
sources:
- 'AIEF2025 - Vibe Coding at Scale: Customizing AI Assistants for Enterprise Environments - Harald Kirshner, - https://www.youtube.com/watch?v=i1uPAN6uW4s'
provenance:
  extracted: 0.9
  inferred: 0.05
  ambiguous: 0.05
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[entities/vs-code|VS Code]]'
  type: feature-of
- target: '[[entities/github-copilot|GitHub Copilot]]'
  type: provided-by
- target: '[[concepts/vibe-coding|Vibe Coding]]'
  type: enables
summary: VS Code Agent Mode Features
---

# VS Code Agent Mode Features

VS Code Agent Mode, powered by [[entities/github-copilot|GitHub Copilot]], provides a set of features optimized for [[concepts/vibe-coding|vibe coding]] workflows. Harald Kirshner (Microsoft) demonstrated these at AIEF2025. ^[extracted]

## Auto-Approve

Auto-approve bypasses all "continue" confirmation buttons that Copilot normally presents during agent operations. This is essential for maintaining flow during YOLO vibe coding — the developer focuses on outcomes, not on approving each step. Can be enabled for workspace-only scope. ^[extracted]

## Voice Dictation

Built-in voice dictation using a local model (nothing leaves the machine). Shortcut is Command-I by default. Supports:

- Hands-free interaction with the AI agent
- Reading back text for accessibility
- "Hey Copilot" activation
- Integrated into the Copilot chat interface

This enables a fully hands-free vibe coding experience. ^[extracted]

## New Workspace Flow (`copilot new`)

The `copilot new` command provides a streamlined workflow for creating new projects from scratch:

- Creates a new workspace automatically
- Agent generates a plan and shares it with the user
- Executes setup commands (npm install, etc.) in the terminal
- Auto-resolves dependency errors (installs missing packages based on error output)
- Opens the result in a browser preview within VS Code

This is optimized for the "don't care about the code" vibe coding approach. ^[extracted]

## Visual Context

VS Code's Simple Browser preview supports visual context attachment:

- Toggle to select specific elements in the preview
- Selected elements are attached as CSS descriptions and HTML into the chat
- Enables iterative visual refinement without reading code ("make this progress indicator more animated")

## Auto-Accept and Live Updates

- Auto-accept option for code suggestions
- Auto-accept after delay (alternative setting)
- Autosave for live updates running in the background
- Checkpoint and undo system for each unit of work

## Model Comparison in Agent Mode

Different models produce different quality in Agent Mode. Kirshner's comparison showed that Claude Sonnet 4 produced the best UI design, while GPT 4.1 looked "wireframe-y" and Gemini 2.5 Pro had inconsistent design sense. ^[extracted]
