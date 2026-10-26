# PH Core Observation - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core Observation 

**Usages:**

* Derived from this Profile: [PH Core Observation Clinical Result](StructureDefinition-ph-core-observation-clinical-result.md)
* Refer to this Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md)... Show 2 more, [PH Core Observation](StructureDefinition-ph-core-observation.md) and [PH Core Procedure](StructureDefinition-ph-core-procedure.md)
* Examples for this Profile: [Observation/observation-bp-example](Observation-observation-bp-example.md), [Observation/observation-component-unavailable](Observation-observation-component-unavailable.md), [Observation/observation-derived-bmi-example](Observation-observation-derived-bmi-example.md), [Observation/observation-environmental-temp-example](Observation-observation-environmental-temp-example.md)... Show 9 more, [Observation/observation-glucose-example](Observation-observation-glucose-example.md), [Observation/observation-height-example](Observation-observation-height-example.md), [Observation/observation-lab-panel-example](Observation-observation-lab-panel-example.md), [Observation/observation-part-of-procedure-example](Observation-observation-part-of-procedure-example.md), [Observation/observation-performer-role-example](Observation-observation-performer-role-example.md), [Observation/observation-potassium-example](Observation-observation-potassium-example.md), [Observation/observation-sodium-example](Observation-observation-sodium-example.md), [Observation/observation-vitals-encounter-example](Observation-observation-vitals-encounter-example.md) and [Observation/observation-weight-example](Observation-observation-weight-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-observation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-observation.csv), [Excel](../StructureDefinition-ph-core-observation.xlsx), [Schematron](../StructureDefinition-ph-core-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-observation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation",
  "version" : "0.2.1",
  "name" : "PHCoreObservation",
  "title" : "PH Core Observation",
  "status" : "draft",
  "date" : "2026-10-26T05:35:56+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Measurements and simple assertions made about a patient, device or other subject.",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CarePlan",
        "http://hl7.org/fhir/StructureDefinition/DeviceRequest",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
        "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-serviceRequest"]
      }]
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationadministration",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationdispense",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medicationstatement",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-procedure",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-immunization",
        "http://hl7.org/fhir/StructureDefinition/ImagingStudy"]
      }]
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/Location"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitioner",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-practitionerrole",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-organization",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-patient",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference",
        "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
        "http://hl7.org/fhir/StructureDefinition/Media",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    }]
  }
}

```
