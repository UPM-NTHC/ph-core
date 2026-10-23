# Barangays - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Barangays (Experimental) 

 
The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA). 

 **References** 

* [Barangay](StructureDefinition-barangay.md)
* [PH Core PWD Disability Registration](StructureDefinition-ph-core-pwd-disability.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "barangays",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/barangays",
  "version" : "0.2.0",
  "name" : "Barangays",
  "title" : "Barangays",
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
  "description" : "The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistics Authority (PSA).",
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
        "code" : "0102801001",
        "display" : "Adams"
      },
      {
        "code" : "0102802001",
        "display" : "Bani"
      },
      {
        "code" : "0102802002",
        "display" : "Buyon"
      },
      {
        "code" : "0102802003",
        "display" : "Cabaruan"
      },
      {
        "code" : "0102802004",
        "display" : "Cabulalaan"
      },
      {
        "code" : "0102802005",
        "display" : "Cabusligan"
      },
      {
        "code" : "0102901001",
        "display" : "Alilem Daya "
      },
      {
        "code" : "0200901001",
        "display" : "Ihubok II"
      },
      {
        "code" : "0201501001",
        "display" : "Alinunu"
      },
      {
        "code" : "0300801001",
        "display" : "Bangkal"
      },
      {
        "code" : "0301401001",
        "display" : "Banaban"
      },
      {
        "code" : "0401001001",
        "display" : "Adia"
      },
      {
        "code" : "0402101001",
        "display" : "Amuyong"
      },
      {
        "code" : "0500501001",
        "display" : "Baclayon"
      },
      {
        "code" : "0501601001",
        "display" : "Angas"
      },
      {
        "code" : "0600401001",
        "display" : "Cabangila"
      },
      {
        "code" : "0600601001",
        "display" : "Bayo Grande"
      },
      {
        "code" : "0701201001",
        "display" : "Bahi"
      },
      {
        "code" : "0702201001",
        "display" : "Cabadiangan"
      },
      {
        "code" : "0802601001",
        "display" : "Aguinaldo"
      },
      {
        "code" : "0803701001",
        "display" : "Alangilan"
      },
      {
        "code" : "0906601001",
        "display" : "Adjid"
      },
      {
        "code" : "0907201001",
        "display" : "Aliguay"
      },
      {
        "code" : "1001301001",
        "display" : "Balintad"
      },
      {
        "code" : "1001801001",
        "display" : "Alga"
      },
      {
        "code" : "1102301004",
        "display" : "Binancian"
      },
      {
        "code" : "1102401001",
        "display" : "Alegre"
      },
      {
        "code" : "1204701001",
        "display" : "Bao"
      },
      {
        "code" : "1206302002",
        "display" : "Benitez "
      },
      {
        "code" : "1380100001",
        "display" : "Barangay 1"
      },
      {
        "code" : "1380608000",
        "display" : "Ermita"
      },
      {
        "code" : "1400101001",
        "display" : "Agtangao"
      },
      {
        "code" : "1401101001",
        "display" : "Abiang"
      },
      {
        "code" : "1600201001",
        "display" : "Abilan"
      },
      {
        "code" : "1600301001",
        "display" : "Calaitan"
      },
      {
        "code" : "1704001001",
        "display" : "Agot"
      },
      {
        "code" : "1705101001",
        "display" : "Balao"
      },
      {
        "code" : "1804502001",
        "display" : "Abuanan"
      },
      {
        "code" : "1804601001",
        "display" : "Bio-os"
      },
      {
        "code" : "1900702001",
        "display" : "Arco"
      },
      {
        "code" : "1903601001",
        "display" : "Ampao"
      }]
    }]
  }
}

```
