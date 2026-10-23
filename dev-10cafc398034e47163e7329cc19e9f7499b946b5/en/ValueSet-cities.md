# Cities - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Cities (Experimental) 

 
All city values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). 

 **References** 

* [City/Municipality](StructureDefinition-city-municipality.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "cities",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/cities",
  "version" : "0.2.0",
  "name" : "Cities",
  "title" : "Cities",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T07:33:46+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "All city values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://psa.gov.ph/classification/psgc",
      "concept" : [{
        "code" : "1380100000",
        "display" : "City of Caloocan"
      },
      {
        "code" : "1380200000",
        "display" : "City of Las Piñas"
      },
      {
        "code" : "1380600000",
        "display" : "City of Manila"
      },
      {
        "code" : "0133070000",
        "display" : "Bauang"
      }]
    }]
  }
}

```
