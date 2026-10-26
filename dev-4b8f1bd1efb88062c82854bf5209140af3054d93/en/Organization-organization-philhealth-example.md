# Illustrative PhilHealth insurer - Draft PH Core Implementation Guide v0.2.1

## Example Organization: Illustrative PhilHealth insurer

Profile: [PH Core Organization](StructureDefinition-ph-core-organization.md)

Philippine Health Insurance Corporation (illustrative) (Insurance Company)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Insurance Company |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-philhealth-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "ins",
      "display" : "Insurance Company"
    }]
  }],
  "name" : "Philippine Health Insurance Corporation (illustrative)"
}

```
