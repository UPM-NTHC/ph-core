# Occupation Classifications - Draft PH Core Implementation Guide v0.2.1

## ValueSet: Occupation Classifications (Experimental) 

 **References** 

* [Occupation](StructureDefinition-occupation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "occupational-classifications",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/occupational-classifications",
  "version" : "0.2.1",
  "name" : "OccupationClassifications",
  "title" : "Occupation Classifications",
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
  "description" : "The Occupation codes valueset includes Occupational Classification values from the Philippine Standard Occupational Classification (PSOC) published by the Philippine Statistic Authority (PSA).",
  "compose" : {
    "include" : [{
      "system" : "https://psa.gov.ph/classification/psoc/unit",
      "concept" : [{
        "code" : "111102",
        "display" : "Hospital Administrator"
      },
      {
        "code" : "111103",
        "display" : "Medical Department Head"
      },
      {
        "code" : "121101",
        "display" : "General Manager"
      },
      {
        "code" : "211101",
        "display" : "Medical Doctor"
      }]
    }]
  }
}

```
