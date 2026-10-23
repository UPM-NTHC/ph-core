# observation-troponin-acs - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-troponin-acs

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Laboratory

**code**: Troponin I.cardiac [Mass/volume] in Serum or Plasma

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**effective**: 2026-06-12 08:45:00+0800

**performer**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)

**value**: 2.5 ng/mL (Details: UCUM codeng/mL = 'ng/mL')

**interpretation**: High

**note**: 

> 

Elevated troponin consistent with acute myocardial infarction.


### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 0 ng/mL (Details: UCUM codeng/mL = 'ng/mL') | 0.04 ng/mL (Details: UCUM codeng/mL = 'ng/mL') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-troponin-acs",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "10839-9",
      "display" : "Troponin I.cardiac [Mass/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-acs-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-ed-example"
  },
  "effectiveDateTime" : "2026-06-12T08:45:00+08:00",
  "performer" : [{
    "reference" : "Organization/organization-pgh-example"
  }],
  "valueQuantity" : {
    "value" : 2.5,
    "unit" : "ng/mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "ng/mL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "note" : [{
    "text" : "Elevated troponin consistent with acute myocardial infarction."
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 0,
      "unit" : "ng/mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ng/mL"
    },
    "high" : {
      "value" : 0.04,
      "unit" : "ng/mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "ng/mL"
    }
  }]
}

```
