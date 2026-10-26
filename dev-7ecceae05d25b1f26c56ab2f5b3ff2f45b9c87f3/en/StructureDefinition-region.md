# Region - Draft PH Core Implementation Guide v0.2.0

## Extension: Region (Experimental) 

Region from the standard geographic code.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Address](StructureDefinition-ph-core-address.md)
* Examples for this Extension: [Philippine General Hospital](Location-location-single-example.md), [Department of Health - Sattelite Office](Organization-organization-single-example.md), [Practitioner/practitioner-single-example](Practitioner-practitioner-single-example.md) and [RelatedPerson/relatedperson-single-example](RelatedPerson-relatedperson-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/region)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-region.csv), [Excel](../StructureDefinition-region.xlsx), [Schematron](../StructureDefinition-region.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "region",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region",
  "version" : "0.2.0",
  "name" : "Region",
  "title" : "Region",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T05:33:49+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Region from the standard geographic code.",
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
    "expression" : "Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Region",
      "definition" : "Region from the standard geographic code."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/region"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/regions"
      }
    }]
  }
}

```
