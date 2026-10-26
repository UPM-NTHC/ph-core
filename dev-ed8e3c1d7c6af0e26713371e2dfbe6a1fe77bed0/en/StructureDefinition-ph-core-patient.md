# PH Core Patient - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core Patient 

The **PH Core Patient** profile represents demographic and administrative information used across Philippine health information exchange.

### Name representation

PH Core uses `given[0]` for the complete first name and `given[1]` for a supplied middle name. Multiword names remain together: `given: ["Juan Carlos", "Dela Fuente"]`, `family: "Dela Cruz"`.

Preserve the name reported by the person or source record. Do not infer a middle name from a parent's name, create an empty middle-name entry, or split a multiword first name merely to fill an array position. When a source cannot distinguish name parts, preserve its supplied text in `HumanName.text` until those parts can be confirmed.

Name remains optional. Each supplied name SHALL contain a real `family`, `given` or `text` value, or the standard Data Absent Reason extension explaining why the whole name is missing. A name SHALL NOT contain both real name content and a whole-name absence reason. Missing individual optional name parts do not require placeholders. See the [missing-data rules](client-server-conformance.md#missing-data).

### Birth date and recorded age

Use `birthDate` for a birth date supported by the source. A known year can be recorded as `YYYY`; a known year and month as `YYYY-MM`; a known complete date as `YYYY-MM-DD`. Partial dates describe known calendar components, not a birth date inferred from completed age.

For example, a person reported to be two years old on 19 March 2026 can have a birth date from 20 March 2023 through 19 March 2024. That report alone does not establish `birthDate = "2024"`. Rounded ages in months or days also require their observation date and source precision to be understood.

Do not manufacture a birth date when only age is available. If an implementation needs to exchange a recorded age or an estimated birth date, its use-case IG should define the representation, observation/as-of date, source and estimation semantics. PH Core does not select a new age extension in this draft.

Display partial dates at their recorded precision. Do not display an assumed 1 January or first day of a month as a known birthday. If a local calculation uses an estimated date, retain and display its uncertainty; do not overwrite the source's known precision. Search and age calculations must account for partial dates and the relevant as-of date.

### Sex and gender concepts

`Patient.gender` represents administrative gender in this profile. The optional `genderIdentity`, `individualPronouns` and `sex` slices represent separate concepts. In `sex`, `type` identifies what `value` records, such as sex assigned at birth. Keep these meanings distinct. See [Sex and Gender Guidance](sex-and-gender-guidance.md) and the [focused Patient example](Patient-patient-sex-and-gender-example.md).

### Mother's maiden name

The optional `mothersMaidenName` slice uses the [HL7 Patient Mother's Maiden Name extension](https://hl7.org/fhir/extensions/StructureDefinition-patient-mothersMaidenName.html), which is available for FHIR R4 and carries a string value. Record this only when it is known from a reliable source and appropriate to share. Treat it as supplementary patient-matching information, not as a unique identifier; PH Core does not define an MPI matching algorithm.

The HL7 Extensions Pack defines the `mothersMaidenName` [Patient SearchParameter](https://hl7.org/fhir/extensions/SearchParameter-patient-extensions-Patient-mothersMaidenName.html). PH Core recommends that servers support it when their systems can index this extension. Clients should check the server's CapabilityStatement before relying on it. For example, a client can search for candidate records with:

```
GET [base]/Patient?mothersMaidenName=Maria%20Cruz%20Santos

```

This query returns candidates whose extension value matches the standard FHIR string-search semantics. A result is not proof that two records identify the same person.

### Examples

See the [example scenarios](examples.md) for the synthetic Patients, their related resources, and the purpose of each dataset.

**Usages:**

* Refer to this Profile: [PH Core AllergyIntolerance](StructureDefinition-ph-core-allergyintolerance.md), [PH Core Claim](StructureDefinition-ph-core-claim.md), [PH Core Condition](StructureDefinition-ph-core-condition.md), [PH Core Encounter](StructureDefinition-ph-core-encounter.md)... Show 11 more, [PH Core Immunization](StructureDefinition-ph-core-immunization.md), [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md), [PH Core Observation](StructureDefinition-ph-core-observation.md), [PH Core Patient](StructureDefinition-ph-core-patient.md), [PH Core Procedure](StructureDefinition-ph-core-procedure.md), [PH Core Provenance](StructureDefinition-ph-core-provenance.md), [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md) and [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [Patient/patient-anonymous-mothers-maiden-name-example](Patient-patient-anonymous-mothers-maiden-name-example.md), [Patient/patient-explicit-absence-example](Patient-patient-explicit-absence-example.md), [Patient/patient-sex-and-gender-example](Patient-patient-sex-and-gender-example.md) and [Patient/patient-single-example](Patient-patient-single-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-patient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-patient.csv), [Excel](../StructureDefinition-ph-core-patient.xlsx), [Schematron](../StructureDefinition-ph-core-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-patient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
  "version" : "0.2.1",
  "name" : "PHCorePatient",
  "title" : "PH Core Patient",
  "status" : "draft",
  "date" : "2026-10-23T04:35:45+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures key demographic and administrative information about individuals receiving care or other health-related services.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
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
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-nationality|5.3.0"]
      }]
    },
    {
      "id" : "Patient.extension:religion",
      "path" : "Patient.extension",
      "sliceName" : "religion",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-religion|5.3.0"]
      }]
    },
    {
      "id" : "Patient.extension:mothersMaidenName",
      "path" : "Patient.extension",
      "sliceName" : "mothersMaidenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName|5.3.0"]
      }]
    },
    {
      "id" : "Patient.extension:genderIdentity",
      "path" : "Patient.extension",
      "sliceName" : "genderIdentity",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-genderIdentity|5.3.0"]
      }]
    },
    {
      "id" : "Patient.extension:individualPronouns",
      "path" : "Patient.extension",
      "sliceName" : "individualPronouns",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-pronouns|5.3.0"]
      }]
    },
    {
      "id" : "Patient.extension:indigenousStatus",
      "path" : "Patient.extension",
      "sliceName" : "indigenousStatus",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/indigenous-status"]
      }]
    },
    {
      "id" : "Patient.extension:occupation",
      "path" : "Patient.extension",
      "sliceName" : "occupation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/occupation"]
      }]
    },
    {
      "id" : "Patient.extension:race",
      "path" : "Patient.extension",
      "sliceName" : "race",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/race"]
      }]
    },
    {
      "id" : "Patient.extension:educationalAttainment",
      "path" : "Patient.extension",
      "sliceName" : "educationalAttainment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/educational-attainment"]
      }]
    },
    {
      "id" : "Patient.extension:sex",
      "path" : "Patient.extension",
      "sliceName" : "sex",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender|5.3.0"]
      }]
    },
    {
      "id" : "Patient.extension:pwdDisability",
      "path" : "Patient.extension",
      "sliceName" : "pwdDisability",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-pwd-disability"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slicing based on identifier system",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier:PHCorePhilHealthID",
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
      "path" : "Patient.identifier",
      "sliceName" : "PHCorePhilHealthID",
      "short" : "PhilHealth ID",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:PHCorePhilHealthID.type",
      "path" : "Patient.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NH"
        }]
      }
    },
    {
      "id" : "Patient.identifier:PHCorePhilHealthID.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
    },
    {
      "id" : "Patient.identifier:PHCorePhilHealthID.value",
      "path" : "Patient.identifier.value",
      "example" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress",
          "valueBoolean" : true
        }],
        "label" : "General",
        "valueString" : "123456"
      },
      {
        "label" : "PhilHealth ID",
        "valueString" : "nn-nnnnnnnnn-n"
      }]
    },
    {
      "id" : "Patient.identifier:PHCorePhilSysID",
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
      "path" : "Patient.identifier",
      "sliceName" : "PHCorePhilSysID",
      "short" : "PhilSys ID",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:PHCorePhilSysID.type",
      "path" : "Patient.identifier.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
          "code" : "NI"
        }]
      }
    },
    {
      "id" : "Patient.identifier:PHCorePhilSysID.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "http://philsys.gov.ph/fhir/Identifier/philsys-id"
    },
    {
      "id" : "Patient.identifier:PHCorePhilSysID.value",
      "path" : "Patient.identifier.value",
      "example" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-suppress",
          "valueBoolean" : true
        }],
        "label" : "General",
        "valueString" : "123456"
      },
      {
        "label" : "PhilSys ID",
        "valueString" : "1234-5678-9101-1213"
      }]
    },
    {
      "id" : "Patient.name",
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
      "path" : "Patient.name",
      "constraint" : [{
        "key" : "ph-pat-001",
        "severity" : "error",
        "human" : "A supplied name SHALL contain a family, given or text value, or a Data Absent Reason for the whole name, but not both.",
        "expression" : "(family.where(hasValue()).exists() or given.where(hasValue()).exists() or text.where(hasValue()).exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()",
        "source" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.extension:dataAbsentReason",
      "path" : "Patient.name.extension",
      "sliceName" : "dataAbsentReason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/data-absent-reason|5.3.0"]
      }]
    },
    {
      "id" : "Patient.name.family",
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
      "path" : "Patient.name.family",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.given",
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
      "path" : "Patient.name.given",
      "short" : "First name (given[0]) and Middle Name (given[1]).",
      "definition" : "First name (given[0]) and Middle Name (given[1]).",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
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
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
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
      "path" : "Patient.gender",
      "short" : "Administrative Gender - for backward compatibility with existing implementations",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
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
      "path" : "Patient.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
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
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-address"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.name.given",
      "path" : "Patient.contact.name.given",
      "short" : "First name (given[0]) and Middle Name (given[1]).",
      "definition" : "First name (given[0]) and Middle Name (given[1])."
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-address"]
      }]
    },
    {
      "id" : "Patient.contact.organization",
      "path" : "Patient.contact.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson"]
      }]
    }]
  }
}

```
