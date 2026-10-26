# Health Care Provider Network Code - Draft PH Core Implementation Guide v0.2.0

## NamingSystem: Health Care Provider Network Code 

 
Health Care Provider Network (HCPN) code uniquely identifying an organization within its Health Care Provider Network in the Philippines. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "HCPNCodeNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.doh.gov.ph/phcore/NamingSystem/HCPNCodeNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "HCPNCode",
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
  "description" : "Health Care Provider Network (HCPN) code uniquely identifying an organization within its Health Care Provider Network in the Philippines.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code"
  }]
}

```
