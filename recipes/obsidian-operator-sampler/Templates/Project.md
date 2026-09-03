---
type: project
status: planned
date: <% tp.date.now("YYYY-MM-DD") %>
due:
owner:
tags: [project]
people: []
projects: []
source: []
---

# <% tp.file.title %>

## Outcome

## Acceptance checks

- [ ] 

## Open tasks

```dataview
TABLE status, due, people
FROM "Tasks"
WHERE type = "task" AND contains(projects, this.file.link)
SORT due ASC
```
