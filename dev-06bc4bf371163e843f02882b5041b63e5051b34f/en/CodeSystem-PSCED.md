# PSCED - Draft PH Core Implementation Guide v0.2.1

## CodeSystem: PSCED (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [Educational Attainments](ValueSet-educational-attainments.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSCED",
  "url" : "https://psa.gov.ph/classification/psced/level",
  "version" : "0.2.1",
  "name" : "PSCED",
  "title" : "PSCED",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-26T05:47:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The Philippine Standard Classification of Education.",
  "caseSensitive" : true,
  "content" : "fragment",
  "concept" : [{
    "code" : "C201301",
    "display" : "Elementary Graduate",
    "definition" : "Completed elementary education"
  },
  {
    "code" : "C201302",
    "display" : "High School Graduate",
    "definition" : "Completed secondary education"
  },
  {
    "code" : "C201303",
    "display" : "College Graduate",
    "definition" : "Completed bachelor's degree"
  },
  {
    "code" : "C201304",
    "display" : "Postgraduate",
    "definition" : "Completed master's or doctoral degree"
  }]
}

```
