# servicerequest-appendectomy-example - Draft PH Core Implementation Guide v0.2.1

## Example ServiceRequest: servicerequest-appendectomy-example

Profile: [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md)

**status**: Completed

**intent**: Order

**code**: Appendectomy

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 07:30:00+0800 --> 2024-01-16 12:00:00+0800](Encounter-encounter-surgery-example.md)

**authoredOn**: 2024-01-15 08:00:00+0800

**requester**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**reasonReference**: [Condition Appendicitis](Condition-condition-appendicitis-example.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "servicerequest-appendectomy-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-serviceRequest"]
  },
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "80146002",
      "display" : "Appendectomy"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-surgery-example"
  },
  "authoredOn" : "2024-01-15T08:00:00+08:00",
  "requester" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "reasonReference" : [{
    "reference" : "Condition/condition-appendicitis-example"
  }]
}

```
