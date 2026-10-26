# Mock PSOC - Draft PH Core Implementation Guide v0.2.0

## CodeSystem: Mock PSOC (Experimental) 

 
Mock of the Philippine Standard Occupational Classification. 

This Code system is referenced in the definition of the following value sets:

* [OccupationClassifications](ValueSet-occupational-classifications.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSOC",
  "url" : "https://psa.gov.ph/classification/psoc/unit",
  "version" : "0.2.0",
  "name" : "PSOC",
  "title" : "Mock PSOC",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T05:07:23+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Mock of the Philippine Standard Occupational Classification.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "caseSensitive" : true,
  "content" : "example",
  "concept" : [{
    "code" : "111102",
    "display" : "Hospital Administrator",
    "definition" : "Manages hospital operations"
  },
  {
    "code" : "111103",
    "display" : "Medical Department Head",
    "definition" : "Head of a medical department"
  },
  {
    "code" : "121101",
    "display" : "General Manager",
    "definition" : "Manages overall operations of an organization"
  },
  {
    "code" : "211101",
    "display" : "Medical Doctor",
    "definition" : "Licensed physician practicing medicine"
  }]
}

```
