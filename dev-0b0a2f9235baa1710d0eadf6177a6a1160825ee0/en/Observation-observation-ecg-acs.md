# observation-ecg-acs - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-ecg-acs

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Procedure

**code**: EKG study

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**effective**: 2026-06-12 08:35:00+0800

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

**value**: ST-elevation in leads V1-V4, reciprocal ST-depression in leads II, III, aVF. Rhythm: sinus tachycardia at 110 bpm.

**interpretation**: Critical high

**note**: 

> 

ECG findings consistent with acute anterior ST-elevation myocardial infarction.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-ecg-acs",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "procedure",
      "display" : "Procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11524-6",
      "display" : "EKG study"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-acs-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-ed-example"
  },
  "effectiveDateTime" : "2026-06-12T08:35:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/practitioner-ed-example"
  }],
  "valueString" : "ST-elevation in leads V1-V4, reciprocal ST-depression in leads II, III, aVF. Rhythm: sinus tachycardia at 110 bpm.",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "HH",
      "display" : "Critical high"
    }]
  }],
  "note" : [{
    "text" : "ECG findings consistent with acute anterior ST-elevation myocardial infarction."
  }]
}

```
