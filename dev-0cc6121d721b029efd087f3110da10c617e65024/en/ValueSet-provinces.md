# Provinces - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Provinces (Experimental) 

 
All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). 

 **References** 

* [Province](StructureDefinition-province.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "provinces",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/provinces",
  "version" : "0.2.0",
  "name" : "Provinces",
  "title" : "Provinces",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T02:25:17+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
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
        "code" : "0402100000",
        "display" : "Cavite"
      },
      {
        "code" : "0403400000",
        "display" : "Laguna"
      },
      {
        "code" : "0405600000",
        "display" : "Quezon"
      },
      {
        "code" : "0405800000",
        "display" : "Rizal"
      },
      {
        "code" : "1704000000",
        "display" : "Marinduque"
      },
      {
        "code" : "1705100000",
        "display" : "Occidental Mindoro"
      },
      {
        "code" : "0133000000",
        "display" : "La Union"
      }]
    }]
  }
}

```
