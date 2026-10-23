# Blood pressure with an unavailable diastolic result - Draft PH Core Implementation Guide v0.2.1

## Example Observation: Blood pressure with an unavailable diastolic result

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2025-03-15 09:15:00+0800

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

> **component****code**: Systolic blood pressure**value**: 120 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**: Diastolic blood pressure**dataAbsentReason**: Unknown



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-component-unavailable",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "85354-9",
      "display" : "Blood pressure panel with all children optional"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2025-03-15T09:15:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/practitioner-single-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6",
        "display" : "Systolic blood pressure"
      }]
    },
    "valueQuantity" : {
      "value" : 120,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4",
        "display" : "Diastolic blood pressure"
      }]
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    }
  }]
}

```
