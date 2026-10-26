# observation-bp-acs - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-bp-acs

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**effective**: 2026-06-12 08:30:00+0800

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

**bodySite**: Right arm

> **component****code**: Systolic blood pressure**value**: 160 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')**interpretation**: High

> **component****code**: Diastolic blood pressure**value**: 95 mmHg (Details: UCUM codemm[Hg] = 'mm[Hg]')**interpretation**: High



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-bp-acs",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
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
    "reference" : "Patient/patient-acs-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-ed-example"
  },
  "effectiveDateTime" : "2026-06-12T08:30:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/practitioner-ed-example"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "368209003",
      "display" : "Right arm"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6",
        "display" : "Systolic blood pressure"
      }]
    },
    "valueQuantity" : {
      "value" : 160,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "code" : "H",
        "display" : "High"
      }]
    }]
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
      "value" : 95,
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "code" : "H",
        "display" : "High"
      }]
    }]
  }]
}

```
