# Raw implementation artifacts

These are the exact `workspace/catalog.py` files from the six measured runs in
the label order used for scoring. Every file passed `./verify.sh workspace`.

## A1 — baseline

SHA-256: `b3b83c0b65e78c2b269c1e4102c4395368228bb104bada621f805cbc1c5aae1a`

```python
def active_names(rows):
    names = []
    for row in rows:
        if row.get("active") is not True:
            continue
        name = row.get("name", "").strip()
        if name:
            names.append(name)
    return sorted(names, key=str.lower)
```

## B1 — Ponytail

SHA-256: `2e4573fb583a72a508bc61565c8f2d7f33ac7788a9f72067d5e18ab5b8b58092`

```python
def active_names(rows):
    names = [
        row.get("name", "").strip()
        for row in rows
        if row.get("active") is True
    ]
    return sorted((name for name in names if name), key=str.lower)
```

## A2 — Ponytail

SHA-256: `2e4573fb583a72a508bc61565c8f2d7f33ac7788a9f72067d5e18ab5b8b58092`

```python
def active_names(rows):
    names = [
        row.get("name", "").strip()
        for row in rows
        if row.get("active") is True
    ]
    return sorted((name for name in names if name), key=str.lower)
```

## B2 — baseline

SHA-256: `080e8273b00fc80a21197e61b98b84c541e23803cbea549b667dab1441f6ab89`

```python
def active_names(rows):
    names = [
        row["name"].strip()
        for row in rows
        if row.get("active") is True and row.get("name", "").strip()
    ]
    return sorted(names, key=str.casefold)
```

## A3 — baseline

SHA-256: `ebd8e54dc88ec35d1fc1d0d757275d87204028b8f2ed4bbed57a647078a1c0d8`

```python
def active_names(rows):
    names = (row.get("name", "").strip() for row in rows if row.get("active") is True)
    return sorted((name for name in names if name), key=str.lower)
```

## B3 — Ponytail

SHA-256: `ebd8e54dc88ec35d1fc1d0d757275d87204028b8f2ed4bbed57a647078a1c0d8`

```python
def active_names(rows):
    names = (row.get("name", "").strip() for row in rows if row.get("active") is True)
    return sorted((name for name in names if name), key=str.lower)
```
