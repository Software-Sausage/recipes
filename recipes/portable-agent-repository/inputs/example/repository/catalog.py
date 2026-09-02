def active_names(rows):
    return [row["name"] for row in rows if row.get("active")]
