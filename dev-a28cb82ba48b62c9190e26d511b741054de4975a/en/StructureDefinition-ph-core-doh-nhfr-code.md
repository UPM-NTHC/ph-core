# DOH NHFR Code - Draft PH Core Implementation Guide v0.2.0

## Data Type Profile: DOH NHFR Code 

 
Health Facility Code (HFC) from the National Health Facility Registry 

**Usages:**

* Use this DataType Profile: [PH Core Organization](StructureDefinition-ph-core-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-doh-nhfr-code)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-doh-nhfr-code.csv), [Excel](../StructureDefinition-ph-core-doh-nhfr-code.xlsx), [Schematron](../StructureDefinition-ph-core-doh-nhfr-code.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-doh-nhfr-code",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-doh-nhfr-code",
  "version" : "0.2.0",
  "name" : "PHCoreDOHNHFRCode",
  "title" : "DOH NHFR Code",
  "status" : "draft",
  "date" : "2026-06-10T02:24:02+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Health Facility Code (HFC) from the National Health Facility Registry",
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
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/Identifier/doh-nhfr-code"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "DOH NHFR Code",
      "example" : [{
        "label" : "DOH NHFR Code",
        "valueString" : "4XYZ123"
      }]
    }]
  }
}

```
