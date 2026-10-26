# HCPN Code - Draft PH Core Implementation Guide v0.2.0

## Data Type Profile: HCPN Code 

 
Health Care Provider Network (HCPN) code uniquely identifying an organization within its Health Care Provider Network in the Philippines. 

**Usages:**

* Use this DataType Profile: [PH Core Organization](StructureDefinition-ph-core-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-hcpn-code)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-hcpn-code.csv), [Excel](../StructureDefinition-ph-core-hcpn-code.xlsx), [Schematron](../StructureDefinition-ph-core-hcpn-code.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-hcpn-code",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-hcpn-code",
  "version" : "0.2.0",
  "name" : "PHCoreHCPNCode",
  "title" : "HCPN Code",
  "status" : "draft",
  "date" : "2026-06-10T02:11:38+00:00",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier"
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/Identifier/hcpn-code"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "HCPN Code",
      "example" : [{
        "label" : "HCPN Code",
        "valueString" : "123456"
      }]
    }]
  }
}

```
