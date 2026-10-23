# observation-weight-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-weight-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Body weight

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2023-06-15 09:00:00+0000

**performer**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**value**: 70 kg (Details: UCUM codekg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-weight-example",
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
      "code" : "29463-7",
      "display" : "Body weight"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2023-06-15T09:00:00Z",
  "performer" : [{
    "reference" : "Practitioner/practitioner-single-example"
  }],
  "valueQuantity" : {
    "value" : 70,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
