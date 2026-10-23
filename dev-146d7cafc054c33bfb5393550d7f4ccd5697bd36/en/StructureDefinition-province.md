# Province - Draft PH Core Implementation Guide v0.2.0

## Extension: (Experimental) 

Province from the standard geographic code.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Address](StructureDefinition-ph-core-address.md)
* Examples for this Extension: [Bundle/transaction-example](Bundle-transaction-example.md), [Patient/example-patient](Patient-example-patient.md), [Patient/patient-single-example](Patient-patient-single-example.md) and [RelatedPerson/relatedperson-single-example](RelatedPerson-relatedperson-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/province)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-province.csv), [Excel](../StructureDefinition-province.xlsx), [Schematron](../StructureDefinition-province.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "province",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/province",
  "version" : "0.2.0",
  "name" : "Province",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T02:19:20+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Province from the standard geographic code.",
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
      "definition" : "Province from the standard geographic code."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/province"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/provinces"
      }
    }]
  }
}

```
