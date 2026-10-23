# PH Core Procedure - Draft PH Core Implementation Guide v0.2.0

## Resource Profile: PH Core Procedure 

 
An action that is or was performed on or for a patient, practitioner, device, organization, or location. 

**Usages:**

* Refer to this Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md), [PH Core Observation](StructureDefinition-ph-core-observation.md) and [PH Core Procedure](StructureDefinition-ph-core-procedure.md)
* Examples for this Profile: [Procedure/procedure-single-example](Procedure-procedure-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-procedure)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-procedure.csv), [Excel](../StructureDefinition-ph-core-procedure.xlsx), [Schematron](../StructureDefinition-ph-core-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-procedure",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure",
  "version" : "0.2.0",
  "name" : "PHCoreProcedure",
  "title" : "PH Core Procedure",
  "status" : "draft",
  "date" : "2026-06-10T05:12:58+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "An action that is or was performed on or for a patient, practitioner, device, organization, or location.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"]
      }]
    },
    {
      "id" : "Procedure.status",
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
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
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
      "path" : "Procedure.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding",
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
      "path" : "Procedure.statusReason.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.text",
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
      "path" : "Procedure.statusReason.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category",
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
      "path" : "Procedure.category",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category.coding",
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
      "path" : "Procedure.category.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category.text",
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
      "path" : "Procedure.category.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
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
      "path" : "Procedure.code",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding",
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
      "path" : "Procedure.code.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.text",
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
      "path" : "Procedure.code.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
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
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
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
      "path" : "Procedure.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
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
      "path" : "Procedure.performed[x]",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"]
      }]
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole"]
      }]
    },
    {
      "id" : "Procedure.performer.function",
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
      "path" : "Procedure.performer.function",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.function.coding",
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
      "path" : "Procedure.performer.function.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.function.text",
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
      "path" : "Procedure.performer.function.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "Procedure.performer.onBehalfOf",
      "path" : "Procedure.performer.onBehalfOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Procedure.location",
      "path" : "Procedure.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "Procedure.reasonCode",
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
      "path" : "Procedure.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonCode.coding",
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
      "path" : "Procedure.reasonCode.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonCode.text",
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
      "path" : "Procedure.reasonCode.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonReference",
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
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite",
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
      "path" : "Procedure.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite.coding",
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
      "path" : "Procedure.bodySite.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite.text",
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
      "path" : "Procedure.bodySite.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.outcome",
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
      "path" : "Procedure.outcome",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.outcome.coding",
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
      "path" : "Procedure.outcome.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.outcome.text",
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
      "path" : "Procedure.outcome.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication",
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
      "path" : "Procedure.complication",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication.coding",
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
      "path" : "Procedure.complication.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication.text",
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
      "path" : "Procedure.complication.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.followUp",
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
      "path" : "Procedure.followUp",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.followUp.coding",
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
      "path" : "Procedure.followUp.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.followUp.text",
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
      "path" : "Procedure.followUp.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.focalDevice.action",
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
      "path" : "Procedure.focalDevice.action",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.focalDevice.action.coding",
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
      "path" : "Procedure.focalDevice.action.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.focalDevice.action.text",
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
      "path" : "Procedure.focalDevice.action.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medication",
        "http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "Procedure.usedCode",
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
      "path" : "Procedure.usedCode",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode.coding",
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
      "path" : "Procedure.usedCode.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode.text",
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
      "path" : "Procedure.usedCode.text",
      "mustSupport" : true
    }]
  }
}

```
