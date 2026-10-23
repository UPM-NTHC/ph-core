# observation-environmental-temp-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-environmental-temp-example

Environmental temperature: 22 degrees Celsius recorded at Philippine General Hospital ward.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-environmental-temp-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey",
      "display" : "Survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "60832-3",
      "display" : "Room temperature"
    }],
    "text" : "Environmental temperature"
  },
  "subject" : {
    "reference" : "Location/location-single-example"
  },
  "effectiveDateTime" : "2024-03-15T14:00:00Z",
  "performer" : [{
    "reference" : "Organization/organization-single-example"
  }],
  "valueQuantity" : {
    "value" : 22,
    "unit" : "degrees Celsius",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
