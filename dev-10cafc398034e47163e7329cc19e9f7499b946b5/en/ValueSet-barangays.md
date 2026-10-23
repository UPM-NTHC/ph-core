# Barangays - Draft PH Core Implementation Guide v0.2.0

## ValueSet: Barangays (Experimental) 

 
The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). 

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
  "date" : "2026-06-10T07:33:46+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
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
        "code" : "1380100001",
        "display" : "Barangay 1"
      },
      {
        "code" : "0133070250",
        "display" : "Paringao"
      }]
    }]
  }
}

```
