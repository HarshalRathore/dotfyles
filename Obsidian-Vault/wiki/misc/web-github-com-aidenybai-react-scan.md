---
title: "React Scan"
category: misc
tags:
  - react
  - performance
  - debugging
  - devtools
sources:
  - "react-scan"
source_url: "https://github.com/aidenybai/react-scan"
created: "2026-06-30"
updated: "2026-06-30"
summary: "Zero-config tool that automatically detects and visually highlights unnecessary React re-renders. Drop-in script tag or npm install, no code changes required."
affinity:
  repeato: 1
promotion_status: misc
stub: false
provenance:
  extracted: 0.85
  inferred: 0.13
  ambiguous: 0.02
base_confidence: 0.55
lifecycle: draft
lifecycle_changed: 2026-06-30
---

# React Scan

React Scan is an open-source tool by [[entities/aiden-bai]] (Million Software, Inc.) that automatically detects and highlights unnecessary component re-renders in React applications. It requires zero code changes — just drop in a script tag or run `npx react-scan@latest init`.

## Overview

React components re-render when their props change by reference, not value. This makes it easy to accidentally cause unnecessary renders (inline objects, arrow functions, etc.). React Scan hooks into React's fiber architecture to detect these renders and visually highlights the offending components in the UI.

The tool works in development mode by default, with a `dangerouslyForceRunInProduction` flag for production debugging.

## Key Points

- Zero-config setup: `npx react-scan@latest init` auto-detects the framework and configures everything
- Visual highlighting: components that re-render unnecessarily get colored borders/overlays in the browser
- Always-available toolbar on the page for toggling scan settings
- Multiple integration modes: script tag (`unpkg.com/react-scan/dist/auto.global.js`), npm package (`react-scan`), or browser extension
- Works with Next.js (App Router + Pages Router), Vite, and Remix out of the box
- MIT licensed, open-source by Aiden Bai and Million Software, Inc.

## Concepts

- [[concepts/agent-loop]] — React Scan operates as a monitoring agent within the React runtime
- React's reconciliation and fiber architecture — the underlying mechanism React Scan instruments

## Entities

- [[entities/aiden-bai]] — Creator, also known for Million.js

## API Reference

- `scan(options: Options)` — Imperative API to start scanning
- `useScan(options: Options)` — Hook API to start scanning
- `setOptions(options: Options): void` — Set options at runtime
- `getOptions(): Options` — Get current options
- `onRender(Component, callback)` — Hook into renders for a specific component

Options include: `enabled`, `dangerouslyForceRunInProduction`, `log`, `showToolbar`, `animationSpeed`, `onCommitStart`, `onRender`, `onCommitFinish`.

## Open Questions

- How does React Scan compare to React Devtools profiler for deep performance analysis? ^[ambiguous]
- Does the visual highlighting approach scale to apps with hundreds of components? ^[inferred]

## Related

- [[entities/aiden-bai]] — Creator
- [Million Lint](https://million.dev) — Related tool from the same ecosystem for scanning and linting
- [Why Did You Render?](https://github.com/welldone-software/why-did-you-render) — Predecessor concept for detecting unnecessary renders
- React Devtools — Initial inspiration for highlighting renders
