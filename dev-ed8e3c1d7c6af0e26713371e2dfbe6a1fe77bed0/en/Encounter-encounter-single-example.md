# encounter-single-example - Draft PH Core Implementation Guide v0.2.1

## Example Encounter: encounter-single-example

Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md)

**identifier**: `http://example.org/encounter-id`/ENC-12345

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: ambulatory

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Individual** |
| * | attender | [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md) |

**period**: 2025-03-15 09:00:00+0800 --> 2025-03-15 11:30:00+0800

**reasonReference**: [Condition Diabetes mellitus type 2](Condition-condition-single-example.md)

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition Diabetes mellitus type 2](Condition-condition-single-example.md) |

**serviceProvider**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
  },
  "identifier" : [{
    "system" : "http://example.org/encounter-id",
    "value" : "ENC-12345"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB",
      "display" : "ambulatory"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "participant" : [{
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "ATND",
        "display" : "attender"
      }]
    }],
    "individual" : {
      "reference" : "Practitioner/practitioner-single-example"
    }
  }],
  "period" : {
    "start" : "2025-03-15T09:00:00+08:00",
    "end" : "2025-03-15T11:30:00+08:00"
  },
  "reasonReference" : [{
    "reference" : "Condition/condition-single-example"
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-single-example"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/organization-pgh-example"
  }
}

```
