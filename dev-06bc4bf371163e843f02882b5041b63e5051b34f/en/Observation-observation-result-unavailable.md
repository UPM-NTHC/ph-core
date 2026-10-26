# Glucose result unavailable after specimen error - Draft PH Core Implementation Guide v0.2.1

## Example Observation: Glucose result unavailable after specimen error

Profile: [PH Core Observation Clinical Result](StructureDefinition-ph-core-observation-clinical-result.md)

**status**: Final

**category**: Laboratory

**code**: Fasting glucose [Mass/volume] in Serum or Plasma

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2025-03-15 10:30:00+0800

**performer**: [Philippine General Hospital (Healthcare Provider) (https://nhfr.doh.gov.ph/#1234567890)](Organization-organization-pgh-example.md)

**dataAbsentReason**: Error

**note**: 

> 

Specimen could not be processed; no glucose result was obtained.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-result-unavailable",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation-clinical-result"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "1558-6",
      "display" : "Fasting glucose [Mass/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2025-03-15T10:30:00+08:00",
  "performer" : [{
    "reference" : "Organization/organization-pgh-example"
  }],
  "dataAbsentReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
      "code" : "error"
    }]
  },
  "note" : [{
    "text" : "Specimen could not be processed; no glucose result was obtained."
  }]
}

```
