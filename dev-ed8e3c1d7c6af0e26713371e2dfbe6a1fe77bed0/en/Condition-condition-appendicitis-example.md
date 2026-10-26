# condition-appendicitis-example - Draft PH Core Implementation Guide v0.2.1

## Example Condition: condition-appendicitis-example

Profile: [PH Core Condition](StructureDefinition-ph-core-condition.md)

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Appendicitis

**subject**: [Juan Dela Fuente Dela Cruz Male, DoB: 1980-01-01 ( http://philhealth.gov.ph/fhir/Identifier/philhealth-id#PhilHealthID#63-584789845-5)](Patient-patient-single-example.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-01-15 07:30:00+0800 --> 2024-01-16 12:00:00+0800](Encounter-encounter-surgery-example.md)

**onset**: 2024-01-15

**abatement**: 2024-01-16



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condition-appendicitis-example",
  "meta" : {
    "profile" : ["https://fhir.doh.gov.ph/phcore/StructureDefinition/ph-core-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "resolved",
      "display" : "Resolved"
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
      "code" : "encounter-diagnosis",
      "display" : "Encounter Diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "74400008",
      "display" : "Appendicitis"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-single-example"
  },
  "encounter" : {
    "reference" : "Encounter/encounter-surgery-example"
  },
  "onsetDateTime" : "2024-01-15",
  "abatementDateTime" : "2024-01-16"
}

```
