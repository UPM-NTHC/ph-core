# PH Core CapabilityStatement - Draft PH Core Implementation Guide v0.2.0

## Resource Profile: PH Core CapabilityStatement 

 
CapabilityStatement for the PH Core Implementation Guide. Defines the conformance requirements for FHIR servers implementing the minimum set of Philippine Realm resource constraints. Includes supported resource types with PH Core profiles, RESTful interactions, search parameters, and security expectations. Validated during the June 2026 Aklan Connectathon. 

**Usages:**

* Examples for this Profile: [PHCoreServerCapabilityStatement](CapabilityStatement-ExamplePHCoreCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-capability-statement)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-capability-statement.csv), [Excel](../StructureDefinition-ph-core-capability-statement.xlsx), [Schematron](../StructureDefinition-ph-core-capability-statement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-capability-statement",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-capability-statement",
  "version" : "0.2.0",
  "name" : "PHCoreCapabilityStatement",
  "title" : "PH Core CapabilityStatement",
  "status" : "draft",
  "date" : "2026-06-22T14:12:12+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "CapabilityStatement for the PH Core Implementation Guide. Defines the conformance requirements for FHIR servers implementing the minimum set of Philippine Realm resource constraints. Includes supported resource types with PH Core profiles, RESTful interactions, search parameters, and security expectations. Validated during the June 2026 Aklan Connectathon.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CapabilityStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CapabilityStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CapabilityStatement",
      "path" : "CapabilityStatement"
    },
    {
      "id" : "CapabilityStatement.status",
      "path" : "CapabilityStatement.status",
      "patternCode" : "draft"
    },
    {
      "id" : "CapabilityStatement.kind",
      "path" : "CapabilityStatement.kind",
      "patternCode" : "requirements"
    },
    {
      "id" : "CapabilityStatement.fhirVersion",
      "path" : "CapabilityStatement.fhirVersion",
      "patternCode" : "4.0.1"
    },
    {
      "id" : "CapabilityStatement.rest",
      "path" : "CapabilityStatement.rest",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "mode"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "CapabilityStatement.rest:server",
      "path" : "CapabilityStatement.rest",
      "sliceName" : "server",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "CapabilityStatement.rest:server.mode",
      "path" : "CapabilityStatement.rest.mode",
      "fixedCode" : "server"
    },
    {
      "id" : "CapabilityStatement.rest:server.security",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Server"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Consumer"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      },
      {
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "CapabilityStatement.rest.security",
      "min" : 1
    },
    {
      "id" : "CapabilityStatement.rest:server.resource",
      "path" : "CapabilityStatement.rest.resource",
      "min" : 1
    },
    {
      "id" : "CapabilityStatement.rest:server.resource.profile",
      "path" : "CapabilityStatement.rest.resource.profile",
      "min" : 1
    },
    {
      "id" : "CapabilityStatement.rest:server.resource.interaction",
      "path" : "CapabilityStatement.rest.resource.interaction",
      "min" : 1
    },
    {
      "id" : "CapabilityStatement.rest:server.interaction",
      "path" : "CapabilityStatement.rest.interaction",
      "min" : 1
    }]
  }
}

```
