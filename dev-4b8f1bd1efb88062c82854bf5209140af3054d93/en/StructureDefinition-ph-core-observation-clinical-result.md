# PH Core Observation Clinical Result - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core Observation Clinical Result 

Select this profile for a clinical measurement, test or panel when the exchange requires a result or an explicit reason for its absence. It derives from [PH Core Observation](StructureDefinition-ph-core-observation.md); selecting the generic profile alone does not imply these additional result-presence constraints.

An individual result without `component` or `hasMember` SHALL contain `value[x]` or `dataAbsentReason`. A top-level value and its corresponding absence reason SHALL NOT coexist, as required by inherited R4 `obs-6`. A panel whose results are carried by components or member observations does not require a top-level scalar value or absence reason.

These rules follow the US Core clinical-result presence pattern. They do not require every component of a general clinical result to contain a value or reason; US Core applies that additional rule in specific blood-pressure profiles. A downstream profile supplies those use-case constraints and any screening answer set. See the [missing-data examples](examples.md#missing-data-examples).

**Usages:**

* Examples for this Profile: [Observation/observation-result-unavailable](Observation-observation-result-unavailable.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-observation-clinical-result.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-observation-clinical-result.csv), [Excel](../StructureDefinition-ph-core-observation-clinical-result.xlsx), [Schematron](../StructureDefinition-ph-core-observation-clinical-result.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-observation-clinical-result",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation-clinical-result",
  "version" : "0.2.1",
  "name" : "PHCoreObservationClinicalResult",
  "title" : "PH Core Observation Clinical Result",
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
  "description" : "A selected clinical measurement, test or panel with a result value, member/component results, or an explicit reason why the expected result is absent.",
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
  "baseDefinition" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "ph-obs-001",
        "severity" : "error",
        "human" : "An observation without components or member observations SHALL have a result value or a data absent reason.",
        "expression" : "(component.empty() and hasMember.empty()) implies (value.exists() or dataAbsentReason.exists())",
        "source" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation-clinical-result"
      }]
    },
    {
      "id" : "Observation.value[x]",
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
      "path" : "Observation.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
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
      "path" : "Observation.dataAbsentReason",
      "mustSupport" : true
    }]
  }
}

```
