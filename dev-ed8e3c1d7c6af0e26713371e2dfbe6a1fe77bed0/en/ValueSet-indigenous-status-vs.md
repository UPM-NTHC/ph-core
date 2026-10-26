# Indigenous Groups ValueSet - Draft PH Core Implementation Guide v0.2.1

## ValueSet: Indigenous Groups ValueSet (Experimental) 

 **References** 

* [Indigenous status](StructureDefinition-indigenous-status.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "indigenous-status-vs",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/indigenous-status-vs",
  "version" : "0.2.1",
  "name" : "IndigenousStatusVS",
  "title" : "Indigenous Groups ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-23T04:35:45+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Codes from the provisional locally authored indigenous-status list. National classification source, coverage and binding require appraisal.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/indigenous-status-cs"
    }]
  }
}

```
