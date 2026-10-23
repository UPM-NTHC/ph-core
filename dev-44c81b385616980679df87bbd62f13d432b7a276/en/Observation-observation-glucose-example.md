# observation-glucose-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-glucose-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Laboratory

**code**: Fasting glucose [Mass/volume] in Serum or Plasma

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2024-01-15 08:00:00+0000

**performer**: [Organization Department of Health - Sattelite Office](Organization-organization-single-example.md)

**value**: 95 mg/dL (Details: UCUM codemg/dL = 'mg/dL')

**interpretation**: Normal

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **Low** | **High** |
| * | 70 mg/dL (Details: UCUM codemg/dL = 'mg/dL') | 100 mg/dL (Details: UCUM codemg/dL = 'mg/dL') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-glucose-example",
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
      "code" : "1558-6",
      "display" : "Fasting glucose [Mass/volume] in Serum or Plasma"
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
    "value" : 95,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
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
      "value" : 70,
      "unit" : "mg/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    },
    "high" : {
      "value" : 100,
      "unit" : "mg/dL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mg/dL"
    }
  }]
}

```
