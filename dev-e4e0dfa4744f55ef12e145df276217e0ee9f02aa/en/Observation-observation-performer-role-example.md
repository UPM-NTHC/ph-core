# observation-performer-role-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-performer-role-example

Heart rate: 72 beats/minute (Normal) for Juan Dela Cruz, performed by Dr. Santos in her General Practitioner role.



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
