# observation-performer-role-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-performer-role-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2024-01-20 08:30:00+0000

**performer**: [PractitionerRole Doctor](PractitionerRole-practitionerrole-single-example.md)

**value**: 72 beats/minute (Details: UCUM code/min = '/min')

**interpretation**: Normal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-performer-role-example",
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
      "code" : "8867-4",
      "display" : "Heart rate"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2024-01-20T08:30:00Z",
  "performer" : [{
    "reference" : "PractitionerRole/practitionerrole-single-example"
  }],
  "valueQuantity" : {
    "value" : 72,
    "unit" : "beats/minute",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }]
}

```
