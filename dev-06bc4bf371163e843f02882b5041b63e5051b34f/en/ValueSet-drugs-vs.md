# Drugs - Draft PH Core Implementation Guide v0.2.1

## ValueSet: Drugs (Experimental) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "drugs-vs",
  "url" : "https://fhir.doh.gov.ph/phcore/ValueSet/drugs-vs",
  "version" : "0.2.1",
  "name" : "DrugsVS",
  "title" : "Drugs",
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
  "description" : "Codes from the locally authored FDA CPR.",
  "compose" : {
    "include" : [{
      "system" : "https://verification.fda.gov.ph"
    }]
  }
}

```
