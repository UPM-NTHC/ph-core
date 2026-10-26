# condition-t2dm-example - Draft PH Core Implementation Guide v0.2.0

## Example Condition: condition-t2dm-example

Profile: [PH Core Condition](StructureDefinition-ph-core-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Chronic Condition

**code**: Type 2 Diabetes Mellitus

**subject**: [Juan Carlos Dela Cruz (official) Male, DoB: 1981-03-15 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-acs-example.md)

**onset**: 2020-03-15

**recordedDate**: 2020-03-15 10:30:00+0800

**note**: 

> 

Patient diagnosed with T2DM during routine health screening. Currently on Metformin 500mg twice daily. Last HbA1c: 8.2% (poor control). Advised on diet and exercise management.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-t2dm-example",
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
    }],
    "text" : "Chronic Condition"
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
    "reference" : "Patient/patient-acs-example"
  },
  "onsetDateTime" : "2020-03-15",
  "recordedDate" : "2020-03-15T10:30:00+08:00",
  "note" : [{
    "text" : "Patient diagnosed with T2DM during routine health screening. Currently on Metformin 500mg twice daily. Last HbA1c: 8.2% (poor control). Advised on diet and exercise management."
  }]
}

```
