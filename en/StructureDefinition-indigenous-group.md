# Indigenous Group - Draft PH Core Implementation Guide v0.2.0

## Extension: Indigenous Group (Experimental) 

Indigenous / ethnic group that the patient belongs to.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Patient](StructureDefinition-ph-core-patient.md)
* Examples for this Extension: [Patient/patient-single-example](Patient-patient-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/indigenous-group)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-indigenous-group.csv), [Excel](../StructureDefinition-indigenous-group.xlsx), [Schematron](../StructureDefinition-indigenous-group.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "indigenous-group",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-group",
  "version" : "0.2.0",
  "name" : "IndigenousGroup",
  "title" : "Indigenous Group",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-08T09:59:08+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Indigenous / ethnic group that the patient belongs to.",
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
      "short" : "Indigenous Group",
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
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-group"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/indigenous-groups-vs"
      }
    }]
  }
}

```
