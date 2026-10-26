# PH Core Provenance - Draft PH Core Implementation Guide v0.2.0

## Resource Profile: PH Core Provenance 

 
This profile localizes the FHIR R4 Provenance resource to the Philippine context, capturing key information about who, what, when, and where for a set of resources. It is used to track the authorship and history of healthcare data in Philippine health information systems. 

## Overview

The PH Core Provenance Profile inherits from the FHIR Provenance resource; refer to it for scope and usage definitions. This profile sets minimum expectations for the Provenance resource to record, search, and fetch provenance information associated with a record. It covers the minimal information to support lineage of information in Philippine health information systems.

## Example Usage Scenarios

* Query for Provenance records associated with a Condition
* Query for Provenance records associated with an Observation
* Query for Provenance records associated with an Immunization

## Mandatory and Must Support Data Elements

**Each Provenance Must Have:**

* a reference to the resource(s) the Provenance record is supporting (`target`)
* a date and time for the activity (`recorded`)

**Each Provenance Must Support:**

* the author responsible for the information (`agent[ProvenanceAuthor]`)
* the transmitter that provided the information (`agent[ProvenanceTransmitter]`)
* the organization the agent is representing (`agent.onBehalfOf`) - required when agent is a Practitioner or Device

## Reference Profiles

| | | |
| :--- | :--- | :--- |
| `agent.who` | PHCorePractitioner, PHCorePractitionerRole, PHCoreOrganization, PHCorePatient, PHCoreRelatedPerson | Device |
| `agent.onBehalfOf` | PHCoreOrganization | - |
| `location` | PHCoreLocation | - |

## Profile Specific Implementation Guidance

### Agent Slicing

The `agent` element is sliced to distinguish between authors and transmitters:

| | | |
| :--- | :--- | :--- |
| `ProvenanceAuthor` | author | Entity that created the data |
| `ProvenanceTransmitter` | transmitter | Entity that transmitted the data |

### Constraint: provenance-1

**`onBehalfOf` SHALL be present when `agent.who` is a Practitioner or Device**

This ensures that when an individual practitioner or device is the agent, the responsible organization is always identified.

## Supported Resource Types

This Provenance profile can be used with the following resource types:

### PH Core Profiles

| |
| :--- |
| [PHCoreEncounter](StructureDefinition-ph-core-encounter.md) |
| [PHCoreImmunization](StructureDefinition-ph-core-immunization.md) |
| [PHCoreObservation](StructureDefinition-ph-core-observation.md) |
| [PHCorePatient](StructureDefinition-ph-core-patient.md) |
| [PHCoreProcedure](StructureDefinition-ph-core-procedure.md) |
| [PHCoreRelatedPerson](StructureDefinition-ph-core-relatedperson.md) |

### Base FHIR Resources

The following resources do not have PH Core profiles yet and use base FHIR R4:

* Condition
* DiagnosticReport
* DocumentReference
* MedicationRequest
* ServiceRequest

**Usages:**

