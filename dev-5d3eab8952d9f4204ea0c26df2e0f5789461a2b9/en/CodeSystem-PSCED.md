# Mock PSCED - Draft PH Core Implementation Guide v0.2.0

## CodeSystem: Mock PSCED (Experimental) 

 
Mock of the Philippine Standard Classification of Education. 

This Code system is referenced in the definition of the following value sets:

* [EducationalAttainments](ValueSet-educational-attainments.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSCED",
  "url" : "https://psa.gov.ph/classification/psced/level",
  "version" : "0.2.0",
  "name" : "PSCED",
  "title" : "Mock PSCED",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-12T06:10:41+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Mock of the Philippine Standard Classification of Education.",
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
