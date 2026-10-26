# PH Core PWD Disability Registration - Draft PH Core Implementation Guide v0.2.1

## Extension: PH Core PWD Disability Registration (Experimental) 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Patient](StructureDefinition-ph-core-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ph.core|current/StructureDefinition/StructureDefinition-ph-core-pwd-disability.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ph-core-pwd-disability.csv), [Excel](../StructureDefinition-ph-core-pwd-disability.xlsx), [Schematron](../StructureDefinition-ph-core-pwd-disability.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-pwd-disability",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
    "valueInteger" : 0
  }],
  "url" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-pwd-disability",
  "version" : "0.2.1",
  "name" : "PHCorePWDDisability",
  "title" : "PH Core PWD Disability Registration",
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
  "description" : "Extension for Person With Disability (PWD) registration information. Captures PWD ID number, type of disability, and ID expiration date as issued by the PDAO (Persons with Disability Affairs Office).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "PH Core PWD Disability Registration",
      "definition" : "Extension for Person With Disability (PWD) registration information. Captures PWD ID number, type of disability, and ID expiration date as issued by the PDAO (Persons with Disability Affairs Office)."
    },
    {
      "id" : "Extension.extension:pwdId",
      "path" : "Extension.extension",
      "sliceName" : "pwdId",
      "short" : "PWD ID Number",
      "definition" : "The unique identification number from the PWD ID card issued by the PDAO (Persons with Disability Affairs Office).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:pwdId.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:pwdId.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "pwdId"
    },
    {
      "id" : "Extension.extension:pwdId.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:disabilityType",
      "path" : "Extension.extension",
      "sliceName" : "disabilityType",
      "short" : "Type of Disability",
      "definition" : "The type/category of disability as classified by the Philippine government. Multiple types may be specified.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:disabilityType.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:disabilityType.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "disabilityType"
    },
    {
      "id" : "Extension.extension:disabilityType.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/ph-core-disability-type-vs"
      }
    },
    {
      "id" : "Extension.extension:idExpirationDate",
      "path" : "Extension.extension",
      "sliceName" : "idExpirationDate",
      "short" : "PWD ID Expiration Date",
      "definition" : "The expiration date of the PWD ID card. Record an expiration date only when supplied by the issuing source; do not infer one from age or disability category. Validity rules depend on the applicable dated policy.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:idExpirationDate.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:idExpirationDate.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "idExpirationDate"
    },
    {
      "id" : "Extension.extension:idExpirationDate.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Extension.extension:issuingLGU",
      "path" : "Extension.extension",
      "sliceName" : "issuingLGU",
      "short" : "Issuing LGU (Barangay) in PSGC code",
      "definition" : "The barangay-level Local Government Unit (LGU) that issued the PWD ID, specified using PSGC code. It does not identify a PDAO or establish that the barangay is the legal issuing authority. National issuer semantics and a suitable representation require human appraisal before this field is used for authority verification.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:issuingLGU.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:issuingLGU.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "issuingLGU"
    },
    {
      "id" : "Extension.extension:issuingLGU.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://fhir.doh.gov.ph/phcore/ValueSet/barangays"
      }
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-pwd-disability"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
