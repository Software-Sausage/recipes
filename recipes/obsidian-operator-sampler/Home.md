---
type: dashboard
status: active
date: 2026-09-03
tags: [operator]
people: []
projects: []
source: []
---

# Operator dashboard

## Open tasks

```dataview
TABLE status, due, projects, people
FROM "Tasks"
WHERE type = "task" AND !contains(list("done", "dropped"), status)
SORT due ASC
```

## Active projects

```dataview
TABLE status, owner
FROM "Projects"
WHERE type = "project" AND contains(list("planned", "active", "blocked"), status)
SORT file.name ASC
```
