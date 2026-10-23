# Occupation - Draft PH Core Implementation Guide v0.2.0

## Extension: Occupation (Experimental) 

Patient's occupation.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Patient](StructureDefinition-ph-core-patient.md)
* Examples for this Extension: [Patient/patient-single-example](Patient-patient-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/occupation)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-occupation.csv), [Excel](../StructureDefinition-occupation.xlsx), [Schematron](../StructureDefinition-occupation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "occupation",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/occupation",
  "version" : "0.2.0",
  "name" : "Occupation",
  "title" : "Occupation",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T02:11:38+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Patient's occupation.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Occupation",
      "definition" : "Patient's occupation."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:occupationClassification",
      "path" : "Extension.extension",
      "sliceName" : "occupationClassification",
      "short" : "Occupation Classification",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:occupationClassification.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:occupationClassification.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "occupationClassification"
    },
    {
      "id" : "Extension.extension:occupationClassification.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/occupational-classifications"
      }
    },
    {
      "id" : "Extension.extension:occupationLength",
      "path" : "Extension.extension",
      "sliceName" : "occupationLength",
      "short" : "Length of time in occupation expressed as a date range or a number of years.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:occupationLength.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:occupationLength.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "occupationLength"
    },
    {
      "id" : "Extension.extension:occupationLength.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "integer"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/occupation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
