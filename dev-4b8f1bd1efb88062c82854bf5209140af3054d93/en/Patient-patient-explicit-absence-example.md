# Patient with an unknown name - Draft PH Core Implementation Guide v0.2.1

## Example Patient: Patient with an unknown name

Profile: [PH Core Patient](StructureDefinition-ph-core-patient.md)

 (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-explicit-absence-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"]
  },
  "name" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }]
  }]
}

```
