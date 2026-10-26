# practitioner-identifier - Draft PH Core Implementation Guide v0.2.1

## SearchParameter: practitioner-identifier 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "practitioner-identifier",
  "url" : "https://fhir.doh.gov.ph/phcore/SearchParameter/practitioner-identifier",
  "version" : "0.2.1",
  "name" : "PHCorePractitionerIdentifier",
  "status" : "draft",
  "date" : "2026-10-26T05:35:56+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "R5 Practitioner identifier-search behavior backported to R4, covering practitioner and qualification identifiers.",
  "code" : "identifier",
  "base" : ["Practitioner"],
  "type" : "token",
  "expression" : "Practitioner.identifier | Practitioner.qualification.identifier"
}

```
