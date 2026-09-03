# Raw Codex implementation artifacts

These are the exact `workspace/catalog.py` files from the six measured runs in
the randomized label order used for scoring. Every file passed `./verify.sh
workspace` and scored 10/10 before the condition map was revealed.

## R1 — Ponytail

SHA-256: `eef00b3b399e1bcba74068aa548cf87ee9c6c165d2a80d4659f7a37df3280c6a`

```python
def active_names(rows):
    names = [row["name"].strip() for row in rows if row.get("active") is True]
    return sorted(filter(None, names), key=str.casefold)
```

## R2 — baseline

SHA-256: `ef97be2dd96159b11a2b7bb211734c4d32818ef9f9051bfb3e27eb36d4e3b288`

```python
def active_names(rows):
    names = []
    for row in rows:
        if row.get("active") is True:
            name = row["name"].strip()
            if name:
                names.append(name)

    return sorted(names, key=str.casefold)
```

## R3 — Ponytail

SHA-256: `02f2a5b1f601ebca79839a29a253d6d78d56787c32d8829d6699bbf571d80a8e`

```python
def active_names(rows):
    names = (row["name"].strip() for row in rows if row.get("active") is True)
    return sorted(filter(None, names), key=str.casefold)
```

## R4 — Ponytail

SHA-256: `c363159310aab7636ca5d66c6f29d45d844016e76f9ac421b92791d5dc31b9b0`

```python
def active_names(rows):
    return sorted(
        (name for row in rows if row.get("active") is True and (name := row["name"].strip())),
        key=str.casefold,
    )
```

## R5 — baseline

SHA-256: `f543bbd278bee5ddf8a02608b388f514887a7967ab1525ddea41bf15d4a491e1`

```python
def active_names(rows):
    names = (
        row["name"].strip()
        for row in rows
        if row.get("active") is True
    )
    return sorted((name for name in names if name), key=str.casefold)
```

## R6 — baseline

SHA-256: `ed7ff71ce7dae2bd800896e861e25c81cbb33b8dbe7f8821f5b4bed04487e97b`

```python
def active_names(rows):
    names = (
        row["name"].strip()
        for row in rows
        if row.get("active") is True
    )
    return sorted((name for name in names if name), key=str.lower)
```
