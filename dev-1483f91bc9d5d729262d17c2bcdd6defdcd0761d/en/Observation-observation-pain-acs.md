# observation-pain-acs - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-pain-acs

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Survey

**code**: Pain severity - 0-10 verbal numeric rating [Score] - Reported

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**effective**: 2026-06-12 08:30:00+0800

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

**value**: 8 score (Details: UCUM code{score} = '{score}')

**interpretation**: Critical high

**note**: 

> 

Patient reports crushing substernal chest pain radiating to left arm.




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-pain-acs",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "survey",
      "display" : "Survey"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "72514-3",
      "display" : "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
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
    "value" : 8,
    "unit" : "score",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "HH",
      "display" : "Critical high"
    }]
  }],
  "note" : [{
    "text" : "Patient reports crushing substernal chest pain radiating to left arm."
  }]
}

```
