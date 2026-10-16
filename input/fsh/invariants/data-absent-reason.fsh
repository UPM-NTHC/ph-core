// Adapted from the US Core Patient name rule. Interpretation after Jev review:
// retain optional names and meaningful text-only names; an absence reason on the
// whole HumanName describes missing name content, not missing individual parts.
Invariant: ph-pat-001
Description: "A supplied name SHALL contain a family, given or text value, or a Data Absent Reason for the whole name, but not both."
Severity: #error
Expression: "(family.where(hasValue()).exists() or given.where(hasValue()).exists() or text.where(hasValue()).exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"

// Source pattern: US Core clinical-result us-core-2. Apply to the selected result
// profile rather than every generic PH Core Observation (Jev review decision).
Invariant: ph-obs-001
Description: "An observation without components or member observations SHALL have a result value or a data absent reason."
Severity: #error
Expression: "(component.empty() and hasMember.empty()) implies (value.exists() or dataAbsentReason.exists())"

// Exact expression from US Core us-core-7; this establishes timing presence,
// without asserting a path-specific DAR declaration that US Core does not make.
Invariant: ph-pro-001
Description: "A completed or in-progress procedure SHALL include performed[x]."
Severity: #error
Expression: "(status='completed' or status='in-progress') implies performed.exists()"
