### Name representation

Represent the complete first name in `given[0]` and a supplied middle name in `given[1]`. For example, `given: ["Juan Carlos", "Dela Fuente"]` and `family: "Dela Cruz"` preserve two multiword name parts.

This is a local exchange convention for known name parts. Preserve the source's spelling and complete multiword names. Do not invent a missing middle name or infer it from relatives. Use `HumanName.text` when the source supplies a name whose parts are not reliably distinguishable. The convention does not require every person to have a middle name.
