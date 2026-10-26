# observation-based-on-service-example - Draft PH Core Implementation Guide v0.2.0

## Example Observation: observation-based-on-service-example

Profile: [PH Core Observation](StructureDefinition-ph-core-observation.md)

**basedOn**: [ServiceRequest Glucose measurement, blood](ServiceRequest-servicerequest-single-example.md)

**status**: Final

**category**: Laboratory

**code**: Hemoglobin A1c/Hemoglobin.total in Blood

**subject**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**effective**: 2024-03-10 10:00:00+0000

**performer**: [Organization Department of Health - Sattelite Office](Organization-organization-single-example.md)

**value**: 6.2 % (Details: UCUM code% = '%')

**interpretation**: Normal



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "observation-based-on-service-example",
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
      "code" : "4548-4",
      "display" : "Hemoglobin A1c/Hemoglobin.total in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "effectiveDateTime" : "2024-03-10T10:00:00Z",
  "performer" : [{
    "reference" : "Organization/organization-single-example"
  }],
  "valueQuantity" : {
    "value" : 6.2,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
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
