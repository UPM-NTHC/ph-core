# Provinces - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Provinces (Experimental) 

 
All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA). 

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
  "date" : "2026-09-09T06:32:22+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA).",
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
        "code" : "0105500000",
        "display" : "Pangasinan"
      },
      {
        "code" : "0200900000",
        "display" : "Batanes"
      },
      {
        "code" : "0201500000",
        "display" : "Cagayan"
      },
      {
        "code" : "0203100000",
        "display" : "Isabela"
      },
      {
        "code" : "0300800000",
        "display" : "Bataan"
      },
      {
        "code" : "0301400000",
        "display" : "Bulacan"
      },
      {
        "code" : "0401000000",
        "display" : "Batangas"
      },
      {
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
        "code" : "0500500000",
        "display" : "Albay"
      },
      {
        "code" : "0501600000",
        "display" : "Camarines Norte"
      },
      {
        "code" : "0600400000",
        "display" : "Aklan"
      },
      {
        "code" : "0600600000",
        "display" : "Antique"
      },
      {
        "code" : "0701200000",
        "display" : "Bohol"
      },
      {
        "code" : "0702200000",
        "display" : "Cebu"
      },
      {
        "code" : "0802600000",
        "display" : "Eastern Samar"
      },
      {
        "code" : "0803700000",
        "display" : "Leyte"
      },
      {
        "code" : "0906600000",
        "display" : "Sulu"
      },
      {
        "code" : "0907200000",
        "display" : "Zamboanga del Norte"
      },
      {
        "code" : "1001300000",
        "display" : "Bukidnon"
      },
      {
        "code" : "1001800000",
        "display" : "Camiguin"
      },
      {
        "code" : "1102300000",
        "display" : "Davao del Norte"
      },
      {
        "code" : "1102400000",
        "display" : "Davao del Sur"
      },
      {
        "code" : "1204700000",
        "display" : "Cotabato"
      },
      {
        "code" : "1206300000",
        "display" : "South Cotabato"
      },
      {
        "code" : "1400100000",
        "display" : "Abra"
      },
      {
        "code" : "1401100000",
        "display" : "Benguet"
      },
      {
        "code" : "1402700000",
        "display" : "Ifugao"
      },
      {
        "code" : "1403200000",
        "display" : "Kalinga"
      },
      {
        "code" : "1404400000",
        "display" : "Mountain Province"
      },
      {
        "code" : "1408100000",
        "display" : "Apayao"
      },
      {
        "code" : "1600200000",
        "display" : "Agusan del Norte"
      },
      {
        "code" : "1600300000",
        "display" : "Agusan del Sur"
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
        "code" : "1804500000",
        "display" : "Negros Occidental"
      },
      {
        "code" : "1804600000",
        "display" : "Negros Oriental"
      },
      {
        "code" : "1900700000",
        "display" : "Basilan"
      },
      {
        "code" : "1903600000",
        "display" : "Lanao del Sur"
      }]
    }]
  }
}

```
