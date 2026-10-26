# observation-potassium-example - Draft PH Core Implementation Guide v0.2.1

## Example Observation: observation-potassium-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Laboratory

**code**: Potassium [Moles/volume] in Serum or Plasma

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2024-01-15 08:00:00+0800

**performer**: [Philippine General Hospital (Healthcare Provider) (https://nhfr.doh.gov.ph/#1234567890)](Organization-organization-pgh-example.md)

**value**: 4 mmol/L (Details: UCUM codemmol/L = 'mmol/L')

**interpretation**: Normal

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 3.5 mmol/L (Details: UCUM codemmol/L = 'mmol/L') | 5 mmol/L (Details: UCUM codemmol/L = 'mmol/L') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-potassium-example",
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
      "code" : "2823-3",
      "display" : "Potassium [Moles/volume] in Serum or Plasma"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2024-01-15T08:00:00+08:00",
  "performer" : [{
    "reference" : "Organization/organization-pgh-example"
  }],
  "valueQuantity" : {
    "value" : 4,
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
      "value" : 3.5,
      "unit" : "mmol/L",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/L"
    },
    "high" : {
      "value" : 5,
      "unit" : "mmol/L",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmol/L"
    }
  }]
}

```
