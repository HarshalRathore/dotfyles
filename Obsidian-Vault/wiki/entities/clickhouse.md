---
title: ClickHouse
tags:
- columnar
- analytics
- open-source
sources:
- '[[sources/karpathy-autoresearch-query-engine-bug]]'
category: entities
lifecycle: draft
tier: supporting
base_confidence: 0.42
provenance:
  extracted: 1.0
  inferred: 0.0
  ambiguous: 0.0
created: '2026-07-04T15:08:32.269055+00:00'
updated: '2026-07-04T15:08:32.269055+00:00'
summary: ClickHouse
---
# ClickHouse

ClickHouse is an open-source, column-oriented DBMS for real-time analytics. Key performance mechanisms include partition pruning and primary key index-based lookups, which can be silently disabled by function wrappers that the query planner can't see through.

## Related

- [[misc/web-github-com-karpathy-autoresearch]] — Details how `toTimeZone()` wrapping silently disabled partition pruning for 3 years


## Related Pages
- The database system mentioned as part of the autoresearch pattern thread tracked within the Hot Cache. [[entities/clickhouse]]