---
type: person
status: active
date: <% tp.date.now("YYYY-MM-DD") %>
tags: [person]
people: []
projects: []
source: []
---

# <% tp.file.title %>

## Context

## Commitments

```dataview
TABLE status, due, projects
FROM "Tasks"
WHERE type = "task" AND contains(people, this.file.link)
SORT due ASC
```
