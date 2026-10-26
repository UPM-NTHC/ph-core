# PhilHealth Procedure Identifier - Draft PH Core Implementation Guide v0.2.0

## NamingSystem: PhilHealth Procedure Identifier 

 
Identifier system for procedures assigned by PhilHealth for claims and reimbursement purposes. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "PhilHealthProcedureIDNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "https://fhir.doh.gov.ph/phcore/NamingSystem/PhilHealthProcedureIDNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "PhilHealthProcedureID",
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
  "description" : "Identifier system for procedures assigned by PhilHealth for claims and reimbursement purposes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://philhealth.gov.ph/procedure"
  }]
}

```
