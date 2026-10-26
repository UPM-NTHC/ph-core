# observation-derived-bmi-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-derived-bmi-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Body mass index (BMI) [Ratio]

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2023-06-15 09:00:00+0000

**performer**: [PractitionerRole Doctor](PractitionerRole-practitionerrole-single-example.md)

**value**: 23.5 kg/m2 (Details: UCUM codekg/m2 = 'kg/m2')

**interpretation**: Normal

**derivedFrom**: 

* [Observation Body weight](Observation-observation-weight-example.md)
* [Observation Body height](Observation-observation-height-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-derived-bmi-example",
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
      "code" : "39156-5",
      "display" : "Body mass index (BMI) [Ratio]"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2023-06-15T09:00:00Z",
  "performer" : [{
    "reference" : "PractitionerRole/practitionerrole-single-example"
  }],
  "valueQuantity" : {
    "value" : 23.5,
    "unit" : "kg/m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg/m2"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "derivedFrom" : [{
    "reference" : "Observation/observation-weight-example"
  },
  {
    "reference" : "Observation/observation-height-example"
  }]
}

```
