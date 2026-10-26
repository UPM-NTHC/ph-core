# medication-single-example - Draft PH Core Implementation Guide v0.2.0

## Example Medication: medication-single-example

Profile: [PH Core Medication](StructureDefinition-ph-core-medication.md)

**code**: Twinact 40mg/5mg tablet

**form**: Tablet



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "medication-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medication"]
  },
  "code" : {
    "coding" : [{
      "system" : "https://verification.fda.gov.ph",
      "code" : "DRP-10144",
      "display" : "Twinact"
    }],
    "text" : "Twinact 40mg/5mg tablet"
  },
  "form" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385055001",
      "display" : "Tablet"
    }]
  }
}

```
