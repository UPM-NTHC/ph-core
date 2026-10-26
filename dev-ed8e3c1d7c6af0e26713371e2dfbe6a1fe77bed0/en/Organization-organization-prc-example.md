# Illustrative practitioner credential issuer - Draft PH Core Implementation Guide v0.2.1

## Example Organization: Illustrative practitioner credential issuer

Profile: [PH Core Organization](StructureDefinition-ph-core-organization.md)

**active**: true

**type**: Government

**name**: Professional Regulation Commission (illustrative)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-prc-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "govt",
      "display" : "Government"
    }]
  }],
  "name" : "Professional Regulation Commission (illustrative)"
}

```
