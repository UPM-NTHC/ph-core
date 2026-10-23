# observation-hba1c-acs - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-hba1c-acs

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Laboratory

**code**: Hemoglobin A1c/Hemoglobin.total in Blood

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**encounter**: [Encounter: identifier = http://pgh.gov.ph/fhir/Identifier/encounter-id#ENC-2026-0612-001; status = finished; class = emergency (ActCode#EMER); type = emergency; priority = emergency; period = 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800](Encounter-encounter-ed-example.md)

**effective**: 2026-06-12 08:45:00+0800

**performer**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)

**value**: 8.2 % (Details: UCUM code% = '%')

**interpretation**: High

**note**: 

> 

HbA1c indicates poor glycemic control over past 3 months.


### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 4 % (Details: UCUM code% = '%') | 5.7 % (Details: UCUM code% = '%') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-hba1c-acs",
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
      "code" : "4548-4",
      "display" : "Hemoglobin A1c/Hemoglobin.total in Blood"
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
    "value" : 8.2,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "note" : [{
    "text" : "HbA1c indicates poor glycemic control over past 3 months."
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 4,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "high" : {
      "value" : 5.7,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
