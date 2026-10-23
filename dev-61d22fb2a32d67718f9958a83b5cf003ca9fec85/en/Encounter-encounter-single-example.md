# encounter-single-example - Draft PH Core Implementation Guide v0.2.0

## Example Encounter: encounter-single-example

An ambulatory visit for Juan Dela Cruz that has been completed.



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
  },
  "identifier" : [{
    "system" : "http://example.org/encounter-id",
    "value" : "ENC-12345"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB",
      "display" : "ambulatory"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "ATND",
        "display" : "attender"
      }]
    }],
    "individual" : {
      "reference" : "Practitioner/practitioner-single-example"
    }
  }],
  "period" : {
    "start" : "2023-01-01T10:00:00Z",
    "end" : "2023-01-01T11:00:00Z"
  },
  "reasonReference" : [{
    "reference" : "Condition/condition-single-example"
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-single-example"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/organization-single-example"
  }
}

```
