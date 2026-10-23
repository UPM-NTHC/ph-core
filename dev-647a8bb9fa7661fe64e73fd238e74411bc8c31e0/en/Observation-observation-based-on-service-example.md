# observation-based-on-service-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-based-on-service-example

Hemoglobin A1c: 6.2% (Normal) for Juan Dela Cruz based on diabetes monitoring request.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-based-on-service-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/servicerequest-single-example"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "4548-4",
      "display" : "Hemoglobin A1c/Hemoglobin.total in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2024-03-10T10:00:00Z",
  "performer" : [{
    "reference" : "Organization/organization-single-example"
  }],
  "valueQuantity" : {
    "value" : 6.2,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }]
}

```
