# Educational Attainments - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Educational Attainments (Experimental) 

 
All categories of educational programs, courses, and attainment levels in the Philippines, based on the Philippine Standard Classification of Education (PSCED) published by the Philippine Statistics Authority (PSA) 

 **References** 

* [Educational Attainment](StructureDefinition-educational-attainment.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "educational-attainments",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/educational-attainments",
  "version" : "0.2.0",
  "name" : "EducationalAttainments",
  "title" : "Educational Attainments",
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
  "description" : "All categories of educational programs, courses, and attainment levels in the Philippines, based on the Philippine Standard Classification of Education (PSCED) published by the Philippine Statistics Authority (PSA)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://psa.gov.ph/classification/psced/level",
      "concept" : [{
        "code" : "C201301",
        "display" : "Elementary Graduate"
      },
      {
        "code" : "C201302",
        "display" : "High School Graduate"
      },
      {
        "code" : "C201303",
        "display" : "College Graduate"
      },
      {
        "code" : "C201304",
        "display" : "Postgraduate"
      }]
    }]
  }
}

```
