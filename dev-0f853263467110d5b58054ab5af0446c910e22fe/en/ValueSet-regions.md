# Regions - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Regions (Experimental) 

 
The Region codes valueset includes all region values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA). 

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
  "date" : "2026-06-22T14:12:12+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The Region codes valueset includes all region values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA).",
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
        "code" : "0100000000",
        "display" : "Region I (Ilocos Region)"
      },
      {
        "code" : "0200000000",
        "display" : "Region II (Cagayan Valley)"
      },
      {
        "code" : "0300000000",
        "display" : "Region III (Central Luzon)"
      },
      {
        "code" : "0400000000",
        "display" : "Region IV-A (CALABARZON)"
      },
      {
        "code" : "0500000000",
        "display" : "Region V (Bicol Region)"
      },
      {
        "code" : "0600000000",
        "display" : "Region VI (Western Visayas)"
      },
      {
        "code" : "0700000000",
        "display" : "Region VII (Central Visayas)"
      },
      {
        "code" : "0800000000",
        "display" : "Region VIII (Eastern Visayas)"
      },
      {
        "code" : "0900000000",
        "display" : "Region IX (Zamboanga Peninsula)"
      },
      {
        "code" : "1000000000",
        "display" : "Region X (Northern Mindanao)"
      },
      {
        "code" : "1100000000",
        "display" : "Region XI (Davao Region)"
      },
      {
        "code" : "1200000000",
        "display" : "Region XII (SOCCSKSARGEN)"
      },
      {
        "code" : "1300000000",
        "display" : "National Capital Region (NCR)"
      },
      {
        "code" : "1400000000",
        "display" : "Cordillera Administrative Region (CAR)"
      },
      {
        "code" : "1600000000",
        "display" : "Region XIII (Caraga)"
      },
      {
        "code" : "1700000000",
        "display" : "MIMAROPA Region"
      },
      {
        "code" : "1800000000",
        "display" : "Negros Island Region (NIR)"
      },
      {
        "code" : "1900000000",
        "display" : "Bangsamoro Autonomous Region In Muslim Mindanao (BARMM)"
      }]
    }]
  }
}

```
