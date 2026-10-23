# example-condition - Draft PH Core Implementation Guide v0.2.0

## Example Condition: example-condition

Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.



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
