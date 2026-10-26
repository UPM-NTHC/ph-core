# PH Core Medication - Draft PH Core Implementation Guide v0.2.1

## Resource Profile: PH Core Medication ( Experimental ) 

**Usages:**

* Refer to this Profile: [Administered Product](StructureDefinition-administered-product.md), [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md)... Show 2 more, [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md) and [PH Core Procedure](StructureDefinition-ph-core-procedure.md)
* Examples for this Profile: [Medication/medication-single-example](Medication-medication-single-example.md) and [Medication/medication-vaccine-example](Medication-medication-vaccine-example.md)
* CapabilityStatements using this Profile: [CapabilityStatement[https://fhir.doh.gov.ph/phcore/CapabilityStatement/PHCoreServerCapabilityStatement|0.2.1]](CapabilityStatement-PHCoreServerCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-medication.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-medication.csv), [Excel](../StructureDefinition-ph-core-medication.xlsx), [Schematron](../StructureDefinition-ph-core-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-medication",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-medication",
  "version" : "0.2.1",
  "name" : "PHCoreMedication",
  "title" : "PH Core Medication",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-26T05:47:31+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.code",
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
      "path" : "Medication.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "extension" : [{
          "extension" : [{
            "url" : "key",
            "valueId" : "phcore-med-fda-cpr-pref"
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
        "description" : "A coded concept that defines the type of a medication.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medication-codes"
      }
    }]
  }
}

```