* Examples for this Profile: [Provenance/provenance-single-example](Provenance-provenance-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-provenance)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-provenance.csv), [Excel](../StructureDefinition-ph-core-provenance.xlsx), [Schematron](../StructureDefinition-ph-core-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-provenance",
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-provenance",
  "version" : "0.2.0",
  "name" : "PHCoreProvenance",
  "title" : "PH Core Provenance",
  "status" : "draft",
  "date" : "2026-06-09T05:36:52+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "This profile localizes the FHIR R4 Provenance resource to the Philippine context, capturing key information about who, what, when, and where for a set of resources. It is used to track the authorship and history of healthcare data in Philippine health information systems.",
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
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "fhirauditevent",
    "uri" : "http://hl7.org/fhir/auditevent",
    "name" : "FHIR AuditEvent Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Provenance",
      "path" : "Provenance"
    },
    {
      "id" : "Provenance.target",
      "path" : "Provenance.target",
      "short" : "The Resource(s) this Provenance record supports",
      "definition" : "The Reference(s) that were generated or updated by the activity described in this resource. A provenance can point to more than one target if multiple resources were created/updated by a single activity.",
      "comment" : "See the [PH Core Provenance Profile](StructureDefinition-ph-core-provenance.html) for guidance on supported resource types.",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.target.reference",
      "path" : "Provenance.target.reference",
      "definition" : "A reference to another resource on the FHIR server.",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.recorded",
      "path" : "Provenance.recorded",
      "short" : "Timestamp when the activity was recorded / updated",
      "comment" : "This is when the activity was recorded, not necessarily when it occurred.",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.location",
      "path" : "Provenance.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "Provenance.reason",
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
      "path" : "Provenance.reason",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.reason.coding",
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
      "path" : "Provenance.reason.coding",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.reason.text",
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
      "path" : "Provenance.reason.text",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.activity",
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
      "path" : "Provenance.activity",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.activity.coding",
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
      "path" : "Provenance.activity.coding",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.activity.text",
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
      "path" : "Provenance.activity.text",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent",
      "path" : "Provenance.agent",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "description" : "Slice based on the agent type code (author vs transmitter)",
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Actor(s) involved",
      "definition" : "An actor that takes part in the activity. The actor can be a person, an organization, a device, or a software system.",
      "comment" : "At least one agent must be provided. Use the ProvenanceAuthor slice for the entity that created the content and ProvenanceTransmitter slice for the entity that sent/transmitted it.",
      "constraint" : [{
        "key" : "provenance-1",
        "severity" : "error",
        "human" : "onBehalfOf SHALL be present when Provenance.agent.who is a Practitioner or Device",
        "expression" : "who.exists((resolve() is Practitioner) or (resolve() is Device)) implies onBehalfOf.exists()",
        "source" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-provenance"
      }]
    },
    {
      "id" : "Provenance.agent.type",
      "path" : "Provenance.agent.type",
      "definition" : "The participation the agent had in the activity.",
      "mustSupport" : true,
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "ProvenanceAgentType"
        }],
        "strength" : "extensible",
        "description" : "The type of participation (author, transmitter, etc.)",
        "valueSet" : "http://hl7.org/fhir/ValueSet/provenance-agent-type"
      }
    },
    {
      "id" : "Provenance.agent.role",
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
      "path" : "Provenance.agent.role",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.role.coding",
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
      "path" : "Provenance.agent.role.coding",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.role.text",
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
      "path" : "Provenance.agent.role.text",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.who",
      "path" : "Provenance.agent.who",
      "definition" : "The individual, organization, or device that participated in the activity.",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "definition" : "The organization the agent is representing. This is mandatory when the agent is a Practitioner or Device.",
      "comment" : "When the agent is a Practitioner or Device, this element identifies the organization they were acting on behalf of.",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:ProvenanceAuthor",
      "path" : "Provenance.agent",
      "sliceName" : "ProvenanceAuthor",
      "short" : "Author organization or individual responsible for the information",
      "definition" : "The entity that created the data. This is typically an organization, practitioner, patient, or device that authored the information.",
      "comment" : "The author is the source of the information being recorded. This slice is used to identify who originally created the content.\n\nReferenced Profiles:\n- PHCorePractitioner: Philippine healthcare practitioner\n- PHCorePractitionerRole: Practitioner in a specific role\n- PHCoreOrganization: Philippine healthcare organization\n- PHCorePatient: Philippine patient\n- PHCoreRelatedPerson: Related person (family member, guardian, etc.)\n- Device: Base FHIR Device (no PH Core Device profile)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:ProvenanceAuthor.type",
      "path" : "Provenance.agent.type",
      "definition" : "The type of agent participation. For the author slice, this is fixed to 'author'.",
      "comment" : "Fixed value: author",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
          "code" : "author"
        }]
      }
    },
    {
      "id" : "Provenance.agent:ProvenanceAuthor.role",
      "path" : "Provenance.agent.role",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:ProvenanceAuthor.who",
      "path" : "Provenance.agent.who",
      "definition" : "The individual, organization, or device that authored the information.",
      "comment" : "References PH Core profiles where available:\n- PHCorePractitioner | PHCorePractitionerRole | PHCoreOrganization | PHCorePatient | PHCoreRelatedPerson\nUses base FHIR Device when no PH Core profile exists.",
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
      "id" : "Provenance.agent:ProvenanceAuthor.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "definition" : "The organization the agent is representing. This is mandatory when the agent is a Practitioner or Device (per provenance-1 constraint).",
      "comment" : "References PHCoreOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Provenance.agent:ProvenanceTransmitter",
      "path" : "Provenance.agent",
      "sliceName" : "ProvenanceTransmitter",
      "short" : "Transmitter that provided the information",
      "definition" : "The entity that transmitted the data from the source to the destination. If the transmitter is a device, the transmitter organization must also be valued.",
      "comment" : "The transmitter represents who sent the information, which may differ from who authored it. This is important for tracking the chain of custody.\n\nReferenced Profiles:\n- PHCorePractitioner: Philippine healthcare practitioner\n- PHCorePractitionerRole: Practitioner in a specific role\n- PHCoreOrganization: Philippine healthcare organization\n- PHCorePatient: Philippine patient\n- PHCoreRelatedPerson: Related person (family member, guardian, etc.)\n- Device: Base FHIR Device (no PH Core Device profile)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:ProvenanceTransmitter.type",
      "path" : "Provenance.agent.type",
      "definition" : "The type of agent participation. For the transmitter slice, this is fixed to 'transmitter'.",
      "comment" : "Fixed value: transmitter",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
          "code" : "transmitter"
        }]
      }
    },
    {
      "id" : "Provenance.agent:ProvenanceTransmitter.role",
      "path" : "Provenance.agent.role",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:ProvenanceTransmitter.who",
      "path" : "Provenance.agent.who",
      "definition" : "The individual, organization, or device that transmitted the information.",
      "comment" : "References PH Core profiles where available:\n- PHCorePractitioner | PHCorePractitionerRole | PHCoreOrganization | PHCorePatient | PHCoreRelatedPerson\nUses base FHIR Device when no PH Core profile exists.",
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
      "id" : "Provenance.agent:ProvenanceTransmitter.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "definition" : "The organization the transmitter is representing. This is mandatory when the transmitter is a Practitioner or Device (per provenance-1 constraint).",
      "comment" : "References PHCoreOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }]
    }]
  }
}

```
