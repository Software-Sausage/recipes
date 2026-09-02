def active_names(rows):
    names = (
        row["name"].strip()
        for row in rows
        if row.get("active") is True and row.get("name", "").strip()
    )
    return sorted(names, key=str.casefold)
