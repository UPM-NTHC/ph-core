# PRC All Codes ValueSet - Draft PH Core Implementation Guide v0.2.1

## ValueSet: PRC All Codes ValueSet (Experimental) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prc-all-codes",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/prc-all-codes",
  "version" : "0.2.1",
  "name" : "PRCAllCodesVS",
  "title" : "PRC All Codes ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-17",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The complete set of all concepts defined by PRCCodeSystem version 0.1.0, including its root and structural grouping concepts. This immutable technical ValueSet is the CodeSystem's full-content ValueSet; use the category-specific PRC ValueSets for code selection.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "immutable" : true,
  "purpose" : "Identify the complete contents of PRCCodeSystem version 0.1.0 for CodeSystem.valueSet metadata and terminology server compatibility.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/prc"
    }]
  }
}

```
