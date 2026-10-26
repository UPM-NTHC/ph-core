# PH Core Condition - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core Condition 

**Usages:**

* Refer to this Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md)
* Examples for this Profile: [Condition/condition-appendicitis-example](Condition-condition-appendicitis-example.md) and [Condition/condition-single-example](Condition-condition-single-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-condition.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-condition.csv), [Excel](../StructureDefinition-ph-core-condition.xlsx), [Schematron](../StructureDefinition-ph-core-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-condition",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition",
  "version" : "0.2.1",
  "name" : "PHCoreCondition",
  "title" : "PH Core Condition",
  "status" : "draft",
  "date" : "2026-10-26T05:47:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures Condition.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.category",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
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
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Condition.category",
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
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
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Condition.severity",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
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
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Condition.code",
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
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
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
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
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Condition.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson"]
      }]
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson"]
      }]
    },
    {
      "id" : "Condition.note",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate-if-known"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreClient"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Client produces resources for supported resource-bearing requests. This obligation does not require a read-only Client to author resources or implement write interactions."
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
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/PHCoreServer"
        },
        {
          "url" : "documentation",
          "valueMarkdown" : "Applies when the Server processes resources in supported incoming requests. Correct handling is use-case dependent and is not a blanket persistence or display requirement."
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Condition.note",
      "mustSupport" : true
    }]
  }
}

```
