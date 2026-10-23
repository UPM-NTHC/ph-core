# example-condition - Draft PH Core Implementation Guide v0.2.0

## Example Condition: example-condition

**clinicalStatus**: Active

**code**: Diabetes mellitus type 2

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-example-patient.md)

**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB)](Encounter-example-encounter.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-condition",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "44054006",
      "display" : "Diabetes mellitus type 2"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/example-encounter"
  }
}

```
