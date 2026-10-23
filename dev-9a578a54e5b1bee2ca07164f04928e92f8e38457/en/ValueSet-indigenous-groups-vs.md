# Indigenous Groups ValueSet - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Indigenous Groups ValueSet (Experimental) 

 
A value set representing the recognized Indigenous groups to which a person may belong. 

 **References** 

* [Indigenous Group](StructureDefinition-indigenous-group.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "indigenous-groups-vs",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/indigenous-groups-vs",
  "version" : "0.2.0",
  "name" : "IndigenousGroupsVS",
  "title" : "Indigenous Groups ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T05:37:22+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "A value set representing the recognized Indigenous groups to which a person may belong.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir.doh.gov.ph/phcore/CodeSystem/indigenous-groups-cs"
    }]
  }
}

```
