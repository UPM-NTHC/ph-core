# PH Core PractitionerRole - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core PractitionerRole 

**Usages:**

* Refer to this Profile: [PH Core Claim](StructureDefinition-ph-core-claim.md), [PH Core Condition](StructureDefinition-ph-core-condition.md), [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Immunization](StructureDefinition-ph-core-immunization.md)... Show 10 more, [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md), [PH Core Observation](StructureDefinition-ph-core-observation.md), [PH Core Patient](StructureDefinition-ph-core-patient.md), [PH Core Procedure](StructureDefinition-ph-core-procedure.md), [PH Core Provenance](StructureDefinition-ph-core-provenance.md), [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md) and [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [PractitionerRole/practitionerrole-single-example](PractitionerRole-practitionerrole-single-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-practitionerrole.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-practitionerrole.csv), [Excel](../StructureDefinition-ph-core-practitionerrole.xlsx), [Schematron](../StructureDefinition-ph-core-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-practitionerrole",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
  "version" : "0.2.1",
  "name" : "PHCorePractitionerRole",
  "title" : "PH Core PractitionerRole",
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
  "description" : "The PH Core Practitioner Role Profile inherits from the [FHIR R4 PractitionerRole resource](https://hl7.org/fhir/R4/practitionerrole.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the PractitionerRole resource to record, search, and fetch basic demographics and administrative information about an individual practitioner role in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.identifier",
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
      "path" : "PractitionerRole.identifier",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
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
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
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
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
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
      "path" : "PractitionerRole.code",
      "mustSupport" : true,
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "practitionerrole-prc-profession-codes"
          },
          {
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ValueSet/prc-profession-codes"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This value set is for use when PRC Profession Codes are preferred."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "example",
        "description" : "The role a person plays representing an organization.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/practitioner-role"
      }
    },
    {
      "id" : "PractitionerRole.specialty",
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
      "path" : "PractitionerRole.specialty",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "PractitionerRole.telecom",
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
      "path" : "PractitionerRole.telecom",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom.system",
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
      "path" : "PractitionerRole.telecom.system",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom.value",
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
      "path" : "PractitionerRole.telecom.value",
      "mustSupport" : true
    }]
  }
}

```
