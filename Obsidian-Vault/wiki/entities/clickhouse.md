---
title: "ClickHouse"
tags:
  - columnar
  - analytics
  - "open-source"
sources:
  - "karpathy-autoresearch-query-engine-bug"
---
# ClickHouse

ClickHouse is an open-source, column-oriented DBMS for real-time analytics. Key performance mechanisms include partition pruning and primary key index-based lookups, which can be silently disabled by function wrappers that the query planner can't see through.

## Related

- [[web-github-com-karpathy-autoresearch]] — Details how `toTimeZone()` wrapping silently disabled partition pruning for 3 years


## Related Pages
- The database system mentioned as part of the autoresearch pattern thread tracked within the Hot Cache. [[entities/clickhouse]]