# PH Core Address - Draft PH Core Implementation Guide v0.2.0

## Data Type Profile: PH Core Address 

 
An address for the individual. 

**Usages:**

* Use this DataType Profile: [PH Core Location](StructureDefinition-ph-core-location.md), [PH Core Organization](StructureDefinition-ph-core-organization.md), [PH Core Patient](StructureDefinition-ph-core-patient.md), [PH Core Practitioner](StructureDefinition-ph-core-practitioner.md) and [PH Core RelatedPerson](StructureDefinition-ph-core-relatedperson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-address)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-address.csv), [Excel](../StructureDefinition-ph-core-address.xlsx), [Schematron](../StructureDefinition-ph-core-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-address",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-address",
  "version" : "0.2.0",
  "name" : "PHCoreAddress",
  "title" : "PH Core Address",
  "status" : "draft",
  "date" : "2026-06-08T09:59:08+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "An address for the individual.",
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
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    },
    {
      "id" : "Address.extension:region",
      "path" : "Address.extension",
      "sliceName" : "region",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/region"]
      }]
    },
    {
      "id" : "Address.extension:province",
      "path" : "Address.extension",
      "sliceName" : "province",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/province"]
      }]
    },
    {
      "id" : "Address.extension:cityMunicipality",
      "path" : "Address.extension",
      "sliceName" : "cityMunicipality",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"]
      }]
    },
    {
      "id" : "Address.extension:barangay",
      "path" : "Address.extension",
      "sliceName" : "barangay",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay"]
      }]
    }]
  }
}

```
