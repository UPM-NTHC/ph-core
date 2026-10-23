# task-single-example - Draft PH Core Implementation Guide v0.2.0

## Example Task: task-single-example

Profile: [PH Core Task](StructureDefinition-ph-core-task.md)

**status**: Requested

**intent**: order

**priority**: Routine

**code**: Blood sample collection

**description**: Collect blood sample for complete blood count (CBC) testing

**for**: [Juan Jane Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: identifier = http://example.org/encounter-id#ENC-12345; status = finished; class = ambulatory (ActCode#AMB); type = ambulatory; period = 2023-01-01 10:00:00+0000 --> 2023-01-01 11:00:00+0000](Encounter-encounter-single-example.md)

**executionPeriod**: 2024-03-15 09:00:00+0800 --> 2024-03-15 10:00:00+0800

**authoredOn**: 2024-03-15 08:30:00+0800

**lastModified**: 2024-03-15 08:30:00+0800

**requester**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**owner**: [Organization Department of Health - Sattelite Office](Organization-organization-single-example.md)

**note**: By Practitioner/practitioner-single-example @2024-03-15 08:30:00+0800

> 

Patient has confirmed appointment. Please ensure fasting status is verified before sample collection.




## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-task"]
  },
  "status" : "requested",
  "intent" : "order",
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "82078001",
      "display" : "Collection of blood specimen for laboratory"
    }],
    "text" : "Blood sample collection"
  },
  "description" : "Collect blood sample for complete blood count (CBC) testing",
  "for" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "executionPeriod" : {
    "start" : "2024-03-15T09:00:00+08:00",
    "end" : "2024-03-15T10:00:00+08:00"
  },
  "authoredOn" : "2024-03-15T08:30:00+08:00",
  "lastModified" : "2024-03-15T08:30:00+08:00",
  "requester" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "owner" : {
    "reference" : "Organization/organization-single-example"
  },
  "note" : [{
    "authorReference" : {
      "reference" : "Practitioner/practitioner-single-example"
    },
    "time" : "2024-03-15T08:30:00+08:00",
    "text" : "Patient has confirmed appointment. Please ensure fasting status is verified before sample collection."
  }]
}

```
