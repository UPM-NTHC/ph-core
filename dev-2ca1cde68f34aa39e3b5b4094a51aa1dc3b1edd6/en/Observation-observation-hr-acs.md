# observation-hr-acs - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-hr-acs

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**effective**: 2026-06-12 08:30:00+0800

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

**value**: 110 beats/minute (Details: UCUM code/min = '/min')

**interpretation**: High



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-hr-acs",
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
      "code" : "8867-4",
      "display" : "Heart rate"
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
  "valueQuantity" : {
    "value" : 110,
    "unit" : "beats/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }]
}

```
