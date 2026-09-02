# Fixed task

In a copy of `inputs/example/repository`, change only `catalog.py`.

`active_names(rows)` must return the non-empty, trimmed `name` values from rows
whose `active` field is exactly `True`. Sort the returned names
case-insensitively, preserve duplicates, and do not mutate the input. Use only
the Python standard library. The existing tests are acceptance criteria and
must not be changed.
