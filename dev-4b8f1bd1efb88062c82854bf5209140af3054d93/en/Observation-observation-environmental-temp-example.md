# observation-environmental-temp-example - Draft PH Core Implementation Guide v0.2.1

## Example Observation: observation-environmental-temp-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Survey

**code**: Environmental temperature

**subject**: [Philippine General Hospital (Hospital)](Location-location-single-example.md)

**effective**: 2024-03-15 14:00:00+0000

**performer**: [Philippine General Hospital (Healthcare Provider) (https://nhfr.doh.gov.ph/#1234567890)](Organization-organization-pgh-example.md)

**value**: 22 degrees Celsius (Details: UCUM codeCel = 'Cel')



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
    "reference" : "Organization/organization-pgh-example"
  }],
  "valueQuantity" : {
    "value" : 22,
    "unit" : "degrees Celsius",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
