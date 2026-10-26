# observation-glucose-acs - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-glucose-acs

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Laboratory

**code**: Glucose [Mass/volume] in Serum or Plasma

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**effective**: 2026-06-12 08:45:00+0800

**performer**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)

**value**: 180 mg/dL (Details: UCUM codemg/dL = 'mg/dL')

**interpretation**: High

**note**: 

> 

Elevated glucose consistent with stress hyperglycemia and known T2DM.


### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 70 mg/dL (Details: UCUM codemg/dL = 'mg/dL') | 140 mg/dL (Details: UCUM codemg/dL = 'mg/dL') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-glucose-acs",
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
      "code" : "2345-7",
      "display" : "Glucose [Mass/volume] in Serum or Plasma"
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
    "value" : 180,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "note" : [{
    "text" : "Elevated glucose consistent with stress hyperglycemia and known T2DM."
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 70,
      "unit" : "mg/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    },
    "high" : {
      "value" : 140,
      "unit" : "mg/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    }
  }]
}

```
