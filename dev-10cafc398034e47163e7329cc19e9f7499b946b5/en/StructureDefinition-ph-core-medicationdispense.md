# PH Core Medication Dispense - Draft PH Core Implementation Guide v0.2.0

## Resource Profile: PH Core Medication Dispense ( Experimental ) 

 
Captures key FHIR Medication Dispense data for the Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md) and [PH Core Observation](StructureDefinition-ph-core-observation.md)
* Examples for this Profile: [MedicationDispense/medicationdispense-single-example](MedicationDispense-medicationdispense-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-medicationdispense)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-medicationdispense.csv), [Excel](../StructureDefinition-ph-core-medicationdispense.xlsx), [Schematron](../StructureDefinition-ph-core-medicationdispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-medicationdispense",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationdispense",
  "version" : "0.2.0",
  "name" : "PHCoreMedicationDispense",
  "title" : "PH Core Medication Dispense",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-10T07:33:46+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures key FHIR Medication Dispense data for the Philippine context.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
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
      "id" : "MedicationDispense.statusReason[x]",
      "path" : "MedicationDispense.statusReason[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.statusReason[x]",
      "sliceName" : "statusReasonCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept.coding",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.statusReason[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept.text",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.statusReason[x].text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.category",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.category",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.category.coding",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.category.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.category.text",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.category.text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/drugs-vs"
      }
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.coding",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.medication[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.text",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.medication[x].text",
      "mustSupport" : true
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
      "id" : "MedicationDispense.performer.function",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.performer.function",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.function.coding",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.performer.function.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.function.text",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.performer.function.text",
      "mustSupport" : true
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
      "id" : "MedicationDispense.type",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.type",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type.coding",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type.text",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.type.text",
      "mustSupport" : true
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
      "id" : "MedicationDispense.substitution.type",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.substitution.type",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.type.coding",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.substitution.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.type.text",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.substitution.type.text",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.reason",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.substitution.reason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.reason.coding",
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.substitution.reason.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.reason.text",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
        "valueBoolean" : true
      },
      {
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
          "valueCode" : "MAY:able-to-populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://fhir.doh.gov.ph/phcore/ActorDefinition/Creator"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "MedicationDispense.substitution.reason.text",
      "mustSupport" : true
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
