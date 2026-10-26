# servicerequest-single-example - Draft PH Core Implementation Guide v0.2.1

## Example ServiceRequest: servicerequest-single-example

Profile: [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md)

**status**: Completed

**intent**: Order

**category**: Laboratory procedure

**code**: Fasting blood glucose test

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: identifier = http://example.org/encounter-id#ENC-12345; status = finished; class = ambulatory (ActCode#AMB); type = ambulatory; period = 2025-03-15 09:00:00+0800 --> 2025-03-15 11:30:00+0800](Encounter-encounter-single-example.md)

**occurrence**: 2025-03-15 10:00:00+0800

**authoredOn**: 2025-03-15 09:30:00+0800

**requester**: [Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**supportingInfo**: [Condition Type 2 Diabetes Mellitus](Condition-condition-single-example.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "servicerequest-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-serviceRequest"]
  },
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "108252007",
      "display" : "Laboratory procedure"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "33747003",
      "display" : "Glucose measurement, blood"
    }],
    "text" : "Fasting blood glucose test"
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "occurrenceDateTime" : "2025-03-15T10:00:00+08:00",
  "authoredOn" : "2025-03-15T09:30:00+08:00",
  "requester" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "supportingInfo" : [{
    "reference" : "Condition/condition-single-example"
  }]
}

```
