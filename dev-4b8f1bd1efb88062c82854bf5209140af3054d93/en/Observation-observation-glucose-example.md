# observation-glucose-example - Draft PH Core Implementation Guide v0.2.1

## Example Observation: observation-glucose-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**basedOn**: [ServiceRequest Fasting blood glucose test](ServiceRequest-servicerequest-single-example.md)

**status**: Final

**category**: Laboratory

**code**: Fasting glucose [Mass/volume] in Serum or Plasma

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: identifier = http://example.org/encounter-id#ENC-12345; status = finished; class = ambulatory (ActCode#AMB); type = ambulatory; period = 2025-03-15 09:00:00+0800 --> 2025-03-15 11:30:00+0800](Encounter-encounter-single-example.md)

**effective**: 2025-03-15 10:30:00+0800

**performer**: [Philippine General Hospital (Healthcare Provider) (https://nhfr.doh.gov.ph/#1234567890)](Organization-organization-pgh-example.md)

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
  "basedOn" : [{
    "reference" : "ServiceRequest/servicerequest-single-example"
  }],
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
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "effectiveDateTime" : "2025-03-15T10:30:00+08:00",
  "performer" : [{
    "reference" : "Organization/organization-pgh-example"
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
