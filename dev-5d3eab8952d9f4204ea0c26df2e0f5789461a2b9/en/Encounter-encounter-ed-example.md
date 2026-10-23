# encounter-ed-example - Draft PH Core Implementation Guide v0.2.0

## Example Encounter: encounter-ed-example

Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md)

**identifier**: `http://pgh.gov.ph/fhir/Identifier/encounter-id`/ENC-2026-0612-001

**status**: Finished

**class**: [ActCode: EMER](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-EMER) (emergency)

**type**: Emergency Department Visit

**priority**: emergency

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

> **participant****type**: attender**individual**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-ed-example.md)

> **participant****type**: admitter**individual**: [PractitionerRole Doctor](PractitionerRole-practitionerrole-ed-example.md)

**period**: 2026-06-12 08:30:00+0800 --> 2026-06-12 10:30:00+0800

**reasonReference**: [Condition Acute ST segment elevation myocardial infarction](Condition-condition-acs-example.md)

> **diagnosis****condition**: [Condition Acute ST segment elevation myocardial infarction](Condition-condition-acs-example.md)**use**: Admission diagnosis**rank**: 1

> **diagnosis****condition**: [Condition Diabetes mellitus type 2](Condition-condition-t2dm-example.md)**use**: Chief complaint**rank**: 2

### Hospitalizations

| | |
| :--- | :--- |
| - | **AdmitSource** |
| * | From accident/emergency department |

**serviceProvider**: [Organization Philippine General Hospital](Organization-organization-pgh-example.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-ed-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-encounter"]
  },
  "identifier" : [{
    "system" : "http://pgh.gov.ph/fhir/Identifier/encounter-id",
    "value" : "ENC-2026-0612-001"
  }],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "EMER",
    "display" : "emergency"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "EMER",
      "display" : "emergency"
    }],
    "text" : "Emergency Department Visit"
  }],
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
      "code" : "EM",
      "display" : "emergency"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-acs-example"
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
      "reference" : "Practitioner/practitioner-ed-example"
    }
  },
  {
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
        "code" : "ADM",
        "display" : "admitter"
      }]
    }],
    "individual" : {
      "reference" : "PractitionerRole/practitionerrole-ed-example"
    }
  }],
  "period" : {
    "start" : "2026-06-12T08:30:00+08:00",
    "end" : "2026-06-12T10:30:00+08:00"
  },
  "reasonReference" : [{
    "reference" : "Condition/condition-acs-example"
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/condition-acs-example"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "AD",
        "display" : "Admission diagnosis"
      }]
    },
    "rank" : 1
  },
  {
    "condition" : {
      "reference" : "Condition/condition-t2dm-example"
    },
    "use" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/diagnosis-role",
        "code" : "CC",
        "display" : "Chief complaint"
      }]
    },
    "rank" : 2
  }],
  "hospitalization" : {
    "admitSource" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/admit-source",
        "code" : "emd",
        "display" : "From accident/emergency department"
      }]
    }
  },
  "serviceProvider" : {
    "reference" : "Organization/organization-pgh-example"
  }
}

```
