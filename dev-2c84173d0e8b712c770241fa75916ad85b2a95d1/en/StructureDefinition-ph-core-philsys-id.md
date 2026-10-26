# PhilSys Identification Number (PhilSys ID) Identifier - Draft PH Core Implementation Guide v0.2.0

## Data Type Profile: PhilSys Identification Number (PhilSys ID) Identifier 

 
The National ID Number PSA issued to all Filipino citizens and resident aliens in the Philippines, as part of the Philippine Identification System (PhilSys) program. 

**Usages:**

* Use this DataType Profile: [PH Core Patient](StructureDefinition-ph-core-patient.md) and [PH Core RelatedPerson](StructureDefinition-ph-core-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-philsys-id)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-philsys-id.csv), [Excel](../StructureDefinition-ph-core-philsys-id.xlsx), [Schematron](../StructureDefinition-ph-core-philsys-id.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-philsys-id",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-philsys-id",
  "version" : "0.2.0",
  "name" : "PHCorePhilSysID",
  "title" : "PhilSys Identification Number (PhilSys ID) Identifier",
  "status" : "draft",
  "date" : "2026-06-10T01:16:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The National ID Number PSA issued to all Filipino citizens and resident aliens in the Philippines, as part of the Philippine Identification System (PhilSys) program.",
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
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier.type.coding.system",
      "path" : "Identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Identifier.type.coding.code",
      "path" : "Identifier.type.coding.code",
      "fixedCode" : "NI"
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://philsys.gov.ph/fhir/Identifier/philsys-id"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "PhilSys ID",
      "example" : [{
        "label" : "PhilSys ID",
        "valueString" : "1234-5678-9101-1213"
      }]
    }]
  }
}

```
