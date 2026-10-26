# claim-single-example - Draft PH Core Implementation Guide v0.2.1

## Example Claim: claim-single-example

Profile: [PH Core Claim](StructureDefinition-ph-core-claim.md)

**status**: Active

**type**: Professional

**use**: Claim

**patient**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**created**: 2025-03-15

**insurer**: [Organization Philippine Health Insurance Corporation (illustrative)](Organization-organization-philhealth-example.md)

**provider**: [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md)

**priority**: Normal

### Payees

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Party** |
| * | Provider | [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md) |

### CareTeams

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Provider** | **Responsible** | **Role** |
| * | 1 | [Practitioner Maria Clara Santos (official)](Practitioner-practitioner-single-example.md) | true | Primary Provider |

### Diagnoses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** | **Type** |
| * | 1 | [Condition Diabetes mellitus type 2](Condition-condition-single-example.md) | Principal Diagnosis |

### Insurances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Identifier** | **Coverage** |
| * | 1 | true | [PhilHealthID](NamingSystem-PhilHealthIDNS.md)/63-584789845-5 | [Coverage: status = active; subscriberId = 63-584789845-5](Coverage-philhealth-coverage-example.md) |

> **item****sequence**: 1**careTeamSequence**: 1**diagnosisSequence**: 1**productOrService**: Outpatient Consultation**serviced**: 2025-03-15**quantity**: 1

### UnitPrices

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 500 | Philippine piso |

### Nets

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Currency** |
| * | 500 | Philippine piso |




## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "claim-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-claim"]
  },
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "professional",
      "display" : "Professional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/patient-single-example"
  },
  "created" : "2025-03-15",
  "insurer" : {
    "reference" : "Organization/organization-philhealth-example"
  },
  "provider" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal",
      "display" : "Normal"
    }]
  },
  "payee" : {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/payeetype",
        "code" : "provider",
        "display" : "Provider"
      }]
    },
    "party" : {
      "reference" : "Practitioner/practitioner-single-example"
    }
  },
  "careTeam" : [{
    "sequence" : 1,
    "provider" : {
      "reference" : "Practitioner/practitioner-single-example"
    },
    "responsible" : true,
    "role" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/claimcareteamrole",
        "code" : "primary",
        "display" : "Primary Provider"
      }]
    }
  }],
  "diagnosis" : [{
    "sequence" : 1,
    "diagnosisReference" : {
      "reference" : "Condition/condition-single-example"
    },
    "type" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/ex-diagnosistype",
        "code" : "principal",
        "display" : "Principal Diagnosis"
      }]
    }]
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "identifier" : {
      "system" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
      "value" : "63-584789845-5"
    },
    "coverage" : {
      "reference" : "Coverage/philhealth-coverage-example"
    }
  }],
  "item" : [{
    "sequence" : 1,
    "careTeamSequence" : [1],
    "diagnosisSequence" : [1],
    "productOrService" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "11429006",
        "display" : "Consultation"
      }],
      "text" : "Outpatient Consultation"
    },
    "servicedDate" : "2025-03-15",
    "quantity" : {
      "value" : 1
    },
    "unitPrice" : {
      "value" : 500,
      "currency" : "PHP"
    },
    "net" : {
      "value" : 500,
      "currency" : "PHP"
    }
  }]
}

```
