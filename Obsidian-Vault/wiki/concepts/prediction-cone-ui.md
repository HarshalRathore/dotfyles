---
title: "Prediction Cone UI"
tags:
  - ui-pattern
  - interaction-design
  - menu
  - ux
aliases: [prediction cone, predictive pointer cone]
sources:
  - "AI Engineer World's Fair 2025 - Good design hasn't changed with AI — John Pham, SF Compute - https://www.youtube.com/watch?v=7e7eVtcygCM"
summary: "A UI pattern for nested menus that generates a geometric cone predicting user intent as the cursor moves between menu levels, allowing imprecise pointer movement without the submenu collapsing."
provenance:
  extracted: 0.75
  inferred: 0.20
  ambiguous: 0.05
base_confidence: 0.50
lifecycle: draft
tier: supporting
created: 2026-07-03
updated: 2026-07-03
---

# Prediction Cone UI

The prediction cone is a UI interaction pattern for nested menus, created by [[entities/john-pham|John Pham]] during his time at [[entities/vercel|Vercel]]. It solves the problem of nested menus that collapse when the user's cursor deviates outside the narrow submenu path. ^[extracted]

## The Problem

Naive nested menus require precise pointer control: the user moves the cursor from a parent item down into the submenu, but the submenu collapses if the cursor strays outside its boundaries. This creates a frustrating "janky, super precise pointer flow." ^[extracted]

## The Solution

As the user hovers, the system generates a **prediction cone** — a geometric shape that maps to the user's likely intent. Instead of requiring the cursor to stay within the precise vertical strip of the submenu, the cone allows a wider range of cursor movement while keeping the submenu open. ^[extracted]

The cone essentially expands the hit target area in the direction of the cursor's trajectory, predicting that the user intends to reach a submenu item even if they take a diagonal path. This makes the interaction feel "supernatural" — the system anticipates the user's intent rather than punishing imprecise movement. ^[extracted]

## How It Works

1. When the cursor hovers over a parent menu item, a submenu appears
2. As the cursor moves diagonally toward the submenu, a triangular prediction cone is calculated based on the cursor's position and trajectory ^[inferred]
3. If the cursor stays within the cone area, the submenu remains open regardless of whether the cursor is inside the strict submenu boundary
4. Only when the cursor exits the cone does the submenu collapse

## Related

- [[concepts/design-four-pillars]] — Prediction cone serves both speed (faster interaction) and trust (predictable behavior)
- [[concepts/perceived-performance-ux]] — Part of making interactions feel fluid and fast
