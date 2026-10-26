# condition-single-example - Draft PH Core Implementation Guide v0.2.1

## Example Condition: condition-single-example

Profile: [PH Core Condition](StructureDefinition-ph-core-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: Type 2 Diabetes Mellitus

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: identifier = http://example.org/encounter-id#ENC-12345; status = finished; class = ambulatory (ActCode#AMB); type = ambulatory; period = 2025-03-15 09:00:00+0800 --> 2025-03-15 11:30:00+0800](Encounter-encounter-single-example.md)

**onset**: 2020-03-15

**recordedDate**: 2025-03-15 09:00:00+0800

**note**: 

> 

Patient advised on diet and exercise management.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-single-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "44054006",
      "display" : "Diabetes mellitus type 2"
    }],
    "text" : "Type 2 Diabetes Mellitus"
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-single-example"
  },
  "onsetDateTime" : "2020-03-15",
  "recordedDate" : "2025-03-15T09:00:00+08:00",
  "note" : [{
    "text" : "Patient advised on diet and exercise management."
  }]
}

```
