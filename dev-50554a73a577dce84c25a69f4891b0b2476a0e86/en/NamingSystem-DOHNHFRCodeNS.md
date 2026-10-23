# DOH National Health Facility Registry Code - Draft PH Core Implementation Guide v0.2.0

## NamingSystem: DOH National Health Facility Registry Code 

 
Health Facility Code (HFC) from the National Health Facility Registry. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "DOHNHFRCodeNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.doh.gov.ph/phcore/NamingSystem/DOHNHFRCodeNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "DOHNHFRCode",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2025-06-18",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Health Facility Code (HFC) from the National Health Facility Registry.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://fhir.doh.gov.ph/phcore/Identifier/doh-nhfr-code"
  }]
}

```
