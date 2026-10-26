# Educational Attainment - Draft PH Core Implementation Guide v0.2.1

## Extension: Educational Attainment (Experimental) 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Patient](StructureDefinition-ph-core-patient.md)
* Examples for this Extension: [Bundle/bundle-acs-case-example](Bundle-bundle-acs-case-example.md), [Bundle/transaction-example](Bundle-transaction-example.md) and [Patient/patient-single-example](Patient-patient-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-educational-attainment.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-educational-attainment.csv), [Excel](../StructureDefinition-educational-attainment.xlsx), [Schematron](../StructureDefinition-educational-attainment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "educational-attainment",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment",
  "version" : "0.2.1",
  "name" : "EducationalAttainment",
  "title" : "Educational Attainment",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-26T05:35:56+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Highest educational attainment of the patient.",
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
      "short" : "Educational Attainment",
      "definition" : "Highest educational attainment of the patient."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/educational-attainments"
      }
    }]
  }
}

```
