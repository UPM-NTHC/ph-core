# observation-temp-acs - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-temp-acs

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**effective**: 2026-06-12 08:30:00+0800

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

**value**: 37.2 degrees Celsius (Details: UCUM codeCel = 'Cel')

**interpretation**: Normal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-temp-acs",
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
      "code" : "8310-5",
      "display" : "Body temperature"
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
    "value" : 37.2,
    "unit" : "degrees Celsius",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }]
}

```
