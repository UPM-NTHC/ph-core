# servicerequest-single-example - Draft PH Core Implementation Guide v0.2.0

## Example ServiceRequest: servicerequest-single-example

A laboratory service request for fasting blood glucose test ordered by Dr. Maria Clara Santos for patient Juan Dela Cruz during an ambulatory encounter.



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "servicerequest-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-serviceRequest"]
  },
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "108252007",
      "display" : "Laboratory procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "33747003",
      "display" : "Glucose measurement, blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "occurrenceDateTime" : "2024-03-15T10:00:00+08:00",
  "authoredOn" : "2024-03-15T09:30:00+08:00",
  "requester" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "supportingInfo" : [{
    "reference" : "Condition/condition-single-example"
  }]
}

```
