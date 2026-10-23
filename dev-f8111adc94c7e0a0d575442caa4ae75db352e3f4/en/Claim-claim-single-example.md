# claim-single-example - Draft PH Core Implementation Guide v0.2.0

## Example Claim: claim-single-example

**Claim:** PhilHealth Outpatient Consultation

**Status:** Active

**Patient:** Juan Dela Cruz (PhilHealth ID: 63-584789845-5)

**Created:** March 15, 2024

**Insurer:** Philippine Health Insurance Corporation (PhilHealth)

**Provider:** Dr. Maria Clara Santos

**Diagnosis:** Type 2 Diabetes Mellitus (Principal)

**Service:** Outpatient Consultation on March 15, 2024 - PHP 500.00



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
  "created" : "2024-03-15",
  "insurer" : {
    "reference" : "Organization/organization-single-example"
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
    "servicedDate" : "2024-03-15",
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
