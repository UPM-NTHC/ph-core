# Regions - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Regions (Experimental) 

 
The Region codes valueset includes all region values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). 

 **References** 

* [Region](StructureDefinition-region.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "regions",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/regions",
  "version" : "0.2.0",
  "name" : "Regions",
  "title" : "Regions",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T01:10:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The Region codes valueset includes all region values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
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
        "code" : "1300000000",
        "display" : "National Capital Region"
      },
      {
        "code" : "0102800000",
        "display" : "Ilocos Norte"
      },
      {
        "code" : "0102900000",
        "display" : "Ilocos Sur"
      },
      {
        "code" : "0103300000",
        "display" : "La Union"
      },
      {
        "code" : "0100000000",
        "display" : "Ilocos Region"
      }]
    }]
  }
}

```
