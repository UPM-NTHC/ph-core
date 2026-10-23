# Batch Number - Draft PH Core Implementation Guide v0.2.0

## Extension: Batch Number 

The batch number of the vaccine administered.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Immunization](StructureDefinition-ph-core-immunization.md)
* Examples for this Extension: [Bundle/transaction-example](Bundle-transaction-example.md) and [Immunization/immunization-single-example](Immunization-immunization-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/batch-number)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-batch-number.csv), [Excel](../StructureDefinition-batch-number.xlsx), [Schematron](../StructureDefinition-batch-number.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "batch-number",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/batch-number",
  "version" : "0.2.0",
  "name" : "BatchNumber",
  "title" : "Batch Number",
  "status" : "draft",
  "date" : "2026-06-10T07:33:46+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The batch number of the vaccine administered.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Immunization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Batch Number",
      "definition" : "The batch number of the vaccine administered."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/batch-number"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
