# PIN - PhilHealth Identification Number NamingSystem - Draft PH Core Implementation Guide v0.2.0

## NamingSystem: PIN - PhilHealth Identification Number NamingSystem 

 
The permanent and unique number issued by PhilHealth to individual members and to each and every dependent. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "PhilHealthIDNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.doh.gov.ph/phcore/NamingSystem/PhilHealthIDNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "PhilHealthID",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2025-06-01",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
  }]
}

```
