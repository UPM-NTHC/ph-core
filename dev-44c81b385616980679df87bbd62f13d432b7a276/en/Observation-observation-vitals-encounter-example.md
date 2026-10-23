# observation-vitals-encounter-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-vitals-encounter-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: identifier = http://example.org/encounter-id#ENC-12345; status = finished; class = ambulatory (ActCode#AMB); type = ambulatory; period = 2023-01-01 10:00:00+0000 --> 2023-01-01 11:00:00+0000](Encounter-encounter-single-example.md)

**effective**: 2023-01-01 10:30:00+0000

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**value**: 37 degrees Celsius (Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-vitals-encounter-example",
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
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "effectiveDateTime" : "2023-01-01T10:30:00Z",
  "performer" : [{
    "reference" : "Practitioner/practitioner-single-example"
  }],
  "valueQuantity" : {
    "value" : 37,
    "unit" : "degrees Celsius",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  }
}

```
