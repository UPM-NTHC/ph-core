# observation-sodium-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-sodium-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Laboratory

**code**: Sodium [Moles/volume] in Serum or Plasma

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2024-01-15 08:00:00+0000

**performer**: [Organization Department of Health - Sattelite Office](Organization-organization-single-example.md)

**value**: 140 mmol/L (Details: UCUM codemmol/L = 'mmol/L')

**interpretation**: Normal

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 135 mmol/L (Details: UCUM codemmol/L = 'mmol/L') | 145 mmol/L (Details: UCUM codemmol/L = 'mmol/L') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-sodium-example",
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
      "code" : "2951-2",
      "display" : "Sodium [Moles/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2024-01-15T08:00:00Z",
  "performer" : [{
    "reference" : "Organization/organization-single-example"
  }],
  "valueQuantity" : {
    "value" : 140,
    "unit" : "mmol/L",
    "system" : "http://unitsofmeasure.org",
    "code" : "mmol/L"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "referenceRange" : [{
    "low" : {
      "value" : 135,
      "unit" : "mmol/L",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/L"
    },
    "high" : {
      "value" : 145,
      "unit" : "mmol/L",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/L"
    }
  }]
}

```
