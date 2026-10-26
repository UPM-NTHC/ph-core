# Patient-reported appendectomy with unknown date - Draft PH Core Implementation Guide v0.2.1

## Example Procedure: Patient-reported appendectomy with unknown date

Profile: [PH Core Procedure](StructureDefinition-ph-core-procedure.md)

**status**: Completed

**code**: Appendectomy

**subject**: [ (no stated gender), DoB Unknown](Patient-patient-explicit-absence-example.md)

**performed**: Absent because: unknown

**asserter**: [ (no stated gender), DoB Unknown](Patient-patient-explicit-absence-example.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-unknown-date-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80146002",
      "display" : "Appendectomy"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-explicit-absence-example"
  },
  "_performedDateTime" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }]
  },
  "asserter" : {
    "reference" : "Patient/patient-explicit-absence-example"
  }
}

```
