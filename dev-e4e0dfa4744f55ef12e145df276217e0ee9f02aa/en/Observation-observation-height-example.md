# observation-height-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-height-example

Body height: 173 cm for Juan Dela Cruz.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-height-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8302-2",
      "display" : "Body height"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2023-06-15T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/practitioner-single-example"
  }],
  "valueQuantity" : {
    "value" : 173,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
