# PH Core Medication Dispense - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core Medication Dispense ( Experimental ) 

**Usages:**

* Refer to this Profile: [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md) and [PH Core Observation](StructureDefinition-ph-core-observation.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-medicationdispense.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-medicationdispense.csv), [Excel](../StructureDefinition-ph-core-medicationdispense.xlsx), [Schematron](../StructureDefinition-ph-core-medicationdispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-medicationdispense",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationdispense",
  "version" : "0.2.1",
  "name" : "PHCoreMedicationDispense",
  "title" : "PH Core Medication Dispense",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-26T05:35:56+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures key FHIR Medication Dispense data for the Philippine context.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense"
    },
    {
      "id" : "MedicationDispense.medication[x]",
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
      "path" : "MedicationDispense.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationReference",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medication"]
      }]
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "phcore-meddisp-fda-cpr-pref"
          },
          {
            "url" : "purpose",
            "valueCode" : "preferred"
          },
          {
            "url" : "valueSet",
            "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ValueSet/drugs-vs"
          },
          {
            "url" : "documentation",
            "valueMarkdown" : "This value set is for use when Philippine FDA CPR product codes are preferred. It is a partial fragment and does not cover all registered drug products or medicinal substances."
          }],
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
        }],
        "strength" : "example",
        "description" : "A coded concept identifying which substance or product can be dispensed.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medication-codes"
      }
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "MedicationDispense.context",
      "path" : "MedicationDispense.context",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter",
        "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare"]
      }]
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson"]
      }]
    },
    {
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationrequest"]
      }]
    },
    {
      "id" : "MedicationDispense.destination",
      "path" : "MedicationDispense.destination",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "MedicationDispense.receiver",
      "path" : "MedicationDispense.receiver",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner"]
      }]
    },
    {
      "id" : "MedicationDispense.substitution.responsibleParty",
      "path" : "MedicationDispense.substitution.responsibleParty",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"]
      }]
    }]
  }
}

```
