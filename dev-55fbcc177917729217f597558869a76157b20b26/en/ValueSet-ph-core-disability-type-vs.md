# PH Core Disability Type Value Set - Draft PH Core Implementation Guide v0.2.0

## ValueSet: PH Core Disability Type Value Set (Experimental) 

 
Value set for types of disability as defined by the Philippine government for PWD registration. 

 **References** 

* [PH Core PWD Disability Registration](StructureDefinition-ph-core-pwd-disability.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ph-core-disability-type-vs",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/ph-core-disability-type-vs",
  "version" : "0.2.0",
  "name" : "PHCoreDisabilityTypeVS",
  "title" : "PH Core Disability Type Value Set",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T02:31:18+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Value set for types of disability as defined by the Philippine government for PWD registration.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/ph-core-disability-type-cs"
    }]
  }
}

```
