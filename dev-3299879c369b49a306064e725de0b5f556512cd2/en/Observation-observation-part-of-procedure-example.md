# observation-part-of-procedure-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-part-of-procedure-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**partOf**: [Procedure Appendectomy](Procedure-procedure-single-example.md)

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2024-02-20 14:30:00+0000

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

> **component****code**: Systolic blood pressure**value**: 120 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**: Diastolic blood pressure**value**: 80 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-part-of-procedure-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "partOf" : [{
    "reference" : "Procedure/procedure-single-example"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
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
  "effectiveDateTime" : "2024-02-20T14:30:00Z",
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
    "valueQuantity" : {
      "value" : 80,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  }]
}

```
