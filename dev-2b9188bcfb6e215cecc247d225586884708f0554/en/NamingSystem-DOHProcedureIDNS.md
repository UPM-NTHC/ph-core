# DOH Procedure Identifier - Draft PH Core Implementation Guide v0.2.0

## NamingSystem: DOH Procedure Identifier 

 
Identifier system for procedures assigned by the Department of Health (DOH) health facilities. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "DOHProcedureIDNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.doh.gov.ph/phcore/NamingSystem/DOHProcedureIDNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "DOHProcedureID",
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
  "description" : "Identifier system for procedures assigned by the Department of Health (DOH) health facilities.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://fhir.doh.gov.ph/phcore/NamingSystem/procedure-id"
  }]
}

```
