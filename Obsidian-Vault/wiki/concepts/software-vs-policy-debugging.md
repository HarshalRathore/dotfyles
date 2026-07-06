---
title: Software vs Policy Debugging
category: concepts
tags:
- debugging
- robotics
- root-cause-analysis
- policy
- software-system
- diagnostics
aliases:
- robotics debugging
- policy vs system debugging
- robotics root cause
sources:
- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
provenance:
  extracted: 0.9
  inferred: 0.08
  ambiguous: 0.02
base_confidence: 0.85
lifecycle: draft
lifecycle_changed: 2026-07-04
tier: supporting
created: 2026-07-04
updated: 2026-07-04
relationships:
- target: '[[concepts/jitter-in-robotics|Jitter in Robotics]]'
  type: applies_to
- target: '[[concepts/cycle-time-plot|Cycle Time Plot]]'
  type: uses
- target: '[[concepts/bus-saturation-overhead|Bus Saturation Overhead]]'
  type: relates_to
- target: '[[concepts/real-world-robotics-data|Real-World Robotics Data]]'
  type: applies_to
summary: Software vs Policy Debugging
---

# Software vs Policy Debugging

Software vs policy debugging is a diagnostic framework for robotics that addresses the central question: when a robot behaves unexpectedly, is the failure in the policy (the AI/model making decisions) or in the software system (the infrastructure delivering commands to actuators)? ^[extracted]

## The Central Question

In robotics, failures often manifest as:
- Motors not moving as expected
- Stuttering or jerky motion
- Unexpected actuator behavior

The immediate assumption is usually "the policy is wrong." However, [[entities/rishabh-garg|Rishabh Garg]]'s experience is that most failures that appear to be policy problems are actually software system problems — timing issues, bus saturation, thread desynchronization, or synchronization failures. ^[extracted]

## The Diagnostic Hierarchy

The framework prioritizes checking the software system before blaming the policy:

### 1. Check the CAN bus timing
- Use an external transceiver and CanDump to capture message timestamps
- Plot cycle time plots to identify jitter patterns
- If messages are arriving irregularly → software system problem (TX or RX desync)

### 2. Check TX synchronization
- Look for burst transmission (two messages sent together)
- Indicates policy took too long and commands queued
- Fix: better TX synchronization or padding

### 3. Check RX synchronization
- Look for stale data being processed by the policy
- Indicates RX thread delivered data late
- Fix: RX synchronization or padding

### 4. Only then: check the policy
- If all system-level checks pass and behavior is still wrong
- The policy itself may need adjustment

## Why This Matters

This framework prevents wasted effort debugging policies that are actually correct — the system is just failing to deliver their output to the actuators on time. It shifts the debugging mindset from "is my AI wrong?" to "is my system delivering the AI's output correctly?" ^[extracted]

## Sources

- AIEF2025 - Rishabh Garg, Tesla Optimus — Challenges in High Performance Robotics Systems - https://www.youtube.com/watch?v=bCGbuyv8PMk
