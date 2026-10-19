The **PH Core Patient** profile represents demographic and administrative information used across Philippine health information exchange.

### Name representation

PH Core uses `given[0]` for the complete first name and `given[1]` for a supplied middle name. Multiword names remain together: `given: ["Juan Carlos", "Dela Fuente"]`, `family: "Dela Cruz"`.

Preserve the name reported by the person or source record. Do not infer a middle name from a parent's name, create an empty middle-name entry, or split a multiword first name merely to fill an array position. When a source cannot distinguish name parts, preserve its supplied text in `HumanName.text` until those parts can be confirmed.

Name remains optional. Each supplied name SHALL contain a real `family`, `given` or `text` value, or the standard Data Absent Reason extension explaining why the whole name is missing. A name SHALL NOT contain both real name content and a whole-name absence reason. Missing individual optional name parts do not require placeholders. See the [missing-data rules](client-server-conformance.html#missing-data).

### Birth date and recorded age

Use `birthDate` for a birth date supported by the source. A known year can be recorded as `YYYY`; a known year and month as `YYYY-MM`; a known complete date as `YYYY-MM-DD`. Partial dates describe known calendar components, not a birth date inferred from completed age.

For example, a person reported to be two years old on 19 March 2026 can have a birth date from 20 March 2023 through 19 March 2024. That report alone does not establish `birthDate = "2024"`. Rounded ages in months or days also require their observation date and source precision to be understood.

Do not manufacture a birth date when only age is available. If an implementation needs to exchange a recorded age or an estimated birth date, its use-case IG should define the representation, observation/as-of date, source and estimation semantics. PH Core does not select a new age extension in this draft.

Display partial dates at their recorded precision. Do not display an assumed 1 January or first day of a month as a known birthday. If a local calculation uses an estimated date, retain and display its uncertainty; do not overwrite the source's known precision. Search and age calculations must account for partial dates and the relevant as-of date.

### Sex and gender concepts

`Patient.gender` represents administrative gender in this profile. The optional `genderIdentity`, `individualPronouns` and `sex` slices represent separate concepts. In `sex`, `type` identifies what `value` records, such as sex assigned at birth. Keep these meanings distinct. See [Sex and Gender Guidance](sex-and-gender-guidance.html) and the [focused Patient example](Patient-patient-sex-and-gender-example.html).

### Mother's maiden name

The optional `mothersMaidenName` slice uses the [HL7 Patient Mother's Maiden Name extension](https://hl7.org/fhir/extensions/StructureDefinition-patient-mothersMaidenName.html), which is available for FHIR R4 and carries a string value. Record this only when it is known from a reliable source and appropriate to share. Treat it as supplementary patient-matching information, not as a unique identifier; PH Core does not define an MPI matching algorithm.

The HL7 Extensions Pack defines the `mothersMaidenName` [Patient SearchParameter](https://hl7.org/fhir/extensions/SearchParameter-patient-extensions-Patient-mothersMaidenName.html). PH Core recommends that servers support it when their systems can index this extension. Clients should check the server's CapabilityStatement before relying on it. For example, a client can search for candidate records with:

```http
GET [base]/Patient?mothersMaidenName=Maria%20Cruz%20Santos
```

This query returns candidates whose extension value matches the standard FHIR string-search semantics. A result is not proof that two records identify the same person.

### Examples

See the [example scenarios](examples.html) for the synthetic Patients, their related resources, and the purpose of each dataset.
