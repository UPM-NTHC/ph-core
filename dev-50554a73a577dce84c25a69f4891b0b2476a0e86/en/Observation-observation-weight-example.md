# observation-weight-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-weight-example

Body weight: 70 kg for Juan Dela Cruz.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-weight-example",
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
      "code" : "29463-7",
      "display" : "Body weight"
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
    "value" : 70,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
