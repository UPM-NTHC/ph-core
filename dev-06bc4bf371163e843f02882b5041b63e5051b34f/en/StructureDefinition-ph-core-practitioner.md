# PH Core Practitioner - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core Practitioner 

**Usages:**

* Refer to this Profile: [PH Core Claim](StructureDefinition-ph-core-claim.md), [PH Core Condition](StructureDefinition-ph-core-condition.md), [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Immunization](StructureDefinition-ph-core-immunization.md)... Show 11 more, [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md), [PH Core Observation](StructureDefinition-ph-core-observation.md), [PH Core Patient](StructureDefinition-ph-core-patient.md), [PH Core PractitionerRole](StructureDefinition-ph-core-practitionerrole.md), [PH Core Procedure](StructureDefinition-ph-core-procedure.md), [PH Core Provenance](StructureDefinition-ph-core-provenance.md), [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md) and [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [Practitioner/practitioner-single-example](Practitioner-practitioner-single-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-practitioner.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-practitioner.csv), [Excel](../StructureDefinition-ph-core-practitioner.xlsx), [Schematron](../StructureDefinition-ph-core-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-practitioner",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
  "version" : "0.2.1",
  "name" : "PHCorePractitioner",
  "title" : "PH Core Practitioner",
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
  "description" : "The PH Core Practitioner Profile inherits from the [FHIR R4 Practitioner resource](https://hl7.org/fhir/R4/practitioner.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the Practitioner resource to record, search, and fetch basic demographics and administrative information about an individual practitioner in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases.",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.extension",
      "path" : "Practitioner.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.extension:genderIdentity",
      "path" : "Practitioner.extension",
      "sliceName" : "genderIdentity",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-genderIdentity|5.3.0"]
      }]
    },
    {
      "id" : "Practitioner.extension:individualPronouns",
      "path" : "Practitioner.extension",
      "sliceName" : "individualPronouns",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-pronouns|5.3.0"]
      }]
    },
    {
      "id" : "Practitioner.extension:sex",
      "path" : "Practitioner.extension",
      "sliceName" : "sex",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender|5.3.0"]
      }]
    },
    {
      "id" : "Practitioner.name",
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
      "path" : "Practitioner.name",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.family",
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
      "path" : "Practitioner.name.family",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.given",
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
      "path" : "Practitioner.name.given",
      "short" : "First name (given[0]) and Middle Name (given[1]).",
      "definition" : "First name (given[0]) and Middle Name (given[1]).",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-address"]
      }]
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "identifier.system"
        }],
        "description" : "PRC professional licenses are identified by the qualification identifier system.",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "practitioner-prc-profession-codes"
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
        "description" : "Specific qualification the practitioner has to provide a service.",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-2.7-0360"
      }
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Practitioner.qualification:PRCLicense",
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
      "path" : "Practitioner.qualification",
      "sliceName" : "PRCLicense",
      "short" : "PRC professional license",
      "definition" : "A professional license issued by the Professional Regulation Commission. Each distinct license is represented by its own qualification.",
      "min" : 0,
      "max" : "*",
      "constraint" : [{
        "key" : "ph-prc-001",
        "severity" : "error",
        "human" : "A PRC license qualification SHALL contain exactly one PRC profession code from PRCProfessionCodesVS.",
        "expression" : "code.memberOf('https://fhir.doh.gov.ph/phcore/ValueSet/prc-profession-codes') and code.coding.where(system = 'https://fhir.doh.gov.ph/phcore/CodeSystem/prc').count() = 1",
        "source" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification:PRCLicense.identifier",
      "path" : "Practitioner.qualification.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Practitioner.qualification:PRCLicense.identifier.system",
      "path" : "Practitioner.qualification.identifier.system",
      "min" : 1,
      "fixedUri" : "https://www.prc.gov.ph"
    },
    {
      "id" : "Practitioner.qualification:PRCLicense.identifier.value",
      "path" : "Practitioner.qualification.identifier.value",
      "short" : "PRC license number",
      "min" : 1
    },
    {
      "id" : "Practitioner.qualification:PRCLicense.code",
      "path" : "Practitioner.qualification.code",
      "comment" : "Use a PRC CPDAS numerical profession code when it accurately classifies the qualification. This code does not assert that the license is active.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/prc-profession-codes"
      }
    }]
  }
}

```
