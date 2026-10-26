# Barangay - Draft PH Core Implementation Guide v0.2.0

## Extension: (Experimental) 

Barangay from the standard geographic code.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Address](StructureDefinition-ph-core-address.md)
* Examples for this Extension: [Bundle/transaction-example](Bundle-transaction-example.md), [Department of Health - Sattelite Office](Organization-organization-single-example.md), [Patient/patient-single-example](Patient-patient-single-example.md), [Practitioner/practitioner-single-example](Practitioner-practitioner-single-example.md) and [RelatedPerson/relatedperson-single-example](RelatedPerson-relatedperson-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/barangay)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-barangay.csv), [Excel](../StructureDefinition-barangay.xlsx), [Schematron](../StructureDefinition-barangay.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "barangay",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay",
  "version" : "0.2.0",
  "name" : "Barangay",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T01:16:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Barangay from the standard geographic code.",
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
      "definition" : "Barangay from the standard geographic code."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/barangays"
      }
    }]
  }
}

```
