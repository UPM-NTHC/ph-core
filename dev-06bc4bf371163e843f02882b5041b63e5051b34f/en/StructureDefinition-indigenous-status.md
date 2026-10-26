# Indigenous status - Draft PH Core Implementation Guide v0.2.1

## Extension: Indigenous status (Experimental) 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Patient](StructureDefinition-ph-core-patient.md)
* Examples for this Extension: [Bundle/transaction-example](Bundle-transaction-example.md) and [Patient/patient-single-example](Patient-patient-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-indigenous-status.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-indigenous-status.csv), [Excel](../StructureDefinition-indigenous-status.xlsx), [Schematron](../StructureDefinition-indigenous-status.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "indigenous-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-status",
  "version" : "0.2.1",
  "name" : "IndigenousStatus",
  "title" : "Indigenous status",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-26T05:47:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Indigenous / ethnic group that the patient belongs to.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Indigenous status",
      "definition" : "Indigenous / ethnic group that the patient belongs to."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-status"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/indigenous-status-vs"
      }
    }]
  }
}

```
