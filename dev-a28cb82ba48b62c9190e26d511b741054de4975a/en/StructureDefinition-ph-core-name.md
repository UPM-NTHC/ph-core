# PH Core Name - Draft PH Core Implementation Guide v0.2.0

## Data Type Profile: PH Core Name 

 
A name of a person in the philippine context. 

## Middle Name Representation

Per naming conventions, the middle name (usually the mother's maiden surname in most cases) is represented using the `given[1]` array:

* **`given[0]`**: First name (e.g., "Juan Lawrence")
* **`given[1]`**: Middle name (e.g., "Les Dalisay")
* **`family`**: Family name (e.g., "Reyes")

### Example

A person named "Juan Lawrence Les Dalisay Reyes" would be represented as:

```
{
  "use": "official",
  "given": ["Juan Lawrence", "Les Dalisay"],
  "family": "Reyes"
}

```

**Usages:**

* Use this DataType Profile: [PH Core Patient](StructureDefinition-ph-core-patient.md), [PH Core Practitioner](StructureDefinition-ph-core-practitioner.md) and [PH Core RelatedPerson](StructureDefinition-ph-core-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-name)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-name.csv), [Excel](../StructureDefinition-ph-core-name.xlsx), [Schematron](../StructureDefinition-ph-core-name.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-name",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-name",
  "version" : "0.2.0",
  "name" : "PHCoreName",
  "title" : "PH Core Name",
  "status" : "draft",
  "date" : "2026-06-10T02:24:02+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "A name of a person in the philippine context.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HumanName",
      "path" : "HumanName"
    },
    {
      "id" : "HumanName.given",
      "path" : "HumanName.given",
      "short" : "First and middle names",
      "definition" : "First name (given[0]) and Middle Name (given[1])."
    }]
  }
}

```
