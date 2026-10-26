# observation-lab-panel-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-lab-panel-example

Basic Metabolic Panel for Juan Dela Cruz including glucose, sodium, and potassium results.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-lab-panel-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
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
      "code" : "24326-1",
      "display" : "Electrolytes 1998 panel - Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "effectiveDateTime" : "2024-01-15T08:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/practitioner-single-example"
  }],
  "hasMember" : [{
    "reference" : "Observation/observation-glucose-example"
  },
  {
    "reference" : "Observation/observation-sodium-example"
  },
  {
    "reference" : "Observation/observation-potassium-example"
  }]
}

```
