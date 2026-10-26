# condition-single-example - Draft PH Core Implementation Guide v0.2.0

## Example Condition: condition-single-example

Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "44054006",
      "display" : "Diabetes mellitus type 2"
    }],
    "text" : "Type 2 Diabetes Mellitus"
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "onsetDateTime" : "2020-03-15",
  "recordedDate" : "2020-03-15T10:30:00Z",
  "note" : [{
    "text" : "Patient advised on diet and exercise management."
  }]
}

```
