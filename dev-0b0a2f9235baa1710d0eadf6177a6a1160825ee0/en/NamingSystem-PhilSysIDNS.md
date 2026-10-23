# PhilSys Identification Number (PhilSys ID) NamingSystem - Draft PH Core Implementation Guide v0.2.0

## NamingSystem: PhilSys Identification Number (PhilSys ID) NamingSystem 

 
The National ID Number issued to all Filipino citizens and resident aliens in the Philippines, as part of the Philippine Identification System (PhilSys) program. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "PhilSysIDNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.doh.gov.ph/phcore/NamingSystem/PhilSysIDNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "PhilSysID",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2025-06-13",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The National ID Number issued to all Filipino citizens and resident aliens in the Philippines, as part of the Philippine Identification System (PhilSys) program.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://philsys.gov.ph/fhir/Identifier/philsys-id"
  }]
}

```
